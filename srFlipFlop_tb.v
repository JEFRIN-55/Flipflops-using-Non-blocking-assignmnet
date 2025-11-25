`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.09.2025 18:45:04
// Design Name: 
// Module Name: srFlipFlop_tb
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


module srFlipFlop_tb;
reg clk_t,rst_t,s_t,r_t;
wire out_t;

srFlipFlop dut(.clk(clk_t),.rst(rst_t),.s(s_t),.r(r_t),.out(out_t));

initial
begin
    clk_t=1'b0;
    rst_t = 1'b1;
    s_t=1'b0;
    r_t= 1'b0;
    #20
    rst_t = 1'b0;
    s_t = 1'b1;
    r_t = 1'b0;
    #20
    s_t=1'b0;
    r_t= 1'b1 ;
    #20
    s_t = 1'b0;
    r_t = 1'b0;
    #20
    s_t = 1'b1 ;
    r_t = 1'b1 ;
end
always #10
clk_t = ~clk_t;

endmodule
