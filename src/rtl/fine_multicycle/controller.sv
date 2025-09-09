module controller (
    input logic clk,
    input logic rst_n,

    output logic       ready, // If ready on posedge - input is sampled
    output logic       valid, // If valid on posedge - out_bus is encryption of previous in_bus with previous key
    output logic       input_reg_n,
    output logic [1:0] round_step,
    output logic [3:0] round_index,
    output logic       enable_ks
);
    // Logical Signals
    logic is_last_round;
    logic is_last_step ;

    // Registers
    logic [1:0] next_round_step;
    logic [3:0] next_round_index;

    always @(posedge clk or negedge rst_n) begin
        if (~rst_n)
            round_step <= 4'd1;  // Sample inputs after the next full cycle
        else            
            round_step <= next_round_step;
    end    
    
    always @(posedge clk or negedge rst_n) begin
        if (~rst_n)
            round_index <= 4'd9; // Sample inputs after the next full cycle
        else            
            round_index <= next_round_index;
    end

    // next_round_step logic
    always @* begin
        case (round_step)
                2'd0:    next_round_step =                       2'd1;
                2'd1:    next_round_step = is_last_step ? 2'd0 : 2'd2;
                2'd2:    next_round_step =                       2'd0;
                default: next_round_step = 2'dx                      ;
        endcase
    end

    // next_round_index logic
    always @* begin
        if (is_last_round) begin
            next_round_index = is_last_step ? 4'd0 : 4'd9;
        end else begin
            if (round_step == 4'd2) begin
                case (round_index)
                    4'd0:    next_round_index = 4'd1;
                    4'd1:    next_round_index = 4'd2;
                    4'd2:    next_round_index = 4'd3;
                    4'd3:    next_round_index = 4'd4;
                    4'd4:    next_round_index = 4'd5;
                    4'd5:    next_round_index = 4'd6;
                    4'd6:    next_round_index = 4'd7;
                    4'd7:    next_round_index = 4'd8;
                    4'd8:    next_round_index = 4'd9;
                    default: next_round_index = 4'dx;
                endcase
            end else begin
                next_round_index = round_index;
            end
        end
    end

    assign is_last_round = round_index == 4'd9;
    assign is_last_step  = is_last_round && (round_step == 2'd1);

    assign ready       = (round_step == 2'd0 && round_index == 4'd0) ? 1 : 0;
    assign input_reg_n = (round_step == 2'd0 && round_index == 4'd0) ? 1 : 0;
    assign valid       = is_last_step                                       ;
    assign enable_ks   =  round_step == 2'd0;

endmodule