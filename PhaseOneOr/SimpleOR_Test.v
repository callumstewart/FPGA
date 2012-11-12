`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:52:49 11/12/2012
// Design Name:   SimpleOR
// Module Name:   C:/Users/Callum/Desktop/FPGA/PhaseOneOr/SimpleOR_Test.v
// Project Name:  PhaseOneOr
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: SimpleOR
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module SimpleOR_Test;

	// Inputs
	reg A_UP;
	reg A_DOWN;
	reg B_UP;
	reg B_DOWN;

	// Outputs
	wire CH_OUT;

	// Instantiate the Unit Under Test (UUT)
	SimpleOR uut (
		.A_UP(A_UP), 
		.A_DOWN(A_DOWN), 
		.B_UP(B_UP), 
		.B_DOWN(B_DOWN), 
		.CH_OUT(CH_OUT)
	);

	initial begin
		// Initialize Inputs
		A_UP = 0;
		A_DOWN = 0;
		B_UP = 0;
		B_DOWN = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		#100;
		A_UP = 1;
		A_DOWN = 0;
		#100;
		A_UP = 0;
		A_DOWN = 0;
		#10
		A_UP = 0;
		A_DOWN = 1;
		#100;
		A_UP = 0;
		A_DOWN = 0;
		#10
		A_UP = 1;
		A_DOWN = 0;
		#100;
		A_UP = 0;
		A_DOWN = 0;
		#10
		A_UP = 0;
		A_DOWN = 1;
		#100;
		A_UP = 0;
		A_DOWN = 0;
		#10
		A_UP = 1;
		A_DOWN = 0;
		#100;
		A_UP = 0;
		A_DOWN = 0;
		#10
		A_UP = 0;
		A_DOWN = 1;
		#100;
		A_UP = 0;
		A_DOWN = 0;
		#10
		A_UP = 1;
		A_DOWN = 0;
      #100; 
		// Add stimulus here

	end
      
endmodule

