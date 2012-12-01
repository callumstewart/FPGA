`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:22:11 11/30/2012
// Design Name:   AER_Output
// Module Name:   C:/Users/Callum/Desktop/FPGA/FinalAERProtocol/AER_Output_Test.v
// Project Name:  FinalAERProtocol
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: AER_Output
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module AER_Output_Test;

	// Inputs
	reg Bit0;
	reg Bit1;
	reg reset;

	// Outputs
	wire ack;
	wire Ch1Up;
	wire Ch1Down;
	wire Ch2Up;
	wire Ch2Down;

	// Instantiate the Unit Under Test (UUT)
	AER_Output uut (
		.Bit0(Bit0), 
		.Bit1(Bit1), 
		.reset(reset), 
		.ack(ack), 
		.Ch1Up(Ch1Up), 
		.Ch1Down(Ch1Down), 
		.Ch2Up(Ch2Up), 
		.Ch2Down(Ch2Down)
	);

	initial begin
		// Initialize Inputs
		Bit0 = 0;
		Bit1 = 0;
		reset = 0;

		// Wait 100 ns for global reset to finish
		#100;
		reset = 1;
		#100;
		Bit0 = 1;
		#100;
		Bit1 = 1;
		#100;
		
		Bit0 = 0;
		#100;
		Bit1 = 0;
		#100;
		
		Bit1 = 1;
		#100;
		Bit1 = 0;
		#100;
		
		Bit0 = 1;
		#100;
		Bit1 = 1;
		#100;
		
		Bit1 = 0;
		#100;
		Bit0 = 0;
		#100;
		
		Bit0 = 1;
		#100;
		Bit0 = 0;
		#100;
		
		Bit1 = 1;
		#100;
		Bit0 = 1;
		#100;
		
		Bit0 = 0;
		#100;
		Bit1 = 0;
		#500;        
		
		/*
		// Add stimulus here





*/


		Bit0 = 1;
		#100;
		Bit1 = 1;
		#100;
		
		Bit0 = 0;
		#100;
		Bit1 = 0;
		#100;
		
		Bit0 = 1;
		#100;
		Bit0 = 0;
		#100;
		
		Bit0 = 1;
		#100;
		Bit1 = 1;
		#100;
		
		Bit1 = 0;
		#100;
		Bit0 = 0;
		#100;
		
		Bit0 = 1;
		#100;
		Bit0 = 0;
		#100;
		
		Bit1 = 1;
		#100;
		Bit0 = 1;
		#100;
		
		Bit0 = 0;
		#100;
		Bit1 = 0;
		#100;   
        
		// Add stimulus here

	end
      
endmodule

