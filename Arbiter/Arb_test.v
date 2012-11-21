`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   02:06:41 11/21/2012
// Design Name:   Cascoded_Tree_Arbiter
// Module Name:   C:/Users/Callum/Desktop/FPGA/Arbiter/Arb_test.v
// Project Name:  Arbiter
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Cascoded_Tree_Arbiter
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Arb_test;

	// Inputs
	reg R1;
	reg R2;

	// Outputs
	wire A1;
	wire A2;

	// Instantiate the Unit Under Test (UUT)
	Cascoded_Tree_Arbiter uut (
		.R1(R1), 
		.R2(R2), 
		.A1(A1), 
		.A2(A2)
	);

	initial begin
		// Initialize Inputs
		R1 = 0;
		R2 = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		R1 = 1;
		R2 = 1;
        
		  
		#100;
		
		R1 = 0;
		 #100;
		// Add stimulus here

	end
      
endmodule

