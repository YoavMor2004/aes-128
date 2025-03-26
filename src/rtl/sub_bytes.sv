module sub_bytes (
    input  logic [127:0] in_bus,   // 128-bit input bus (4x4 matrix)
    output logic [127:0] out_bus   // 128-bit output bus after SubBytes
);

    // Instantiate 16 S-box modules 
    sbox s0 (.in_bus(in_bus[7:0]),   .out_bus(out_bus[7:0]));
    sbox s1 (.in_bus(in_bus[15:8]),  .out_bus(out_bus[15:8]));
    sbox s2 (.in_bus(in_bus[23:16]), .out_bus(out_bus[23:16]));
    sbox s3 (.in_bus(in_bus[31:24]), .out_bus(out_bus[31:24]));

    sbox s4 (.in_bus(in_bus[39:32]), .out_bus(out_bus[39:32]));
    sbox s5 (.in_bus(in_bus[47:40]), .out_bus(out_bus[47:40]));
    sbox s6 (.in_bus(in_bus[55:48]), .out_bus(out_bus[55:48]));
    sbox s7 (.in_bus(in_bus[63:56]), .out_bus(out_bus[63:56]));

    sbox s8  (.in_bus(in_bus[71:64]),  .out_bus(out_bus[71:64]));
    sbox s9  (.in_bus(in_bus[79:72]),  .out_bus(out_bus[79:72]));
    sbox s10 (.in_bus(in_bus[87:80]),  .out_bus(out_bus[87:80]));
    sbox s11 (.in_bus(in_bus[95:88]),  .out_bus(out_bus[95:88]));

    sbox s12 (.in_bus(in_bus[103:96]), .out_bus(out_bus[103:96]));
    sbox s13 (.in_bus(in_bus[111:104]), .out_bus(out_bus[111:104]));
    sbox s14 (.in_bus(in_bus[119:112]), .out_bus(out_bus[119:112]));
    sbox s15 (.in_bus(in_bus[127:120]), .out_bus(out_bus[127:120]));

endmodule