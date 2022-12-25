`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/01/2022 04:16:30 PM
// Design Name: 
// Module Name: counterModN
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


module counterModN#(parameter x=4,n=10) (
input clk,reset,en,
output reg [x-1:0] count);

always @(posedge clk,posedge reset)begin
    if(reset==1)
         count<=0;
    else if(en==1)begin
        if(count==n-1)
            count<=0;
        else
            count<=count+1;

    end
end
endmodule