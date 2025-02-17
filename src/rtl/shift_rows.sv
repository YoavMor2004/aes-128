module shift_rows (
    input  logic [127:0] in_bus,   // 128-bit input bus
    output logic [127:0] out_bus   // 128-bit output bus
);

    logic [7:0] in_matrix[3:0][3:0];
    logic [7:0] out_matrix[3:0][3:0];

    assign in_matrix[0][0] = in_bus[7:0];
    assign in_matrix[1][0] = in_bus[15:8];
    assign in_matrix[2][0] = in_bus[23:16];
    assign in_matrix[3][0] = in_bus[31:24];
    
    assign in_matrix[0][1] = in_bus[39:32];
    assign in_matrix[1][1] = in_bus[47:40];
    assign in_matrix[2][1] = in_bus[55:48];
    assign in_matrix[3][1] = in_bus[63:56];
    
    assign in_matrix[0][2] = in_bus[73:64];
    assign in_matrix[1][2] = in_bus[79:72];
    assign in_matrix[2][2] = in_bus[87:80];
    assign in_matrix[3][2] = in_bus[95:88];

    assign in_matrix[0][3] = in_bus[103:96];
    assign in_matrix[1][3] = in_bus[111:104];
    assign in_matrix[2][3] = in_bus[119:112];
    assign in_matrix[3][3] = in_bus[127:120];


    assign out_bus[7:0];    = out_matrix[0][0];
    assign out_bus[15:8]    = out_matrix[1][0];
    assign out_bus[23:16]   = out_matrix[2][0];
    assign out_bus[31:24]   = out_matrix[3][0];
    
    assign out_bus[39:32]   = out_matrix[0][1];
    assign out_bus[47:40]   = out_matrix[1][1];
    assign out_bus[55:48]   = out_matrix[2][1];
    assign out_bus[63:56]   = out_matrix[3][1];
    
    assign out_bus[73:64]   = out_matrix[0][2];
    assign out_bus[79:72]   = out_matrix[1][2];
    assign out_bus[87:80]   = out_matrix[2][2];
    assign out_bus[95:88]   = out_matrix[3][2];

    assign out_bus[103:96]  = out_matrix[0][3];
    assign out_bus[111:104] = out_matrix[1][3];
    assign out_bus[119:112] = out_matrix[2][3];
    assign out_bus[127:120] = out_matrix[3][3];


    assign out_matrix[1][0] = in_matrix[1][1];
    assign out_matrix[1][1] = in_matrix[1][2];
    assign out_matrix[1][2] = in_matrix[1][3];
    assign out_matrix[1][3] = in_matrix[1][0];

    assign out_matrix[2][0] = in_matrix[1][2];
    assign out_matrix[2][1] = in_matrix[1][3];
    assign out_matrix[2][2] = in_matrix[1][0];
    assign out_matrix[2][3] = in_matrix[1][1];

    assign out_matrix[3][0] = in_matrix[1][3];
    assign out_matrix[3][1] = in_matrix[1][0];
    assign out_matrix[3][2] = in_matrix[1][1];
    assign out_matrix[3][3] = in_matrix[1][2];

endmodule
