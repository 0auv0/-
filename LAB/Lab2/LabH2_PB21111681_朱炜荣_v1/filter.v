`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/04/01 11:12:50
// Design Name: 
// Module Name: filter
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


module filter(
    input clk,
    input button,
    output button_clean
);
reg [15:0] cnt;
always@(posedge clk) begin
    if(button==1'b0)
        cnt <= 16'h0;
    else if(cnt<16'b1111_0000_0000_0000)
        cnt <= cnt + 1'b1;
end
assign button_clean = cnt[15]&cnt[14]&cnt[13]&cnt[12];
endmodule