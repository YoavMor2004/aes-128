`timescale 1ns/1ps

module aes_128_tb;

    parameter design_cycle_period = 4;
    parameter cycle_period        = design_cycle_period * 2;
    parameter hcycle_period       = cycle_period        / 2;

    integer i;
    integer j;

    logic clk;
    logic rst_n;

    logic [127:0] in_bus;
    logic [127:0] key;
    logic [127:0] out_bus;

    logic ready;
    logic valid;

    // Instantiate the AES module
    aes_128 dut (
        .clk(clk),
        .rst_n(rst_n),
        .in_bus(in_bus),
        .key(key),
        .out_bus(out_bus),
        .ready(ready),
        .valid(valid)
    );

    // File variables
    integer infile, outfile;

    // SDF Configuration
    `ifdef GATE_LEVEL
        initial 
        begin 
            $sdf_annotate("../export/post_synth/aes_128.sdf",dut,,"sdf.log" ,"MAXIMUM"); 
        end
    `endif

    initial begin
        clk   = 'b0;
        rst_n = 'b0;

        // Open input and output files
        infile  = $fopen("../input/input.txt", "r");
        outfile = $fopen("output.txt",         "w");

        if (infile == 0) begin
            if (outfile != 0)
                $fclose(outfile);
            $display("ERROR: Couldn't open input file.");
            $finish;
        end
        if (outfile == 0) begin
            $fclose(infile);
            $display("ERROR: Couldn't open output file.");
            $finish;
        end

        for (j = 0; j < 2; j = j + 1) begin
            for (i = 0; i < 4; i = i + 1) begin
                // $random returns 32-bit signed, mask lower 32 bits
                in_bus[i*32 +: 32] = $random;
                key[i*32 +: 32] = $random;
            end
            #cycle_period;
        end
        rst_n = 'b1;
        for (i = 0; i < 4; i = i + 1) begin
            // $random returns 32-bit signed, mask lower 32 bits
            in_bus[i*32 +: 32] = $random;
            key[i*32 +: 32] = $random;
        end
        // Read and apply test vectors from file
        while (!$feof(infile)) begin
            #cycle_period;
            $fscanf(infile, "%h %h\n", in_bus, key);
            $display("in_bus:  %032h", in_bus);
            $display("key:     %032h", key);
            for (j = 0; j < 9; j = j + 1) begin
                #cycle_period;
                for (i = 0; i < 4; i = i + 1) begin
                    // $random returns 32-bit signed, mask lower 32 bits
                    in_bus[i*32 +: 32] = $random;
                    key[i*32 +: 32] = $random;
                end
            end
            $display("out_bus: %032h", out_bus);
            $fwrite(outfile, "%032h\n", out_bus); // 128-bit hex = 32 hex characters
        end

        $fclose(infile);
        $fclose(outfile);
        $display("Simulation complete. Output written to output.txt");
        $finish;
    end

    always begin
        #hcycle_period clk = ~clk;
    end

endmodule