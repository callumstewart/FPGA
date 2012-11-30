`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   01:53:46 11/30/2012
// Design Name:   AER_Input
// Module Name:   C:/Users/Callum/Desktop/FPGA/FinalAERProtocol/AER_Input_Test.v
// Project Name:  FinalAERProtocol
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: AER_Input
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module AER_Input_Test;

	// Inputs
	reg Ch1Up;
	reg Ch1Down;
	reg Ch2Up;
	reg Ch2Down;
	reg ack;
	reg reset;

	// Outputs
	wire bit0;
	wire bit1;

	// Instantiate the Unit Under Test (UUT)
	AER_Input uut (
		.Ch1Up(Ch1Up), 
		.Ch1Down(Ch1Down), 
		.Ch2Up(Ch2Up), 
		.Ch2Down(Ch2Down), 
		.ack(ack), 
		.reset(reset), 
		.bit0(bit0), 
		.bit1(bit1)
	);

	initial begin
		// Initialize Inputs
		Ch1Up = 0;
		Ch1Down = 0;
		Ch2Up = 0;
		Ch2Down = 0;
		ack = 0;
		reset = 0;

		// Wait 100 ns for global reset to finish
		#100;
		reset = 1;
		Ch1Up = 1;
		#10;
		Ch2Down = 1;
		#100;
		
		ack = 1;
		#10;
		ack = 0;
		#10;
		Ch1Up = 0;
		ack = 1;
		#10;
		ack = 0;
		#10;
		Ch2Down = 0;
		ack = 1;
		#10;
		ack = 0;
		#10;
		
		ack = 1;
		#10;
		ack = 0;
		#10;
		
		ack = 1;
		#10;
		ack = 0;
		#10;
		
		ack = 1;
		#10;
		ack = 0;
		#10;
		
		ack = 1;
		#10;
		ack = 0;
		#10;
		
		ack = 1;
		#10;
		ack = 0;
		#10;
		
		ack = 1;
		#10;
		ack = 0;
		#10;
		
		ack = 1;
		#10;
		ack = 0;
		#10;
		
		ack = 1;
		#10;
		ack = 0;
		#10;
		
		ack = 1;
		#10;
		ack = 0;
		#10;
		
		ack = 1;
		#10;
		ack = 0;
		#10;
		
		ack = 1;
		#10;
		ack = 0;
		#10;
		
		ack = 1;
		#10;
		ack = 0;
		#10;
		
		ack = 1;
		#10;
		ack = 0;
		#10;
		
		ack = 1;
		#10;
		ack = 0;
		#10;
		
		ack = 1;
		#10;
		ack = 0;
		#10;
		
		
			Ch1Up = 1;
		#10;
		Ch2Down = 1;
		#100;
		
		ack = 1;
		#10;
		ack = 0;
		#10;
		Ch2Up = 0;
		ack = 1;
		#10;
		ack = 0;
		#10;
		Ch1Down = 0;
		
		
			#10;
		ack = 0;
		#10;
		
		ack = 1;
		#10;
		ack = 0;
		#10;
		
		ack = 1;
		#10;
		ack = 0;
		#10;
		
		ack = 1;
		#10;
		ack = 0;
		#10;
		
		ack = 1;
		#10;
		ack = 0;
		#10;
		
		ack = 1;
		#10;
		ack = 0;
		#10;
		
		ack = 1;
		#10;
		ack = 0;
		#10;
		
		ack = 1;
		#10;
		ack = 0;
		#10;
		
		ack = 1;
		#10;
		ack = 0;
		#10;
		
		ack = 1;
		#10;
		ack = 0;
		#10;
		
		ack = 1;
		#10;
		ack = 0;
		#10;
		
		ack = 1;
		#10;
		ack = 0;
		#10;
		
		ack = 1;
		#10;
		ack = 0;
		#10;
		
		ack = 1;
		#10;
		ack = 0;
		#10;
		
		ack = 1;
		#10;
		ack = 0;
		#10;
		
		ack = 1;
		#10;
		ack = 0;
		#10;
        
		// Add stimulus here

	end
      
endmodule

