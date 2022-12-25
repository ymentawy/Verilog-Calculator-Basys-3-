module SevenSegDecWithEn(
input [1:0] sw,
input [3:0] X,
output reg [0:6] segments,
output reg[3:0] anode_active);
always @(X) 
begin
 case(X)
0: segments = 7'b0000001;//0,O
1: segments = 7'b1001111;
2: segments = 7'b0010010;
3: segments = 7'b0000110;
4: segments = 7'b1001100;
5: segments = 7'b0100100;
6: segments = 7'b0100000;
7: segments = 7'b0001111;
8: segments = 7'b0000000;
9: segments = 7'b0000100;
10: segments = 7'b1111110;//-
11: segments = 7'b0111001;//r
14: segments = 7'b0110000;//E


/*10: segments = 7'b0001000;
11: segments = 7'b1100000;
12: segments = 7'b0110001;
13: segments = 7'b1000010;
14: segments = 7'b0110000;
15: segments = 7'b0111000;*/
endcase
case(sw)
0:anode_active=4'b0111;
1:anode_active=4'b1011;
2:anode_active=4'b1101;
3:anode_active=4'b1110;
endcase
end
endmodule