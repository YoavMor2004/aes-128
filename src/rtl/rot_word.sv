module rot_word (
    input  logic [31:0] in_bus,   // 32-bit input bus
    output logic [31:0] out_bus   // 32-bit output bus
);

    assign out_bus[7:0]   = in_bus[8:15];
    assign out_bus[15:8]  = in_bus[16:23];
    assign out_bus[23:16] = in_bus[24:31];
    assign out_bus[31:24] = in_bus[0:7];

endmodule
