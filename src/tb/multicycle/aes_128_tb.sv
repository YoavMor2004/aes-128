`timescale 1ns/1ps

module aes_128_tb;

    parameter cycle_period = 40000;
    parameter hcycle_period = cycle_period / 2;

    logic clk;
    logic rst_n;

    logic [127:0] in_bus;
    logic [127:0] key;
    logic [127:0] out_bus;

    logic valid_ready;

    // Instantiate the AES module
    aes_128 dut (
        .clk(clk),
        .rst_n(rst_n),
        .in_bus(in_bus),
        .key(key),
        .out_bus(out_bus),
        .valid_ready(valid_ready)
    );

    // File variables
    integer infile, outfile;
    string in_line;
    logic [127:0] plaintext, round_key;

    initial begin
        clk   = 'b1;
        rst_n = 'b0;

        // Open input and output files
        infile = $fopen("../input/input.txt", "r");
        outfile = $fopen("output.txt", "w");

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

        // Wait two clock cycles
        #(2 * cycle_period)
        rst_n = 'b1;
        // Read and apply test vectors from file
        while (!$feof(infile)) begin
            $display("out_bus: %032h", out_bus);
            $fwrite(outfile, "%032h\n", out_bus); // 128-bit hex = 32 hex characters

            $fscanf(infile, "%h %h\n", plaintext, round_key);
            in_bus = plaintext;
            key = round_key;

            $display("in_bus:  %032h", in_bus);
            $display("key:     %032h", key);

            integer i;
            integer j;
            for (j = 0; j < 9; j = j + 1) begin
                #cycle_period
                
                for (i = 0; i < 4; i = i + 1) begin
                    // $random returns 32-bit signed, mask lower 32 bits
                    in_bus[i*32 +: 32] = $random;
                end
            end

            #cycle_period
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