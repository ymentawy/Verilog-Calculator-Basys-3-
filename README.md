# Verilog Calculator for Basys 3 FPGA

## Program Design

This Verilog program is designed to operate on a Basys 3 FPGA and functions as a calculator. It performs addition, subtraction, multiplication, and division operations on two 7-bit numbers ranging from 1 to 99. The program consists of several modules:

1. **Module Addition:**
   - Inputs: `input1`, `input2` (7 bits each)
   - Outputs: `result` (8 bits)
   - Additional Inputs: `reset`, `clock`

2. **Module Subtraction:**
   - Inputs: `input1`, `input2` (7 bits each)
   - Outputs: `result` (7 bits)
   - Additional Inputs: `reset`, `clock`
   - Note: The result is the difference between `input1` and `input2`.

3. **Module Multiplication:**
   - Inputs: `multiplier`, `multiplicand` (7 bits each)
   - Output: `result` (14 bits)
   - Note: The multiplication module produces a 14-bit result.

4. **Module Division:**
   - Inputs: `numerator`, `denominator` (7 bits each)
   - Output: `result` (approximated)
   - Note: The division module outputs an approximated result.

5. **Seven Segments Module:**
   - Displays digits 0-9 on the FPGA board.
   - Utilizes a middle dot for adjusting the original number.

6. **Clock Divider Module:**
   - Outputs a clock signal based on a specified parameter.
   - Adjusts the frequency of the built-in clock on the FPGA board to the desired frequency.

7. **Increment Module:**
   - Inputs: `switch` (single-bit input), `clock`, `reset`
   - Output: `out` (4 bits)
   - Increments the counter on the FPGA board when the switch button is used.

8. **Calculator Module (Main):**
   - Inputs: `clock`, increment switches, operation switches, and reset.
   - Outputs: Seven segments display.
   - Utilizes clock divider for clock adjustment.
   - Uses increment module to handle counter incrementing.
   - Performs addition, subtraction, multiplication, or division based on the selected operation.

## Usage

1. **Hardware Setup:**
   - Connect the Basys 3 FPGA to the appropriate peripherals.
   - Ensure proper power supply.

2. **Programming FPGA:**
   - Load the compiled bitstream onto the FPGA.

3. **Operation:**
   - Use the increment switches to adjust the input numbers.
   - Select the operation using the operation switches.
   - Observe the results on the seven-segment display.

## Dependencies

Ensure the correct constraints and dependencies for the Basys 3 FPGA are met.

