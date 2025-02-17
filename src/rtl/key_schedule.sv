module key_expansion (
    input  logic [127:0] in_bus,   // 128-bit input bus
    input  logic [31:0] rcon,      //  32-bit input bus
    output logic [127:0] out_bus   // 128-bit output bus
);

    logic [31:0] in_rotated;
    logic [31:0] in_subbed;

    rot_word rw(.in_bus(.in_bus[127:96]), .out_bus(in_rotated));
    sub_word sw(.in_bus(in_rotated),      .out_bus(in_subbed));

    assign out_bus[31:0]   = in_bus[31:0]   ^ rcon ^ in_subbed;
    assign out_bus[63:32]  = in_bus[63:32]  ^ out_bus[31:0];
    assign out_bus[95:64]  = in_bus[95:64]  ^ out_bus[63:32];
    assign out_bus[127:96] = in_bus[127:96] ^ out_bus[95:64];

endmodule
