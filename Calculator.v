`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 12/01/2022 03:46:03 PM
// Design Name:
// Module Name: Calculator
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

module Calculator(
input clk,
input rst,
input b1,b2,b3,b4,a,m,s,d,B9,
output [0:6] segments,
output [3:0]anode_active,
output reg dot
    );

//reg [3:0] state1, state2, state3, state4;
wire [3:0] co1,co2,co3,co4;
wire [6:0] num1,num2;
wire [7:0] s1,sub,div;
wire [13:0] mul;
reg [3:0] count1;
wire clk_out;
wire[1:0] cout;
wire[2:0] cout1;
wire fsub;
wire fdiv;
reg [2:0] state;
CD#(250000) cd(clk,rst,clk_out);
increment i1 (clk_out,rst,b1,co1);
increment i2 (clk_out,rst,b2,co2);
increment i3 (clk_out,rst,b3,co3);
increment i4 (clk_out,rst,b4,co4);
Form f1(co1,co2,co3,co4,num1,num2);
Addition summation(num1,num2,s1);
Subtraction subtr(num1,num2,sub,fsub);
Devision DeV(num1,num2,div,fdiv);
Multiplication MUl(num1,num2,mul);
counterModN#(2,4) count(clk_out,rst,1,cout);
SevenSegDecWithEn clock1(cout,count1,segments,anode_active);
always @( a, s, m, d, B9)
begin
if(!B9)begin
if(a)
begin
case(cout)
3: count1 = s1%10;
2: count1 = (s1/10)%10;
1: count1 = (s1/100)%10;
0: count1 = (s1/1000)%10;
endcase
dot=1;
end
else if(s)
begin
if(!fsub)
begin
case(cout)
3: count1 = sub%10;
2: count1 = (sub/10)%10;
1: count1 = (sub/100)%10;
0: count1 = (sub/1000)%10;
endcase
dot=1;
end
else
begin
case(cout)
3: count1 = sub%10;
2: count1 = (sub/10)%10;
1: count1 = 10;
0: count1 = (sub/1000)%10;
endcase
dot=1;
end
end
else if(m)
begin
case(cout)
3: count1 = mul%10;
2: count1 = (mul/10)%10;
1: count1 = (mul/100)%10;
0: count1 = (mul/1000)%10;
endcase
dot=1;
end
else if(d)//case Division
begin
if(!fdiv)
begin
case(cout)
3: count1 = div%10;
2: count1 = (div/10)%10;
1: count1 = (div/100)%10;
0: count1 = (div/1000)%10;
endcase
dot=1;
end
else
begin
case(cout)
0: count1 = 14;
1: count1 = 11;
2: count1 = 0;
3: count1 = 11;
endcase
dot=1;
end
end
else
begin
case(cout)
0:begin count1 = co1;
dot=1;
end
1:begin count1 = co2;
dot=0;
end
2:begin count1 = co3;
dot=1;
end
3:begin count1 = co4;
dot=1;
end
endcase
end
end
else
begin
case(cout)
0:begin count1 = co1;
dot=1;
end
1:begin count1 = co2;
dot=0;
end
2:begin count1 = co3;
dot=1;
end
3:begin count1 = co4;
dot=1;
end
endcase
end
end

endmodule
