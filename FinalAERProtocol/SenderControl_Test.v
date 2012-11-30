`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:30:59 11/29/2012
// Design Name:   SenderControl
// Module Name:   C:/Users/Callum/Desktop/FPGA/FinalAERProtocol/SenderControl_Test.v
// Project Name:  FinalAERProtocol
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: SenderControl
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module SenderControl_Test;

	// Inputs
	reg go;
	reg Fs_d;
	reg Ch1;
	reg Ch2;
	reg Up;
	reg Down;
	reg X0_d;
	reg Zero_d;
	reg One_d;
	reg Fe_d;
	reg reset;

	// Outputs
	wire Fs;
	wire Fs_sen;
	wire Zero;
	wire Zero_sen;
	wire One;
	wire One_sen;
	wire X0;
	wire X0_sen;
	wire Fe;
	wire Fe_sen;
	wire A;
	wire B;
	wire C;
	wire D;
	wire E;

	// Instantiate the Unit Under Test (UUT)
	SenderControl uut (
		.go(go), 
		.Fs_d(Fs_d), 
		.Ch1(Ch1), 
		.Ch2(Ch2), 
		.Up(Up), 
		.Down(Down), 
		.X0_d(X0_d), 
		.Zero_d(Zero_d), 
		.One_d(One_d), 
		.Fe_d(Fe_d), 
		.reset(reset), 
		.Fs(Fs), 
		.Fs_sen(Fs_sen), 
		.Zero(Zero), 
		.Zero_sen(Zero_sen), 
		.One(One), 
		.One_sen(One_sen), 
		.X0(X0), 
		.X0_sen(X0_sen), 
		.Fe(Fe), 
		.Fe_sen(Fe_sen), 
		.A(A), 
		.B(B), 
		.C(C), 
		.D(D), 
		.E(E)
	);

	initial begin
		// Initialize Inputs
		go = 0;
		Fs_d = 0;
		Ch1 = 0;
		Ch2 = 0;
		Up = 0;
		Down = 0;
		X0_d = 0;
		Zero_d = 0;
		One_d = 0;
		Fe_d = 0;
		reset = 0;

		// Wait 100 ns for global reset to finish
		#100;
		reset = 1;
		Ch2 = 1;
		Up = 1;
		#100;
		go = 1;
		#100;
		go = 0;
		#100;
		Fs_d = 1;
		#100
		Fs_d = 0;
		#100
		Zero_d = 1;
		#100;
		Zero_d = 0;
		#100;
		X0_d = 1;
		#100;
		X0_d = 0;
		#100;
		One_d = 1;
		#100;
		One_d = 0;
		#100;
		Fe_d = 1;
		#100;
		Fe_d = 0;
		#300;
        
		// Add stimulus here

	end
      
endmodule

