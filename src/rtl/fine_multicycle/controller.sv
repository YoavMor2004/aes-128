module controller (
    input logic clk,
    input logic rst_n,

    output logic [3:0] index,
    output logic ready, // If ready on posedge - input is sampled
    output logic valid, // If valid on posedge - out_bus is encryption of previous in_bus with previous key
    output logic input_reg_n
);

    logic [3:0] next_index;

    always @(posedge clk or negedge rst_n) begin
        if (~rst_n)
            index <= 4'd9; // Sample inputs after the next full cycle
        else            
            index <= next_index;
    end

    always @* begin
        case (index)
            4'd0:    next_index = 4'd1;
            4'd1:    next_index = 4'd2;
            4'd2:    next_index = 4'd3;
            4'd3:    next_index = 4'd4;
            4'd4:    next_index = 4'd5;
            4'd5:    next_index = 4'd6;
            4'd6:    next_index = 4'd7;
            4'd7:    next_index = 4'd8;
            4'd8:    next_index = 4'd9;
            4'd9:    next_index = 4'd0;
            default: next_index = 4'dx;
        endcase
    end

    assign ready       = (index == 4'd0) ? 1 : 0;
    assign valid       = (index == 4'd9) ? 1 : 0;
    assign input_reg_n = (index == 4'd0) ? 1 : 0;

endmodule