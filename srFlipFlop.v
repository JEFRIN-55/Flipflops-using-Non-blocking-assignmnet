`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.09.2025 18:39:33
// Design Name: 
// Module Name: srFlipFlop
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


module srFlipFlop (s,r,clk,rst,out);
input s, r, clk, rst;
output reg out ;
always @ (posedge clk)
begin 
if (rst)
    out = 1'b0;
else if (s & ~r)
    out = 1'b1;
else if (~s & r)
    out = 1'b0;
else 
    out = 1'bx;
end
endmodule
