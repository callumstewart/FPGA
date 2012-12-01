`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:21:09 11/30/2012
// Design Name:   OutputDecoder
// Module Name:   C:/Users/Callum/Desktop/FPGA/FinalAERProtocol/OutputDecoder_Test.v
// Project Name:  FinalAERProtocol
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: OutputDecoder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module OutputDecoder_Test;

	// Inputs
	reg Fs;
	reg X0;
	reg Zero;
	reg One;
	reg Fe;
	reg reset;

	// Outputs
	wire Fs_ack;
	wire X0_ack;
	wire Zero_ack;
	wire One_ack;
	wire Fe_ack;
	wire S0;
	wire S1;
	wire D0;
	wire D1;
	wire A;
	wire B;
	wire C;
	wire D;
	wire Ch1Up;
	wire Ch1Down;
	wire Ch2Up;
	wire Ch2Down;

	// Instantiate the Unit Under Test (UUT)
	OutputDecoder uut (
		.Fs(Fs), 
		.X0(X0), 
		.Zero(Zero), 
		.One(One), 
		.Fe(Fe), 
		.reset(reset), 
		.Fs_ack(Fs_ack), 
		.X0_ack(X0_ack), 
		.Zero_ack(Zero_ack), 
		.One_ack(One_ack), 
		.Fe_ack(Fe_ack), 
		.S0(S0), 
		.S1(S1), 
		.D0(D0), 
		.D1(D1), 
		.A(A), 
		.B(B), 
		.C(C), 
		.D(D), 
		.Ch1Up(Ch1Up), 
		.Ch1Down(Ch1Down), 
		.Ch2Up(Ch2Up), 
		.Ch2Down(Ch2Down)
	);

	initial begin
		// Initialize Inputs
		Fs = 0;
		X0 = 0;
		Zero = 0;
		One = 0;
		Fe = 0;
		reset = 0;

		// Wait 100 ns for global reset to finish
		#100;
		reset = 1;
		#100;
		Fs = 1;
		#100;
		One = 1;
		Fs = 0;
		#100;
		One = 0;
		
		X0 = 1;
				
		#100;
		One = 1;
		X0 = 0;
		#100;
		Fe = 1;
		One = 0;
		#100
		Fe = 0;
		#300;
		
        
		// Add stimulus here

	end
      
endmodule

