# 50.002 1D Part 1: Mini Hardware Project

SUTD ISTD 2020 Computation Structures Mini Hardware Project: 1-Bit Full Adder & FPGA Tester.

Team 03-2:

- James Raphael Tiovalen
- Ng Yu Yan
- Jodi Tan Kai Yu
- Cheow Wei Da Nicholas
- Sun Kairan

[Poster](poster.pdf) and [schematics](schematics/schematics.png) are included in this repository. You can watch our video [here](https://youtu.be/cUwy_Xbg1K8).

---

For the FPGA Tester, we are using the standard library's `io.acf` provided by Xilinx Vivado, so we do not need to define any custom `.acf` file(s).

To start testing the 1-Bit Full Adder, connect the circuit to the provided VDD (+3.3 Volts) and GND on the custom-made SUTD ISTD Alchitry Br PCB board (any bank). And then, connect the output Sum Bit wire to B42 and output Carry-Out Bit wire to B43. Turn off the switches on the Alchitry IO board for `io_dip[2][2:0]` and `io_dip[1][1:0]`. `io_led[2][2:0]` will serve as input LEDs (thus indicating the values of A, B and C_in) and `io_led[1][1:0]` will serve as output LEDs (thus indicating the values of S and C_out).

There are 2 modes of testing:

- Manual

  Ensure that `io_dip[0][0]` is turned off (switched to LOW). We utilize the 1-Bit Full Adder's own DIP switch (in its own circuit) for manual mode. Connect the input wires A, B and Carry-In to pins A33, A31 and A30 respectively. Power up the FPGA or press the Reset button on the Alchitry Au board. Manually turn off or on the switch on the 1-Bit Full Adder circuit. The input LEDs on the FPGA should correspond to the output LEDs. If so, press the CENTER button on the IO Shield to check the result (it will display two dots  in the middle). If successful, the circulating animation will also remain since we are still in testing mode. If the check fails, the 4 7-segment displays will show a "FAIL". Once you have gone through all 8 test cases, press the UP button on the IO Shield to finish the manual checking test. It will show a "PASS" if you managed to not "FAIL" any test cases.

- Automatic

  Ensure that `io_dip[0][0]` is turned on (switched to HIGH). We utilize the FPGA's internal circuitry to send clock-governed signals to the external 1-Bit Full Adder circuit. Connect the input wires A, B and Carry-In to pins A18, A20 and A21 respectively. Also ensure that ALL of the 4 switches on the DIP switch on the 1-Bit Full Adder circuit is switched off (or else, the automatic check will fail since the signals would be overridden by the in-circuit switch). Power up the FPGA or press the Reset button on the Alchitry Au board. The code will cycle through all 8 entries of the truth table. Wait for the result to be shown on the 4 7-segment displays, which is either a "FAIL" or a "PASS".