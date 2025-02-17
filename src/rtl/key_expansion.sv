module key_expansion (
    input  logic [127:0] in_bus,    // 128-bit input bus
    output logic [1407:0] out_bus   // 1408-bit output bus
);

    assign out_bus[127:0] = in_bus;
    
    key_schedule ks0( .in_bus(out_bus[127:0]),     .rcon({8'h01, 8'h00, 8'h00, 8'h00}), .out_bus(out_bus[255:128]));
    key_schedule ks1( .in_bus(out_bus[255:128]),   .rcon({8'h02, 8'h00, 8'h00, 8'h00}), .out_bus(out_bus[383:256]));
    key_schedule ks2( .in_bus(out_bus[383:256]),   .rcon({8'h04, 8'h00, 8'h00, 8'h00}), .out_bus(out_bus[511:384]));
    key_schedule ks3( .in_bus(out_bus[511:384]),   .rcon({8'h08, 8'h00, 8'h00, 8'h00}), .out_bus(out_bus[639:512]));
    key_schedule ks4( .in_bus(out_bus[639:512]),   .rcon({8'h10, 8'h00, 8'h00, 8'h00}), .out_bus(out_bus[767:640]));
    key_schedule ks5( .in_bus(out_bus[767:640]),   .rcon({8'h20, 8'h00, 8'h00, 8'h00}), .out_bus(out_bus[895:768]));
    key_schedule ks6( .in_bus(out_bus[895:768]),   .rcon({8'h40, 8'h00, 8'h00, 8'h00}), .out_bus(out_bus[1023:896]));
    key_schedule ks7( .in_bus(out_bus[1023:896]),  .rcon({8'h80, 8'h00, 8'h00, 8'h00}), .out_bus(out_bus[1151:1024]));
    key_schedule ks8( .in_bus(out_bus[1151:1024]), .rcon({8'h1b, 8'h00, 8'h00, 8'h00}), .out_bus(out_bus[1279:1152]));
    key_schedule ks9( .in_bus(out_bus[1279:1152]), .rcon({8'h36, 8'h00, 8'h00, 8'h00}), .out_bus(out_bus[1407:1280]));

endmodule
