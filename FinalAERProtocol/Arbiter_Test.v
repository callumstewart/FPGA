`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:22:11 11/30/2012
// Design Name:   Arbiter
// Module Name:   C:/Users/Callum/Desktop/FPGA/FinalAERProtocol/Arbiter_Test.v
// Project Name:  FinalAERProtocol
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Arbiter
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Arbiter_Test;

	// Inputs
	reg Ch1Up_In;
	reg Ch1Down_In;
	reg Ch2Up_In;
	reg Ch2Down_In;
	reg Fs_sen;
	reg Fe_d;
	reg reset;

	// Outputs
	wire Ch1;
	wire Ch2;
	wire Up;
	wire Down;
	wire go;

	// Instantiate the Unit Under Test (UUT)
	Arbiter uut (
		.Ch1Up_In(Ch1Up_In), 
		.Ch1Down_In(Ch1Down_In), 
		.Ch2Up_In(Ch2Up_In), 
		.Ch2Down_In(Ch2Down_In), 
		.Fs_sen(Fs_sen), 
		.Fe_d(Fe_d), 
		.reset(reset), 
		.Ch1(Ch1), 
		.Ch2(Ch2), 
		.Up(Up), 
		.Down(Down), 
		.go(go)
	);

	initial begin
		// Initialize Inputs
		Ch1Up_In = 0;
		Ch1Down_In = 0;
		Ch2Up_In = 0;
		Ch2Down_In = 0;
		Fs_sen = 0;
		Fe_d = 0;
		reset = 0;

		// Wait 100 ns for global reset to finish
		#100;
		reset = 1;
		#100;
		Ch2Down_In = 1;
		#100;
		Ch1Down_In = 1;
		Fs_sen = 1;
		#100;
		Fs_sen = 0;
		Fe_d = 1;
		#100;
		Fe_d = 0;
		Ch2Down_In = 0;
		#100;
		Fs_sen = 1;
		#100;
		Fe_d = 1;
		#100;
		Ch1Down_In = 0;
		#300;
        
		// Add stimulus here

	end
      
endmodule

