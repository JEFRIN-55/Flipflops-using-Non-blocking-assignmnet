# EXPERIMENT 3B: Simulation of All Flip-Flops using Non Blocking Statement

## AIM
To design and simulate basic flip-flops (SR, D, JK, and T) using **Non blocking statements** in Verilog HDL, and verify their functionality through simulation in Vivado 2023.1.

## APPARATUS REQUIRED
- Vivado 2023.1
- Computer with HDL Simulator

## DESCRIPTION
Flip-flops are the basic memory elements in sequential circuits.  
In this experiment, different types of flip-flops (SR, D, JK, T) are modeled using **behavioral modeling** with **Non blocking assignment (`<=`)** inside the `always` block.  
Non Blocking assignments execute sequentially in the given order, which makes it easier to describe simple synchronous circuits.

## PROCEDURE
1. Open **Vivado 2023.1**.  
2. Create a **New RTL Project** (e.g., `FlipFlop_Simulation`).  
3. Add Verilog source files for each flip-flop (SR, D, JK, T).  
4. Add a testbench file to verify all flip-flops.  
5. Run **Behavioral Simulation**.  
6. Observe waveforms of inputs and outputs for each flip-flop.  
7. Verify that outputs match the truth table.  
8. Save results and capture simulation screenshots.

---

## VERILOG CODE

### SR Flip-Flop (Non Blocking)
```verilog
module srFlipFlop (s,r,clk,rst,out);
input s, r, clk, rst;
output reg out ;
always @ (posedge clk)
begin 
if (rst)
    out <= 1'b0;
else if (s & ~r)
    out <= 1'b1;
else if (~s & r)
    out <= 1'b0;
else 
    out <= 1'bx;
end
endmodule
```
### SR Flip-Flop Test bench 
```verilog
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


```
#### SIMULATION OUTPUT

<img width="1919" height="1079" alt="image" src="https://github.com/user-attachments/assets/3304ee88-c7ad-4b02-af67-3c639619341a" />
---

### JK Flip-Flop (Non Blocking)
```verilog
module jkFlipFlop (clk,rst,j,k,out);
input clk, rst, j,k;
output reg out;
always @(posedge clk)
begin
    if (rst)
        out <= 1'b0;
    else if (j & ~k)
        out <= 1'b1;
    else if (~j & k)
        out <= 1'b0;
    else
        out <= ~out;
end
endmodule
```
### JK Flip-Flop Test bench 
```verilog
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


```
#### SIMULATION OUTPUT

<img width="1919" height="1079" alt="image" src="https://github.com/user-attachments/assets/005b1474-fae9-464e-b90a-d10c74de7490" />
---


### D Flip-Flop (Non Blocking)
```verilog
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
```
### D Flip-Flop Test bench 
```verilog
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



```

#### SIMULATION OUTPUT

<img width="1919" height="1079" alt="image" src="https://github.com/user-attachments/assets/c5e801a6-64f0-4cc4-a3d5-d9a2484be552" />
---

### T Flip-Flop (Non Blocking)
```verilog
module tFlipFlop(clk,rst,t,t_out);
input clk,rst,t;
output reg t_out;
always @(posedge clk)
begin   
if (rst)
    t_out <= 1'b0;
else if (t)
    t_out <= ~t_out;
else
    t_out <= t_out;
end
endmodule
```
### T Flip-Flop Test bench 
```verilog
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


```

#### SIMULATION OUTPUT

<img width="1919" height="1076" alt="image" src="https://github.com/user-attachments/assets/b567741c-4f28-461b-a455-d8a9f1a74471" />

---

### RESULT

All flip-flops (SR, D, JK, T) were successfully simulated using Non blocking statements in Verilog HDL.
The outputs matched the expected truth table values, demonstrating correct sequential behavior.
