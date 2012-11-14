`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   02:50:06 11/14/2012
// Design Name:   DataPath
// Module Name:   C:/Users/Callum/Desktop/FPGA/testChannel/DataPathTest.v
// Project Name:  testChannel
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: DataPath
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module DataPathTest;

	// Inputs
	reg X0;
	reg Fe;
	reg Fs;
	reg Fd;
	reg nought;
	reg one;

	// Outputs
	wire ackt;
	wire bitt1;
	wire bitt2;

	// Instantiate the Unit Under Test (UUT)
	DataPath uut (
		.X0(X0), 
		.Fe(Fe), 
		.Fs(Fs), 
		.Fd(Fd), 
		.nought(nought), 
		.one(one), 
		.ackt(ackt), 
		.bitt1(bitt1), 
		.bitt2(bitt2)
	);

	initial begin
		// Initialize Inputs
		X0 = 0;
		Fe = 0;
		Fs = 0;
		Fd = 0;
		nought = 0;
		one = 0;

		// Wait 100 ns for global reset to finish
		#100;
        X0 = 1;
		  #10;
		  X0 = 0;
		  #400;
		  
		  Fs = 1;
		  #10;
		  Fs = 0;
		  #400;
		  
		  Fd = 1;
		  #10;
		  Fd = 0;
		  #400;
		  
		  Fe = 1;
		  #10;
		  Fe = 0;
		  #400;
		  
		  nought = 1;
		  #10;
		  nought = 0;
		  #400;
		  
		  one = 1;
		  #10;
		  one = 0;
		  #400;
		// Add stimulus here

	end
      
endmodule

