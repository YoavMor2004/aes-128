module mix_word (
    input  logic [31:0] in_byte,   // 32-bit input bus
    output logic [31:0] out_byte   // 32-bit output bus
);

    logic [3:0][7:0] in_column;
    logic [3:0][8:0] in_column_times_2;
    logic [3:0][9:0] in_column_times_3;

    logic [3:0][7:0] out_column;

    assign in_column[0] = in_byte[7:0];
    assign in_column[1] = in_byte[15:8];
    assign in_column[2] = in_byte[23:16];
    assign in_column[3] = in_byte[31:24];

    times_2 t20(.x(in_column[0]), .x_times_2(in_column_times_2[0]));
    times_2 t21(.x(in_column[1]), .x_times_2(in_column_times_2[1]));
    times_2 t22(.x(in_column[2]), .x_times_2(in_column_times_2[2]));
    times_2 t23(.x(in_column[3]), .x_times_2(in_column_times_2[3]));

    times_3 t30(.x(in_column[0]), .x_times_3(in_column_times_3[0]));
    times_3 t31(.x(in_column[1]), .x_times_3(in_column_times_3[1]));
    times_3 t32(.x(in_column[2]), .x_times_3(in_column_times_3[2]));
    times_3 t33(.x(in_column[3]), .x_times_3(in_column_times_3[3]));

    assign out_column[0] = in_column_times_2[0] ^ in_column_times_3[1] ^ in_column[2]         ^ in_column[3];
    assign out_column[1] = in_column[0]         ^ in_column_times_2[1] ^ in_column_times_3[2] ^ in_column[3];
    assign out_column[2] = in_column[0]         ^ in_column[1]         ^ in_column_times_2[2] ^ in_column_times_3[3];
    assign out_column[3] = in_column_times_3[0] ^ in_column[1]         ^ in_column[2]         ^ in_column_times_2[3];

    assign out_byte[7:0]   = out_column[0];
    assign out_byte[15:8]  = out_column[1];
    assign out_byte[23:16] = out_column[2];
    assign out_byte[31:24] = out_column[3];

endmodule
