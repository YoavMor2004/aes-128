`timescale 1ns/1ps

module sub_word (
    input  logic [31:0] in_bus,   // 32-bit input bus
    output logic [31:0] out_bus   // 32-bit output bus
);

    sbox s0(.in_bus(in_bus[7:0]),   .out_bus(out_bus[7:0]));
    sbox s1(.in_bus(in_bus[15:8]),  .out_bus(out_bus[15:8]));
    sbox s2(.in_bus(in_bus[23:16]), .out_bus(out_bus[23:16]));
    sbox s3(.in_bus(in_bus[31:24]), .out_bus(out_bus[31:24]));

endmodule