`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/01/2022 07:57:39 PM
// Design Name: 
// Module Name: Subtraction
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


module Subtraction(
input signed [7:0] A,B,
output reg signed [7:0] S,
output reg flag
    );
wire signed [7:0]temp; 
assign temp = A-B;
always@(*)begin
if(temp<0)begin
S=(temp^-1)+1;
flag=1;
end
else
begin
S=temp;
flag=0;
end
end
endmodule
