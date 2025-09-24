`timescale 1ns/1ps
module aes_128 (
    input  logic         clk,
    input  logic         rst_n,

    input  logic [127:0] in_bus,
    input  logic [127:0] key,
    output logic [127:0] out_bus,

    output logic         ready,   // ready=1: input is sampled each cycle
    output logic         valid    // valid=1: out_bus matches input from 11 cycles ago
);
    // -------------------------------------------------------------------------
    // Pipeline registers: data (stg[0..10]) and round keys (k_stg[0..10])
    // k_stg[i] holds Ki for the block currently in stage i.
    // -------------------------------------------------------------------------
    logic [127:0] stg   [0:10];
    logic [127:0] k_stg [0:10];

    // Next-state signals
    logic [127:0] s0_next;
    logic [127:0] s_next [1:10];   // stage i=1..10 data next
    logic [127:0] k_next [1:10];   // stage i=1..10 key  next

    // Valid pipeline (11 deep)
    logic [10:0] v_sr;

    // Always accept a new block each cycle
    assign ready = 1'b1;

    // Stage 0: initial AddRoundKey using K0 (the input key)
    assign s0_next = in_bus ^ key;

    // -------------------------------------------------------------------------
    // Per-stage key derivation (on-the-fly) using your key_schedule
    // k_next[i] = KS( k_stg[i-1], RCON[i] ), i=1..10
    // RCON[i] values per AES spec
    // -------------------------------------------------------------------------
    key_schedule ks1  (.in_bus(k_stg[0]), .rcon({8'h01,8'h00,8'h00,8'h00}), .out_bus(k_next[1]));
    key_schedule ks2  (.in_bus(k_stg[1]), .rcon({8'h02,8'h00,8'h00,8'h00}), .out_bus(k_next[2]));
    key_schedule ks3  (.in_bus(k_stg[2]), .rcon({8'h04,8'h00,8'h00,8'h00}), .out_bus(k_next[3]));
    key_schedule ks4  (.in_bus(k_stg[3]), .rcon({8'h08,8'h00,8'h00,8'h00}), .out_bus(k_next[4]));
    key_schedule ks5  (.in_bus(k_stg[4]), .rcon({8'h10,8'h00,8'h00,8'h00}), .out_bus(k_next[5]));
    key_schedule ks6  (.in_bus(k_stg[5]), .rcon({8'h20,8'h00,8'h00,8'h00}), .out_bus(k_next[6]));
    key_schedule ks7  (.in_bus(k_stg[6]), .rcon({8'h40,8'h00,8'h00,8'h00}), .out_bus(k_next[7]));
    key_schedule ks8  (.in_bus(k_stg[7]), .rcon({8'h80,8'h00,8'h00,8'h00}), .out_bus(k_next[8]));
    key_schedule ks9  (.in_bus(k_stg[8]), .rcon({8'h1b,8'h00,8'h00,8'h00}), .out_bus(k_next[9]));
    key_schedule ks10 (.in_bus(k_stg[9]), .rcon({8'h36,8'h00,8'h00,8'h00}), .out_bus(k_next[10]));

    // -------------------------------------------------------------------------
    // Round combinational blocks: stage i uses k_next[i] (aligned with stg[i-1])
    // -------------------------------------------------------------------------
    genvar i;
    generate
        for (i = 1; i <= 9; i++) begin : G_RNDS
            aes_round_comb #(.FINAL_ROUND(1'b0)) u_rnd (
                .state_in (stg[i-1]),
                .round_key(k_next[i]),
                .state_out(s_next[i])
            );
        end
        aes_round_comb #(.FINAL_ROUND(1'b1)) u_final (
            .state_in (stg[9]),
            .round_key(k_next[10]),
            .state_out(s_next[10])
        );
    endgenerate

    // -------------------------------------------------------------------------
    // Registers: advance every cycle (no backpressure in this flavor)
    // Data and keys move in lockstep; valid shifts accordingly.
    // -------------------------------------------------------------------------
    always_ff @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            for (int j=0;j<=10;j++) begin
                stg[j]   <= '0;
                k_stg[j] <= '0;
            end
            v_sr <= '0;
        end else begin
            // Stage 0 loads the new block and its K0 (raw key)
            stg[0]   <= s0_next;
            k_stg[0] <= key;

            // Stages 1..10 take their computed next values
            for (int j=1;j<=10;j++) begin
                stg[j]   <= s_next[j];
                k_stg[j] <= k_next[j];
            end

            // Valid pipeline: new input each cycle
            v_sr <= {v_sr[9:0], 1'b1};
        end
    end

    assign out_bus = stg[10];
    assign valid   = v_sr[10];

endmodule
