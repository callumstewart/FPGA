`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:01:31 09/24/2012
// Design Name:   Or
// Module Name:   C:/Users/Callum/Desktop/FPGA/test1/Or_Test.v
// Project Name:  test1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Or
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Or_Test;

	// Inputs
	reg A;
	reg B;

	// Outputs
	wire C;

	// Instantiate the Unit Under Test (UUT)
	Or uut (
		.A(A), 
		.B(B), 
		.C(C)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		
		#50  A = 1;
		#100 B = 1;
		#150 A = 0;
		#200 B = 0;
		#250 B = 1;
		
		

	end
      
endmodule

