`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.09.2025 20:12:05
// Design Name: 
// Module Name: jkFlipFlop
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


module jkFlipFlop (clk,rst,j,k,out);
input clk, rst, j,k;
output reg out;
always @(posedge clk)
begin
    if (rst)
        out = 1'b0;
    else if (j & ~k)
        out = 1'b1;
    else if (~j & k)
        out = 1'b0;
    else
        out = ~out;
end
endmodule
