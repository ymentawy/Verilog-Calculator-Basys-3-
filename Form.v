`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/01/2022 06:24:02 PM
// Design Name: 
// Module Name: Form
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


module Form(
input [3:0] c1,c2,c3,c4,
output [7:0]num1,num2
    );
  assign num1=(c1*10)+c2;
  assign num2=(c3*10)+c4;
endmodule
