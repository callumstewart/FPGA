`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   01:32:19 11/15/2012
// Design Name:   X0
// Module Name:   C:/Users/Callum/Desktop/FPGA/TestFs/X0Test.v
// Project Name:  TestFs
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: X0
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module X0Test;

	// Inputs
	reg ack;
	reg X0;
	reg senack;
	reg reset;

	// Outputs
	wire A;
	wire B;
	wire C;
	wire Cclear;
	wire Dt;
	wire bit0;
	wire bit1;

	// Instantiate the Unit Under Test (UUT)
	X0 uut (
		.ack(ack), 
		.X0(X0), 
		.senack(senack), 
		.reset(reset), 
		.A(A), 
		.B(B), 
		.C(C), 
		.Cclear(Cclear), 
		.Dt(Dt), 
		.bit0(bit0), 
		.bit1(bit1)
	);

	initial begin
		// Initialize Inputs
		ack = 0;
		X0 = 0;
		senack = 0;
		reset = 0;

		// Wait 100 ns for global reset to finish
		#100;
		#100;
		reset = 1;
		#100;
      X0 = 1;
		#100;
		ack =1;
		#100;
		ack = 0;
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
		ack = 0;
		#100;
		senack = 1;
		#100;
        
		// Add stimulus here

	end
      
endmodule

