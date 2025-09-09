`timescale 1ns/1ps
// -----------------------------------------------------------------------------
// AES-128 one-round (combinational)
// FINAL_ROUND=0 : SubBytes -> ShiftRows -> MixColumns -> AddRoundKey
// FINAL_ROUND=1 : SubBytes -> ShiftRows ->              AddRoundKey (no MC)
// -----------------------------------------------------------------------------
module aes_round_comb #(
    parameter bit FINAL_ROUND = 1'b0
)(
    input  logic [127:0] state_in,
    input  logic [127:0] round_key,
    output logic [127:0] state_out
);
    logic [127:0] sb, sr, mc;

    sub_bytes  u_sb (.in_bus(state_in), .out_bus(sb));
    shift_rows u_sr (.in_bus(sb),       .out_bus(sr));

    generate
        if (!FINAL_ROUND) begin : G_FULL
            mix_columns u_mc (.in_bus(sr), .out_bus(mc));
            assign state_out = mc ^ round_key;     // AddRoundKey
        end else begin : G_LAST
            assign state_out = sr ^ round_key;     // Final round (no MC)
        end
    endgenerate
endmodule
`