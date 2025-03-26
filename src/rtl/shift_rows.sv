`timescale 1ns/1ps

module shift_rows (
    input  logic [127:0] in_bus,   // 128-bit input bus
    output logic [127:0] out_bus   // 128-bit output bus
);

    logic [7:0] in_matrix[3:0][3:0];
    logic [7:0] out_matrix[3:0][3:0];

    for (col = 0; col < 4; col = col + 1) begin
        for (row = 0; row < 4; row = row + 1) begin
            assign in_matrix[3 - row][3 - col] = in_bus[(32*col + 8*row+7):(32*col + 8*row)];
        end
    end


    assign out_matrix[0][0] = in_matrix[0][0];
    assign out_matrix[0][1] = in_matrix[0][1];
    assign out_matrix[0][2] = in_matrix[0][2];
    assign out_matrix[0][3] = in_matrix[0][3];
    
    assign out_matrix[1][0] = in_matrix[1][1];
    assign out_matrix[1][1] = in_matrix[1][2];
    assign out_matrix[1][2] = in_matrix[1][3];
    assign out_matrix[1][3] = in_matrix[1][0];

    assign out_matrix[2][0] = in_matrix[2][2];
    assign out_matrix[2][1] = in_matrix[2][3];
    assign out_matrix[2][2] = in_matrix[2][0];
    assign out_matrix[2][3] = in_matrix[2][1];

    assign out_matrix[3][0] = in_matrix[3][3];
    assign out_matrix[3][1] = in_matrix[3][0];
    assign out_matrix[3][2] = in_matrix[3][1];
    assign out_matrix[3][3] = in_matrix[3][2];


    for (col = 0; col < 4; col = col + 1) begin
        for (row = 0; row < 4; row = row + 1) begin
            assign out_bus[(32*col + 8*row+7):(32*col + 8*row)] = out_matrix[3 - row][3 - col];
        end
    end

 endmodule