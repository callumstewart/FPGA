`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:23:32 11/15/2012
// Design Name:   FsRefined
// Module Name:   C:/Users/Callum/Desktop/FPGA/TestFs/RefinedTest.v
// Project Name:  TestFs
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: FsRefined
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module RefinedTest;

	// Inputs
	reg reset;
	reg ack;
	reg senack;
	reg Fs;
	// Outputs
	wire A;
	wire B;
	wire C;
	wire cclear;
	wire Dt;
	wire bit0;
	wire bit1;

	// Bidirs
	

	// Instantiate the Unit Under Test (UUT)
	FsRefined uut (
		.A(A), 
		.B(B), 
		.C(C), 
		.reset(reset), 
		.ack(ack), 
		.senack(senack), 
		.cclear(cclear), 
		.Fs(Fs), 
		.Dt(Dt), 
		.bit0(bit0), 
		.bit1(bit1)
	);

	initial begin
		// Initialize Inputs
		reset = 0;
		ack = 0;
		senack = 0;
		Fs = 0;

		// Wait 100 ns for global reset to finish
		#100;
		#100;
		reset = 1;
		#100;
      Fs = 1;
		#100;
		ack =1;
		Fs=0;
		#100;
		ack = 0;
		#100;
		ack = 1;
		#100;
		ack = 0;
		reset = 0;
		#100;
		ack =1;
		#100;
		//reset = 1;
		ack = 0;
		#100;
		ack = 1;
		#100;
		ack = 0;
		#100;
		senack = 1;
		#100;
        
		// Add stimulus here

	end
      
endmodule

