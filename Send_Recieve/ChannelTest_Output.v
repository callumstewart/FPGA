`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   05:36:45 11/21/2012
// Design Name:   Channel
// Module Name:   C:/Users/Callum/Desktop/FPGA/Send_Recieve/ChannelTest_Output.v
// Project Name:  Send_Recieve
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Channel
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ChannelTest_Output;

	// Inputs
	reg Ch1;
	reg Ch2;
	reg request;
	reg Up;
	reg Down;
	reg Reset;

	// Outputs
	wire Ch1_up;
	wire Ch2_up;
	wire Ch2_down;
	wire Ch1_down;

	// Instantiate the Unit Under Test (UUT)
	Channel uut (
		.Ch1(Ch1), 
		.Ch2(Ch2), 
		.request(request), 
		.Up(Up), 
		.Down(Down), 
		.Reset(Reset), 
		.Ch1_up(Ch1_up), 
		.Ch2_up(Ch2_up), 
		.Ch2_down(Ch2_down), 
		.Ch1_down(Ch1_down)
	);

	initial begin
		// Initialize Inputs
		Ch1 = 0;
		Ch2 = 0;
		request = 0;
		Up = 0;
		Down = 0;
		Reset = 0;

		// Wait 100 ns for global reset to finish
		#100;
		Reset = 1;
		#100;
		Ch2 = 1;
		#100;
		Up = 1;
		#100;
		request = 1;
		#50;
			
			
		#50;// Add stimulus here

	end
      
endmodule

