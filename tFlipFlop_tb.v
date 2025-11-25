`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.09.2025 15:38:07
// Design Name: 
// Module Name: tFlipFlop_tb
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


module tFlipFlop_tb;
reg clk_t, rst_t, t_t;
wire tout_t;
tFlipFlop dut(.clk(clk_t),.rst(rst_t),.t(t_t),.t_out(tout_t));
initial
begin
    clk_t = 1'b0;
    rst_t = 1'b1;
    #20
    rst_t = 1'b0;
    t_t = 1'b0;
    #20
    t_t = 1'b1;
    end
    always 
    #10
clk_t = ~clk_t;
endmodule
