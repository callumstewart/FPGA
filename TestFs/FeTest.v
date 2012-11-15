`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   01:42:11 11/15/2012
// Design Name:   Fe
// Module Name:   C:/Users/Callum/Desktop/FPGA/TestFs/FeTest.v
// Project Name:  TestFs
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Fe
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module FeTest;

	// Inputs
	reg ack;
	reg Fe;
	reg senack;
	reg reset;

	// Outputs
	wire A;
	wire B;
	wire C;
	wire Cclear;
	wire Dt;
	wire bit0;
	wire bit1;

	// Instantiate the Unit Under Test (UUT)
	Fe uut (
		.ack(ack), 
		.Fe(Fe), 
		.senack(senack), 
		.reset(reset), 
		.A(A), 
		.B(B), 
		.C(C), 
		.Cclear(Cclear), 
		.Dt(Dt), 
		.bit0(bit0), 
		.bit1(bit1)
	);

	initial begin
		// Initialize Inputs
		ack = 0;
		Fe = 0;
		senack = 0;
		reset = 0;

		// Wait 100 ns for global reset to finish
		#100;
		#100;
		reset = 1;
		#100;
      Fe = 1;
		#100;
		ack =1;
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
        
		// Add stimulus here

	end
      
endmodule

