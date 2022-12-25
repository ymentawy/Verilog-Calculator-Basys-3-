`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/01/2022 08:02:26 PM
// Design Name: 
// Module Name: Devision
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


module Devision(
input [6:0] A,B,
output reg [7:0] S,
output reg flag
    );
    reg [7:0]temp; 
    wire [7:0] t1;
    assign t1 = A/B;
always@(*)begin
if(B==0)begin
S=0;
flag=1;
end
else
begin
if((A%B)>(B/2))
temp=t1+1;
else
temp=t1;
S=temp;
flag=0;
end
end
endmodule