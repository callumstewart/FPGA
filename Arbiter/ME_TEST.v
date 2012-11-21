`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   01:41:54 11/21/2012
// Design Name:   ME
// Module Name:   C:/Users/Callum/Desktop/FPGA/Arbiter/ME_TEST.v
// Project Name:  Arbiter
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ME
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ME_TEST;

	// Inputs
	reg Req1;
	reg Req2;

	// Outputs
	wire G1;
	wire G2;

	// Instantiate the Unit Under Test (UUT)
	ME uut (
		.Req1(Req1), 
		.Req2(Req2), 
		.G1(G1), 
		.G2(G2)
	);

	initial begin
		// Initialize Inputs
		Req1 = 0;
		Req2 = 0;

		// Wait 100 ns for global reset to finish
		#100;
			Req2 = 1;
		Req1 = 1;
		
	
		#100;
		Req2 = 0;
		#100;
		
        
		// Add stimulus here

	end
      
endmodule

