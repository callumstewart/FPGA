`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   02:05:28 11/15/2012
// Design Name:   Nought
// Module Name:   C:/Users/Callum/Desktop/FPGA/TestFs/NoughtTest.v
// Project Name:  TestFs
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Nought
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module NoughtTest;

	// Inputs
	reg ack;
	reg reset;
	reg senack;
	reg nought;

	// Outputs
	wire A;
	wire B;
	wire Cclear;
	wire Dt;
	wire bit0;

	// Instantiate the Unit Under Test (UUT)
	Nought uut (
		.ack(ack), 
		.reset(reset), 
		.senack(senack), 
		.nought(nought), 
		.A(A), 
		.B(B), 
		.Cclear(Cclear), 
		.Dt(Dt), 
		.bit0(bit0)
	);

	initial begin
		// Initialize Inputs
		ack = 0;
		reset = 0;
		senack = 0;
		nought = 0;

		// Wait 100 ns for global reset to finish
		#100;
		#100;
		reset = 1;
		#100;
      nought = 1;
		#100;
		ack =1;
		nought = 0;
		#100;
		ack = 0;
		#100;
		ack = 1;
		#100;
		ack = 0;
		#100;
		ack =1;
		#100;
		ack = 0;
		#100;
		ack = 1;
		#100;
		ack = 0;
		#100;
		senack = 1;
		#100;
       	ack = 1;
		#100;
		ack = 0;
		#100;
		ack =1;
		#100;
		ack = 0;
		#100;
		ack = 1;
		#100;
		ack = 0;
		// Add stimulus here

	end
      
endmodule

