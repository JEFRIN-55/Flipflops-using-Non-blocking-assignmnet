`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.09.2025 15:13:01
// Design Name: 
// Module Name: dFlipFlop
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


module dFlipFlop(clk,rst,d,dout);
input clk, rst, d;
output reg dout;
always @(posedge clk)
begin
if (rst)
    dout <= 1'b0;
else
    dout <= d;
end
endmodule
