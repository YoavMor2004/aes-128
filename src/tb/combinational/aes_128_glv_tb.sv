`timescale 1ns/1ps

// =======================
// AES-128 GLV INTERFACE
// =======================
interface aes_if;
  // DUT ports
  reg          clk;
  reg          rst_n;
  reg  [127:0] in_bus;
  reg  [127:0] key;
  wire [127:0] out_bus;

  // TB bookkeeping
  event        check_out;
  reg  [127:0] exp_out;   // expected (when available)
  int          pass_flag; // 1/0 for last compare; -1 = no golden
endinterface


// =======================
// DRIVER / SCOREBOARD
// =======================
class aes_driver;
  virtual aes_if vif;
  int fd_log;

  function new(virtual aes_if vif);
    this.vif = vif;
  endfunction

  // simple sync reset
  task reset(int cycles = 4);
    // ensure clean init
    vif.clk    = 0;
    vif.rst_n  = 0;
    vif.in_bus = '0;
    vif.key    = '0;
    repeat (cycles) @(posedge vif.clk);
    vif.rst_n = 1;
    @(posedge vif.clk);
  endtask

  // apply one vector; drive on negedge (SDF-friendly), then sample after latency cycles
  task automatic apply_one(input logic [127:0] pt,
                           input logic [127:0] k,
                           input int latency_cycles,
                           input string tag = "",
                           input bit has_exp = 0,
                           input logic [127:0] exp = '0);
    // drive away from active edge for setup safety with SDF
    @(negedge vif.clk);
    vif.in_bus = pt;
    vif.key    = k;

    // wait for DUT latency
    repeat (latency_cycles) @(posedge vif.clk);

    // small settle window (useful under SDF)
    @(negedge vif.clk);

    if (has_exp) begin
      vif.exp_out   = exp;
      vif.pass_flag = (vif.out_bus === exp);
    end else begin
      vif.exp_out   = 'x;
      vif.pass_flag = -1; // indicates "no golden"
    end

    ->vif.check_out;

    if (has_exp) begin
      if (!vif.pass_flag)
        $error("[AES][%s] MISMATCH exp=%032h got=%032h", tag, exp, vif.out_bus);
      else
        $display("[AES][%s] PASS     got=%032h", tag, vif.out_bus);
    end else begin
      $display("[AES][%s] OUT=%032h (no golden)", tag, vif.out_bus);
    end
  endtask

  // run a Known-Answer Test (NIST)
  task run_kat(input int latency_cycles);
    localparam logic [127:0] K_KEY = 128'h000102030405060708090A0B0C0D0E0F;
    localparam logic [127:0] K_PT  = 128'h00112233445566778899AABBCCDDEEFF;
    localparam logic [127:0] K_CT  = 128'h69C4E0D86A7B0430D8CDB78070B4C55A;
    apply_one(K_PT, K_KEY, latency_cycles, "KAT1", 1, K_CT);
  endtask

  // run vectors from file: each line "PT KEY EXP" in hex (no 0x), spaces or commas
  task run_from_file(input string path, input int latency_cycles, output int n_applied);
    int fd, rc; string line;
    logic [127:0] pt, k, exp;
    n_applied = 0;

    fd = $fopen(path, "r");
    if (fd == 0) begin
      $error("[AES] Cannot open vecfile: %s", path);
      return;
    end
    while (!$feof(fd)) begin
      line = "";
      void'($fgets(line, fd));
      if (line.len() == 0) continue;
      // skip comments/blank
      if (line.toupper()[0] == "#") continue;

      rc = $sscanf(line, "%h %h %h", pt, k, exp);
      if (rc >= 2) begin
        apply_one(pt, k, latency_cycles, $sformatf("VEC%0d", n_applied),
                  (rc == 3), exp);
        n_applied++;
      end
    end
    $fclose(fd);
  endtask

  // random smoke (no golden): generate N vectors
  task run_random(input int n_vec, input int latency_cycles);
    for (int i = 0; i < n_vec; i++) begin
      logic [127:0] pt = {$urandom, $urandom, $urandom, $urandom};
      logic [127:0] k  = {$urandom, $urandom, $urandom, $urandom};
      apply_one(pt, k, latency_cycles, $sformatf("RAND%0d", i), 0, '0);
    end
  endtask

  // checker/log writer
  task check_thread(string logfile = "export/aes_glv_checks.txt");
    fd_log = $fopen(logfile, "w");
    if (!fd_log) $display("[AES] WARN: could not open %s", logfile);

    $fdisplay(fd_log, "# AES-128 GLV checks");
    $fdisplay(fd_log, "exp_out, out_bus, pass");

    forever begin
      @(vif.check_out);
      if (fd_log)
        $fdisplay(fd_log, "%032h, %032h, %0d", vif.exp_out, vif.out_bus, vif.pass_flag);
      // console echo too
      if (vif.pass_flag == -1)
        $display("[AES][LOG] OUT=%032h (no golden)", vif.out_bus);
      else
        $display("[AES][LOG] EXP=%032h  OUT=%032h  PASS=%0d", vif.exp_out, vif.out_bus, vif.pass_flag);
    end
  endtask

endclass


// =======================
// TOP TB (GLV-ready)
// =======================
module aes_128_tb;

  // === timing knobs ===
  parameter real cycle_period  = 40.0; // ns
  parameter real hcycle_period = cycle_period / 2.0;

`ifdef CLK_HALF
  // allow override from command line: +define+CLK_HALF=20
  localparam real CLK_HALF = `CLK_HALF;
`else
  localparam real CLK_HALF = hcycle_period;
