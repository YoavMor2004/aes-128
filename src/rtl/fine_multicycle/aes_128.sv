`timescale 1ns/1ps

module aes_128 (
    input logic clk,
    input logic rst_n,

    input  logic [127:0] in_bus,   // 128-bit input bus
    input  logic [127:0] key,      // 128-bit input key
    output logic [127:0] out_bus,  // 128-bit output bus

    output logic ready, // If ready on posedge - input is sampled
    output logic valid // If valid - out_bus is encryption of previous in_bus with previous key
);
    // Control Signals
    logic input_reg_n;
    logic [1:0] round_step

    logic enable_ks;
    logic [3:0] round_index;

    // Nets
    logic [127:0] s                  ;
    logic [127:0] xor_output_sb_input;
    logic [127:0] sb_output          ;
    logic [127:0] sr_output          ;
    logic [127:0] mc_output          ;

    logic [127:0] k        ;
    logic [127:0] ks_output;

    // ROM
    logic [7:0]  rcon_msB;
    logic [31:0] rcon;

    controller c(
        .clk(clk),
        .rst_n(rst_n),
        .ready(ready),
        .valid(valid),
        .input_reg_n(input_reg_n),
        .round_step(round_step),
        .round_index(round_index),
        .enable_ks(enable_ks)
    );

    // Registers
    logic [127:0] state;
    logic [127:0] next_state;

    logic [127:0] key_reg;
    logic [127:0] next_key;

    always @(posedge clk)
        state   <= next_state;
    always @(posedge clk)
        key_reg <= next_key;

    always @* begin
        case (round_index)
            4'd0:    rcon_msB = 8'h01;
            4'd1:    rcon_msB = 8'h02;
            4'd2:    rcon_msB = 8'h04;
            4'd3:    rcon_msB = 8'h08;
            4'd4:    rcon_msB = 8'h10;
            4'd5:    rcon_msB = 8'h20;
            4'd6:    rcon_msB = 8'h40;
            4'd7:    rcon_msB = 8'h80;
            4'd8:    rcon_msB = 8'h1b;
            4'd9:    rcon_msB = 8'h36;
            default: rcon_msB = 8'hxx;
        endcase
    end

    assign rcon = {rcon_msB, 8'h00, 8'h00, 8'h00};

    assign k = input_reg_n ? key    : key_reg;

    assign xor_output_sb_input = (input_reg_n ? in_bus : state) ^ k      ;
    assign out_bus             = sr_output                      ^ key_reg;

    assign next_key = enable_ks ? ks_output : key_reg;

    // next_state MUX
    always @* begin
        case (round_step)
            2'd0:    next_state = sb_output;
            2'd1:    next_state = sr_output;
            2'd2:    next_state = mc_output;
            default: next_state = 128'dx   ;
        endcase
    end

    key_schedule ks(.in_bus(k                  ), .rcon(rcon), .out_bus(ks_output));
    sub_bytes    sb(.in_bus(xor_output_sb_input),              .out_bus(sb_output));
    shift_rows   sr(.in_bus(state              ),              .out_bus(sr_output));
    mix_columns  mc(.in_bus(state              ),              .out_bus(mc_output));

endmodule
