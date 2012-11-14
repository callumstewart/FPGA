`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:37:56 11/14/2012
// Design Name:   Fs
// Module Name:   C:/Users/Callum/Desktop/FPGA/TestFs/testFs.v
// Project Name:  TestFs
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Fs
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testFs;

	// Inputs
	reg ack;
	reg reset;

	// Outputs
	wire bit0;
	wire bit1;
	wire A;
	wire B;

	// Instantiate the Unit Under Test (UUT)
	Fs uut (
		.ack(ack), 
		.reset(reset), 
		.bit0(bit0), 
		.bit1(bit1), 
		.A(A), 
		.B(B)
	);

	initial begin
		// Initialize Inputs
		ack = 0;
		reset = 0;

		// Wait 100 ns for global reset to finish
		#100;
		reset = 1;
	
		#100;
		ack = 1;
		 #100;
		 ack = 0;
		 #100;
		 ack = 1;
		 #100;
		 ack = 0;
		 #100;
		// Add stimulus here

	end
      
endmodule

