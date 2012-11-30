`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   03:17:33 11/21/2012
// Design Name:   Channel
// Module Name:   C:/Users/Callum/Desktop/FPGA/Send_Recieve/Channeltest.v
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

module Channeltest;

	// Inputs
	reg Ch1;
	reg Ch2;
	reg request;
	reg Up;
	reg Down;
	reg Reset;
	reg fs_ack;
	reg fe_ack;
	reg xo_ack;
	reg one_ack;
	reg zero_ack;
	reg fd_ack;

	// Outputs
	wire bit0;
	wire bit1;

	// Instantiate the Unit Under Test (UUT)
	Channel uut (
		.Ch1(Ch1), 
		.Ch2(Ch2), 
		.request(request), 
		.Up(Up), 
		.Down(Down), 
		.Reset(Reset), 
		.fs_ack(fs_ack), 
		.fe_ack(fe_ack), 
		.xo_ack(xo_ack), 
		.one_ack(one_ack), 
		.zero_ack(zero_ack), 
		.fd_ack(fd_ack), 
		.bit0(bit0), 
		.bit1(bit1)
	);

	initial begin
		// Initialize Inputs
		Ch1 = 0;
		Ch2 = 0;
		request = 0;
		Up = 0;
		Down = 0;
		Reset = 0;
		fs_ack = 0;
		fe_ack = 0;
		xo_ack = 0;
		one_ack = 0;
		zero_ack = 0;
		fd_ack = 0;

		// Wait 100 ns for global reset to finish
		#100;
		Reset = 1;
		//fs_ack = 1;
		#100;
		Ch2 = 1;
		#100;
		Down = 1;
		#100;
		request = 1;
		#100;
		request = 0;
		#100;
		xo_ack = 1;
		#300;
		one_ack=1;
		#100;
		
		#100;
		
      #300;

			fs_ack = 1;
			
			#200;
			
			zero_ack = 1;
			
			#200;
			fe_ack = 1;
			#400;
		// Add stimulus here

	end
      
endmodule

