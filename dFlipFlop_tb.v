`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.09.2025 15:19:26
// Design Name: 
// Module Name: dFlipFlop_tb
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


module dFlipFlop_tb;
reg clk_t,rst_t,d_t;
wire dout_t;
dFlipFlop dut (.clk(clk_t),.rst(rst_t),.d(d_t),.dout(dout_t));
initial
begin
    d_t = 1'b0;
    clk_t = 1'b0;
    rst_t = 1'b1;
    #20
    rst_t = 0;
    d_t = 1'b0;
    #20
    d_t = 1'b1;
end
always
    #20 
    clk_t = ~clk_t;
endmodule
