`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.09.2025 20:18:16
// Design Name: 
// Module Name: jkFlipFlop_tb
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


module jkFlipFlop_tb;
reg clk_t,rst_t,j_t,k_t;
wire out_t;
jkFlipFlop dut(.clk(clk_t),.rst(rst_t),.j(j_t),.k(k_t),.out(out_t));

initial 
begin
    clk_t = 1'b0;
    rst_t = 1'b1;
    j_t = 1'b0;
    k_t = 1'b0;
    #20
    rst_t = 1'b0;
    j_t= 1'b1;
    k_t=1'b0;
    #20
    j_t= 1'b0;
    k_t = 1'b1;
    #20
    j_t=1'b0;
    k_t=1'b0;
    #20
    j_t = 1'b1;
    k_t = 1'b1;
end
always #10
clk_t = ~clk_t;

endmodule