`endif

  // plusargs
  int max_iterations;
  int latency_cycles;
  string vecfile;

  initial begin
    if (!$value$plusargs("max_iterations=%d", max_iterations)) max_iterations = 10;
    if (!$value$plusargs("latency_cycles=%d", latency_cycles)) latency_cycles = 10; // adjust for your AES
    if (!$value$plusargs("vecfile=%s", vecfile)) vecfile = "";
    $display("[TB] max_iterations=%0d  latency_cycles=%0d  vecfile=%s",
             max_iterations, latency_cycles, vecfile);
  end

  // interface + driver
  aes_if _if();
  aes_driver drv = new(_if);

  // clock init + toggler (avoid X at t=0)
  initial _if.clk = 0;
  always #CLK_HALF _if.clk = ~_if.clk;

  // DUT (gate-level)
  aes_128 dut (
    .clk    (_if.clk),
    .rst_n  (_if.rst_n),
    .in_bus (_if.in_bus),
    .key    (_if.key),
    .out_bus(_if.out_bus)
  );

  // Optional SDF back-annotation (MAX)
`ifdef BACKANNOTATION
  initial begin
    $display("[TB] SDF annotate (MAX)...");
    // >>> Adjust filename if your SDF name/path differs <<<
    $sdf_annotate("../export/post_synth/aes_128_post_synth.sdf",
                  dut, , "sdf.log", "MAXIMUM");
  end
`endif

  // VCD dumping (power/debug) — dump DUT scope only
`ifdef DUMP_VCD
  initial begin
    // ensure directory exists or change path to a local file
    $dumpfile("export/pwr/aes_128_glv.vcd");
    $dumpvars(0, dut);
  end
`endif

  // main
  initial begin
    $display("[TB] AES-128 GLV starting…");
    drv.reset(4);

    fork
      drv.check_thread("export/aes_glv_checks.txt");
      begin : stimulus
        int n_applied;
        // 1) Known-answer test first (quick sanity)
        drv.run_kat(latency_cycles);

        // 2) If vecfile provided, run it
        if (vecfile != "") begin
          drv.run_from_file(vecfile, latency_cycles, n_applied);
          $display("[TB] Applied %0d vectors from %s", n_applied, vecfile);
        end

        // 3) Then a few randoms without golden (exercise timing)
        drv.run_random(max_iterations, latency_cycles);

        $display("[TB] Done. Stopping.");
        #(5*CLK_HALF);
        $finish;
      end
    join_any
  end

endmodule
