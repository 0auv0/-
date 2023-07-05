`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/06/04 13:58:59
// Design Name: 
// Module Name: bram
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module bram #(
    parameter DATA_WIDTH = 8,
              ADDR_WIDTH = 8,
              INIT_FILE = ""
)(
    input clk,                    // Clock
    input [ADDR_WIDTH-1:0] addr,  // Address
    input [DATA_WIDTH-1:0] din,   // Data Input
    input we,                     // Write Enable
    output [DATA_WIDTH-1:0] dout  // Data Output
); 
    reg [ADDR_WIDTH-1:0] addr_r;  // Address Register
    reg [DATA_WIDTH-1:0] ram [0:(1 << ADDR_WIDTH)-1];

    initial $readmemh(INIT_FILE, ram); // initialize memory

    assign dout = ram[addr_r]; 

    always @(posedge clk) begin
        addr_r <= addr;
        if (we) ram[addr] <= din;
    end

endmodule

