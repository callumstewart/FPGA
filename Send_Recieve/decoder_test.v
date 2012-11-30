`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   05:56:06 11/21/2012
// Design Name:   Output
// Module Name:   C:/Users/Callum/Desktop/FPGA/Send_Recieve/decoder_test.v
// Project Name:  Send_Recieve
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Output
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module decoder_test;

	// Inputs
	reg Fd;
	reg Fs;
	reg Fe;
	reg X0;
	reg One;
	reg Zero;

	// Outputs
	wire Fs_ack;
	wire Fe_ack;
	wire Fd_ack;
	wire X0_ack;
	wire one_ack;
	wire zero_ack;
	wire Ch1_Up;
	wire Ch1_Down;
	wire Ch2_Up;
	wire Ch2_Down;

	// Instantiate the Unit Under Test (UUT)
	Output uut (
		.Fd(Fd), 
		.Fs(Fs), 
		.Fe(Fe), 
		.X0(X0), 
		.One(One), 
		.Zero(Zero), 
		.Fs_ack(Fs_ack), 
		.Fe_ack(Fe_ack), 
		.Fd_ack(Fd_ack), 
		.X0_ack(X0_ack), 
		.one_ack(one_ack), 
		.zero_ack(zero_ack), 
		.Ch1_Up(Ch1_Up), 
		.Ch1_Down(Ch1_Down), 
		.Ch2_Up(Ch2_Up), 
		.Ch2_Down(Ch2_Down)
	);

	initial begin
		// Initialize Inputs
		Fd = 0;
		Fs = 0;
		Fe = 0;
		X0 = 0;
		One = 0;
		Zero = 0;

		// Wait 100 ns for global reset to finish
		#100;
      Fs = 1;
		#100;
		Fs=0;
		#100;
		One = 1;
		#100;
		One= 0;
		#100;
		X0 = 1;
		#100;
		X0 = 0;
		#100;
		Zero = 1;
		#100;
		Zero = 0;
		#100;
		Fe = 1;
		#200;
		// Add stimulus here

	end
      
endmodule

