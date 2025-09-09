`timescale 1ns/1ps

module aes_128_tb;

  // ---- Simulation clock ---------------------------------------------------
  parameter int design_cycle_period = 4;             // ns
  parameter int cycle_period        = design_cycle_period * 2; // 8 ns
  parameter int hcycle_period       = cycle_period / 2;        // 4 ns
  parameter int PIPE_LAT            = 11;            // fixed pipeline latency (cycles)

  // ---- DUT I/O (no ready/valid) ------------------------------------------
  logic         clk, rst_n;
  logic [127:0] in_bus, key;
  logic [127:0] out_bus;

  // DUT (top named aes_128 with ports: clk, rst_n, in_bus, key, out_bus)
  aes_128 dut (
    .clk    (clk),
    .rst_n  (rst_n),
    .in_bus (in_bus),
    .key    (key),
    .out_bus(out_bus)
  );

  // ---- Optional SDF for GLV ----------------------------------------------
  `ifdef GATE_LEVEL
    initial $sdf_annotate("../export/post_synth/aes_128.sdf", dut, , "sdf.log", "MAXIMUM");
  `endif

  // ---- Clock / Reset ------------------------------------------------------
  initial begin
    clk = 1'b0;
    forever #hcycle_period clk = ~clk;
  end

  // ---- File I/O & bookkeeping --------------------------------------------
  integer infile, outfile;
  bit     use_file;
  integer rv;                // fscanf return value
  integer fed;               // # of PT/key pairs fed
  integer wrote;             // # of CTs written
  bit     done_feeding;      // set when source exhausted
 logic [PIPE_LAT-1:0] feed_sr; // exactly PIPE_LAT bits
  integer i;                 // loop index
  integer random_left;       // # random vectors to feed if no file present

  // Per-cycle flags (declared at module scope to avoid mid-block decls)
  bit feed_this;
  bit write_now;

  // ---- Stimulus & Capture -------------------------------------------------
  initial begin
    // init
    rst_n        = 1'b0;
    in_bus       = '0;
    key          = '0;
    fed          = 0;
    wrote        = 0;
    done_feeding = 0;
    feed_sr      = '0;
    random_left  = 64;   // used only if no input file

    // open files
    infile   = $fopen("../input/input.txt", "r");
    use_file = (infile != 0);
    outfile  = $fopen("output.txt", "w");
    if (outfile == 0) begin
      $display("ERROR: couldn't open output.txt");
      $finish;
    end
    if (use_file) $display("Using ../input/input.txt");
    else          $display("No input file found, generating randoms...");

    // hold reset a few cycles, then release
    repeat (5) @(posedge clk);
    rst_n = 1'b1;

    // MAIN LOOP: run until source is exhausted AND pipeline is drained
    forever begin
      @(posedge clk);

      // default flags each cycle
      feed_this = 0;
      write_now = feed_sr[PIPE_LAT-1];   // a feed PIPE_LAT cycles ago matures now

      // 1) FEED one vector this cycle (if source still available)
      if (!done_feeding) begin
        if (use_file) begin
          if (!$feof(infile)) begin
            rv = $fscanf(infile, "%h %h\n", in_bus, key);
            if (rv == 2) begin
              feed_this = 1;
              fed       = fed + 1;
            end
          end else begin
            done_feeding = 1;
            if (infile) $fclose(infile);
          end
        end else begin
          if (random_left > 0) begin
            for (i = 0; i < 4; i = i + 1) begin
              in_bus[i*32 +: 32] = $urandom();
              key   [i*32 +: 32] = $urandom();
            end
            feed_this   = 1;
            fed         = fed + 1;
            random_left = random_left - 1;
          end else begin
            done_feeding = 1;
          end
        end
      end

      // 2) Advance feed history AFTER sampling its MSB
      feed_sr = {feed_sr[PIPE_LAT-2:0], feed_this};

      // 3) WRITE ciphertext when it matures
      if (write_now) begin
        $fwrite(outfile, "%032h\n", out_bus);
        wrote = wrote + 1;
      end

      // 4) Stop when source done AND pipeline fully drained
      if (done_feeding && (feed_sr == '0)) begin
        break;
      end
    end

    $fclose(outfile);
    $display("Simulation complete. Fed=%0d  Written=%0d  (latency=%0d)", fed, wrote, PIPE_LAT);
    $display("Ciphertexts written to output.txt");
    $finish;
  end

endmodule
