`timescale 1ns/1ps

module aes_128 (
    input logic clk,
    input logic rst_n,

    input  logic [127:0] in_bus,   // 128-bit input bus
    input  logic [127:0] key,      // 128-bit input key
    output logic [127:0] out_bus   // 128-bit output bus
);

    logic [127:0] key_matrix[0:10];

    logic [127:0] state[0:40];

    key_expansion ke(.in_bus(key), .out_bus({
        key_matrix[10],
        key_matrix[9],
        key_matrix[8],
        key_matrix[7],
        key_matrix[6],
        key_matrix[5],
        key_matrix[4],
        key_matrix[3],
        key_matrix[2],
        key_matrix[1],
        key_matrix[0]
    }));

    assign state[0] = in_bus;

    assign state[1] = state[0] ^ key_matrix[0];
    sub_bytes   sb0(.in_bus(state[1]), .out_bus(state[2]));
    shift_rows  sr0(.in_bus(state[2]), .out_bus(state[3]));
    mix_columns mc0(.in_bus(state[3]), .out_bus(state[4]));

    assign state[5] = state[4] ^ key_matrix[1];
    sub_bytes   sb1(.in_bus(state[5]), .out_bus(state[6]));
    shift_rows  sr1(.in_bus(state[6]), .out_bus(state[7]));
    mix_columns mc1(.in_bus(state[7]), .out_bus(state[8]));

    assign state[9] = state[8] ^ key_matrix[2];
    sub_bytes   sb2(.in_bus(state[9]), .out_bus(state[10]));
    shift_rows  sr2(.in_bus(state[10]), .out_bus(state[11]));
    mix_columns mc2(.in_bus(state[11]), .out_bus(state[12]));

    assign state[13] = state[12] ^ key_matrix[3];
    sub_bytes   sb3(.in_bus(state[13]), .out_bus(state[14]));
    shift_rows  sr3(.in_bus(state[14]), .out_bus(state[15]));
    mix_columns mc3(.in_bus(state[15]), .out_bus(state[16]));

    assign state[17] = state[16] ^ key_matrix[4];
    sub_bytes   sb4(.in_bus(state[17]), .out_bus(state[18]));
    shift_rows  sr4(.in_bus(state[18]), .out_bus(state[19]));
    mix_columns mc4(.in_bus(state[19]), .out_bus(state[20]));

    assign state[21] = state[20] ^ key_matrix[5];
    sub_bytes   sb5(.in_bus(state[21]), .out_bus(state[22]));
    shift_rows  sr5(.in_bus(state[22]), .out_bus(state[23]));
    mix_columns mc5(.in_bus(state[23]), .out_bus(state[24]));

    assign state[25] = state[24] ^ key_matrix[6];
    sub_bytes   sb6(.in_bus(state[25]), .out_bus(state[26]));
    shift_rows  sr6(.in_bus(state[26]), .out_bus(state[27]));
    mix_columns mc6(.in_bus(state[27]), .out_bus(state[28]));

    assign state[29] = state[28] ^ key_matrix[7];
    sub_bytes   sb7(.in_bus(state[29]), .out_bus(state[30]));
    shift_rows  sr7(.in_bus(state[30]), .out_bus(state[31]));
    mix_columns mc7(.in_bus(state[31]), .out_bus(state[32]));

    assign state[33] = state[32] ^ key_matrix[8];
    sub_bytes   sb8(.in_bus(state[33]), .out_bus(state[34]));
    shift_rows  sr8(.in_bus(state[34]), .out_bus(state[35]));
    mix_columns mc8(.in_bus(state[35]), .out_bus(state[36]));

    assign state[37] = state[36] ^ key_matrix[9];
    sub_bytes   sb9(.in_bus(state[37]), .out_bus(state[38]));
    shift_rows  sr9(.in_bus(state[38]), .out_bus(state[39]));
    // mix_columns mc9(.in_bus(state[3]), .out_bus(state[4])); // Not performed in the last round

    assign state[40] = state[39] ^ key_matrix[10];

    assign out_bus = state[40];

endmodule