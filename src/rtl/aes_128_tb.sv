`timescale 1ns/1ps

module aes_128_tb;

    logic [127:0] in_bus;
    logic [127:0] key;
    logic [127:0] out_bus;

    // Instantiate the AES module
    aes_128 dut (
        .in_bus(in_bus),
        .key(key),
        .out_bus(out_bus)
    );

    // File variables
    integer infile, outfile;
    string in_line;
    logic [127:0] plaintext, round_key;

    initial begin
        // Open input and output files
        infile = $fopen("input.txt", "r");
        outfile = $fopen("output.txt", "w");

        if (infile == 0) begin
            $display("ERROR: Couldn't open input file.");
            $finish;
        end
        if (outfile == 0) begin
            $display("ERROR: Couldn't open output file.");
            $finish;
        end

        // Read and apply test vectors from file
        while (!$feof(infile)) begin
            $fscanf(infile, "%h %h\n", plaintext, round_key);
            in_bus = plaintext;
            key = round_key;

            #10; // Wait for combinational logic to settle

            $fwrite(outfile, "%032h\n", out_bus); // 128-bit hex = 32 hex characters
        end

        $fclose(infile);
        $fclose(outfile);
        $display("Simulation complete. Output written to output.txt");
        $finish;
    end

endmodule