module times_2 (
    input  logic [7:0] x,          // byte input bus
    output logic [8:0] x_times_2   // byte output bus
);

    assign x_times_2 = (x[7] == 0) ? (x << 1) : ((x << 1) ^ 8'b00011011); // try with 8'hb1 as well

endmodule