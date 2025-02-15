module mix_columns (
    input  logic [127:0] in_bus,   // 128-bit input bus
    output logic [127:0] out_bus   // 128-bit output bus
);

    mix_word mw0(.in_byte(in_bus[31:0]),   .out_byte(out_bus[31:0]));
    mix_word mw1(.in_byte(in_bus[63:32]),  .out_byte(out_bus[63:32]));
    mix_word mw2(.in_byte(in_bus[95:64]),  .out_byte(out_bus[95:64]));
    mix_word mw3(.in_byte(in_bus[127:96]), .out_byte(out_bus[127:96]));

endmodule
