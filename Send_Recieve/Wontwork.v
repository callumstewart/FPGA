`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   05:29:16 11/15/2012
// Design Name:   Sender
// Module Name:   C:/Users/Callum/Desktop/FPGA/TestFs/Wontwork.v
// Project Name:  TestFs
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

module Wontwork;

	// Inputs
	reg ack;
	reg reset;
	reg Ch1;
	reg Ch2;
	reg Up;
	reg go;
	reg Down;

	// Outputs
	wire Bit0_Out;
	wire Bit1_Out;
	wire comp;
	wire dt;

	// Instantiate the Unit Under Test (UUT)
	Sender uut (
		.ack(ack), 
		.reset(reset), 
		.Ch1(Ch1), 
		.Ch2(Ch2), 
		.Up(Up), 
		.go(go), 
		.Down(Down), 
		.Bit0_Out(Bit0_Out), 
		.Bit1_Out(Bit1_Out), 
		.comp(comp), 
		.dt(dt)
	);

	initial begin
		// Initialize Inputs
		ack = 0;
		reset = 0;
		Ch1 = 0;
		Ch2 = 0;
		Up = 0;
		go = 0;
		Down = 0;

		// Wait 100 ns for global reset to finish
		#100;
       reset = 1;
		 Ch1 =1;
		  Up = 1;
		 #100;
		 go = 1;
		 #100;
		 go = 0;
		 ack = 1;
		 #100;
		 ack = 0;
		 #100;
		 ack =1;
		 #100;
		 ack = 0;
		 #100;
		 ack = 1;
		 #100;
		 ack=0;
		 #100;
		 ack = 1;
		 #100;
		 //Ch1 = 1;
		 ack = 0;
		 #100;
		 ack =1;
		
		 #100;
		 ack = 0;
		 #100;
		 ack = 1;
		 #100;
		 ack=0;
		 #100;
		 go = 0;
		
		 Ch1 = 0;
		 
		 ack = 1;
		 #100;
		 ack=0;
		 #100;
		 ack = 1;
		 #100;
		 ack = 0;
		 #100;
		 ack =1;
		 #100;
		 ack = 0;
		 #100;
		 ack = 1;
		 #100;
		 ack=0;
		 #100;
		 ack = 1;
		 #100;
		 ack = 0;
		 #100;
		 ack =1;
		 #100;
		 ack = 0;
		 #100;
		 ack = 1;
		 #100;
		 ack=0;
		 
		// Add stimulus here

	end
      
endmodule

