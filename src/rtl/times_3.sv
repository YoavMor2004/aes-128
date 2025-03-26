`timescale 1ns/1ps

module times_3 (
    input  logic [7:0] x,          // byte input bus
    output logic [9:0] x_times_3   // byte output bus
);

    logic [8:0] x_times_2;

    times_2 t2(.x(x), .x_times_2(x_times_2));
    assign x_times_3 = x_times_2 ^ x;

endmodule