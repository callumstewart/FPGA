`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:22:17 11/20/2012
// Design Name:   Reciever
// Module Name:   C:/Users/Callum/Desktop/FPGA/TestReciever/TestReciever.v
// Project Name:  TestReciever
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Reciever
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TestReciever;

	// Inputs
	reg reset;
	reg ZERO_IN;
	reg ONE_IN;
	reg ONE_ACK;
	reg ZERO_ACK;
	reg FS_ACK;
	reg FE_ACK;
	reg X0_ACK;
	reg FD_ACK;

	// Outputs
	wire ACK;
	wire Fs;
	wire Fe;
	wire Fd;
	wire X0;
	wire ZERO_OUT;
	wire ONE_OUT;
	wire A;
	wire B;
	wire C;
	wire D;
	wire E;

	// Instantiate the Unit Under Test (UUT)
	Reciever uut (
		.reset(reset), 
		.ZERO_IN(ZERO_IN), 
		.ONE_IN(ONE_IN), 
		.ONE_ACK(ONE_ACK), 
		.ZERO_ACK(ZERO_ACK), 
		.FS_ACK(FS_ACK), 
		.FE_ACK(FE_ACK), 
		.X0_ACK(X0_ACK), 
		.FD_ACK(FD_ACK), 
		.ACK(ACK), 
		.Fs(Fs), 
		.Fe(Fe), 
		.Fd(Fd), 
		.X0(X0), 
		.ZERO_OUT(ZERO_OUT), 
		.ONE_OUT(ONE_OUT), 
		.A(A), 
		.B(B), 
		.C(C), 
		.D(D), 
		.E(E)
	);

	initial begin
		// Initialize Inputs
		reset = 0;
		ZERO_IN = 0;
		ONE_IN = 0;
		ONE_ACK = 0;
		ZERO_ACK = 0;
		FS_ACK = 0;
		FE_ACK = 0;
		X0_ACK = 0;
		FD_ACK = 0;

		// Wait 100 ns for global reset to finish
		#100;
      reset = 1;
		
		
		ZERO_IN = 1;
		#100;
		ZERO_IN = 0;
		#100;
		ZERO_ACK = 1;
		#100;
		ZERO_ACK = 0;
		#200;
		
		
		
		ZERO_IN = 1;
		#100;
		ONE_IN = 1;
		#100;
		ONE_IN = 0;
		#100;
	   ZERO_IN = 0;
		#100;
		FS_ACK = 1;
		#100;
		FS_ACK =0; 
		#200;
		
		
		ZERO_IN = 1;
		#100;
		ONE_IN = 1;
		#100;
		ZERO_IN = 0;
		#100;
		ONE_IN = 0;
		#100;
		X0_ACK = 1;
		#100;
		X0_ACK = 0;
		#200;
		
		
		
		ONE_IN = 1;
		#100;
		ZERO_IN = 1;
		#100;
		ONE_IN = 0;
		#100;
		ZERO_IN = 0;
		#100;
		FE_ACK = 1;
		#100;
		FE_ACK = 0;
		#200;
		
		ONE_IN = 1;
		#100;
		ZERO_IN = 1;
		#100;
		ZERO_IN = 0;
		#100;
		ONE_IN = 0;
		#100;
		FD_ACK = 1;
		#100;
		FD_ACK = 0;
		#200;
		
		ONE_IN = 1;
		#100;
		ONE_IN = 0;
		#100;
		ONE_ACK = 1;
		#100;
		ONE_ACK = 0;
	end
      
endmodule

