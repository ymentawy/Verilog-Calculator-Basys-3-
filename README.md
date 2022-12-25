# Verilog-Calculator-Basys-3-
It is a calculator using Verilog HDL to be used on a FPGA(Basys 3)
Program Design:

This program calculates two numbers from 1 up to 99 and whether to add, subtract, multiply, or divide them. The program uses several modules:

1-	 Module Addition. This module takes two inputs of 7 bits and an output of 8 bits. It also takes the reset and the clock that has a constraint file. The addition is assigned using the input 1 “+” input 2.

2-	Module subtraction. This module takes an input of 7 bits and an output of 7 bits (input [6:0]). It also takes the input reset and the clock. The subtraction is assigned using the input 1 “-” input 2. It is always the case when the first number subtracts the second. For example, if the first number is 80 and the second is 82, so the result will be = -2

3-	Module Multiplication: this module takes two inputs: the multiplier and the multiplicand. Both are 7 bits inputs. The output is a 14-bit (output [13:0] out). The result may vary from a 1-bit output to a 14-bit output.

4-	Module division: this module takes up to 7-bit inputs: the numerator and the denominator. The output will always be approximated. For example, if the inputs are 23 and 13. So 23/13= 1.7777, the result will be approximated to 2


5-	Seven segments module: 

•	It displays the seven segments on the FPGA board from 0-9. Also, the middle dot is instantiated in the module that appears when adjusting the original number as a barrier.
•	The seven segments are called one time in the Calculator module. The output is changed more than four times according to the cases initialized.

6-	Clock Divider module
•	It outputs the clock based on the value of the parameter. It adjusts the frequency value of the built-in clock inside the FBGA board (100MHZ) to the desired frequency based on a parameter.

7-	Increment Module:
•	It takes an input called “switch,” a switch, a clock, and a reset. It also takes an output register of 4 bits called out. 
•	This module increments the counter on the FPGA board when the switch button is used.






8-	 The last Main module is called the “Calculator,” This module takes an input clock, the four switches for incrementing the digits, the four switches for the operations, the output of the seven segments display, and reset.

-	Four switch inputs are used to increment the counter on the FPGA board. 
-	It also takes input a,d,m,s, subtraction, addition, multiplication, and division operations. 
-	It also uses the clock divider module.
-	The seven segments are called there to execute the seven segments display.


