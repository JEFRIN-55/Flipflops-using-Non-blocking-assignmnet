`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.09.2025 15:29:22
// Design Name: 
// Module Name: tFlipFlop
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


module tFlipFlop(clk,rst,t,t_out);
input clk,rst,t;
output reg t_out;
always @(posedge clk)
begin   
if (rst)
    t_out = 1'b0;
else if (t)
    t_out = ~t_out;
else
    t_out = t_out;
end
endmodule
