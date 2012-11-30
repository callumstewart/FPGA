`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:14:02 11/29/2012
// Design Name:   Sender
// Module Name:   C:/Users/Callum/Desktop/FPGA/FinalAERProtocol/Sender_Test.v
// Project Name:  FinalAERProtocol
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Sender
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Sender_Test;

	// Inputs
	reg go;
	reg reset;
	reg Ch1;
	reg Ch2;
	reg Up;
	reg Down;
	reg ack;

	// Outputs
	wire bit0;
	wire bit1;

	// Instantiate the Unit Under Test (UUT)
	Sender uut (
		.go(go), 
		.reset(reset), 
		.Ch1(Ch1), 
		.Ch2(Ch2), 
		.Up(Up), 
		.Down(Down), 
		.ack(ack), 
		.bit0(bit0), 
		.bit1(bit1)
	);

	initial begin
		// Initialize Inputs
		go = 0;
		reset = 0;
		Ch1 = 0;
		Ch2 = 0;
		Up = 0;
		Down = 0;
		ack = 0;

		// Wait 100 ns for global reset to finish
		#100;
		reset = 1;
		#100;
		Ch2 = 1;
		Down = 1;
		#100;
		go = 1;
		
		#100;
		go = 0;
		ack = 1;
		#100;
		ack = 0;

		#100;
		ack = 1;
		#100;
		ack = 0;
		
		#100;
		ack = 1;
		#100;
		ack = 0;
		
		#100;
		ack = 1;
		#100;
		ack = 0;
		
		#100;
		ack = 1;
		#100;
		ack = 0;
		
		#100;
		ack = 1;
		#100;
		ack = 0;
		
		#100;
		ack = 1;
		#100;
		ack = 0;
		
		#100;
		ack = 1;
		#100;
		ack = 0;
		
		#100;
		ack = 1;
		#100;
		ack = 0;
		go = 0;
		#100;
		ack = 1;
		#100;
		ack = 0;
		
		#100;
		ack = 1;
		#100;
		ack = 0;
		
		#100;
		ack = 1;
		#100;
		ack = 0;
		
		
		#100;
		ack = 1;
		#100;
		ack = 0;
		
		#100;
		ack = 1;
		#100;
		ack = 0;
		
		#100;
		ack = 1;
		#100;
		ack = 0;
		
		#100;
		ack = 1;
		#100;
		ack = 0;
		
		#100;
		ack = 1;
		#100;
		ack = 0;
		
		#100;
		ack = 1;
		#100;
		ack = 0;
		
		#100;
		ack = 1;
		#100;
		ack = 0;
		
		#100;
		ack = 1;
		#100;
		ack = 0;
		
		#100;
		ack = 1;
		#100;
		ack = 0;
		
		#100;
		ack = 1;
		#100;
		ack = 0;
		
		#100;
		ack = 1;
		#100;
		ack = 0;
		
        
		// Add stimulus here

	end
      
endmodule

