`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/01/2022 02:55:15 PM
// Design Name: 
// Module Name: increment
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


module increment(
input clk,
input rst,
input switch,
output  reg [3:0]out
    );
    
        reg push_f;
       reg push_sync;
      reg push_sync_f;
      wire push_edge;

       always@(posedge clk) begin
           push_f <= switch;
           push_sync <= push_f;    
       end
   
       always @(posedge clk, posedge rst) begin
       if (rst) begin
           push_sync_f <= 1'b0;
       end else begin
           push_sync_f <= push_sync;
           end
       end
     
      assign push_edge = push_sync & ~push_sync_f;
      
       always @(posedge clk, posedge rst)
       begin
       if(rst)begin
       out<=0;
       end
       else if (push_edge)
       begin
          if (out!=9)    
         out<=out+1;
          else
          out<=0;
          end
      else out <= out;
      end
      


endmodule
