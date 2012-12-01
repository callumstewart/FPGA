`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:19:55 11/30/2012
// Design Name:   AER_Channel
// Module Name:   C:/Users/Callum/Desktop/FPGA/FinalAERProtocol/AER_Channel_Test.v
// Project Name:  FinalAERProtocol
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: AER_Channel
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module AER_Channel_Test;

	// Inputs
	reg Ch1Up_In;
	reg Ch1Down_In;
	reg Ch2Up_In;
	reg Ch2Down_In;
	reg reset;

	// Outputs
	wire Ch1Up_Out;
	wire Ch1Down_Out;
	wire Ch2Up_Out;
	wire Ch2Down_Out;

	// Instantiate the Unit Under Test (UUT)
	AER_Channel uut (
		.Ch1Up_In(Ch1Up_In), 
		.Ch1Down_In(Ch1Down_In), 
		.Ch2Up_In(Ch2Up_In), 
		.Ch2Down_In(Ch2Down_In), 
		.reset(reset), 
		.Ch1Up_Out(Ch1Up_Out), 
		.Ch1Down_Out(Ch1Down_Out), 
		.Ch2Up_Out(Ch2Up_Out), 
		.Ch2Down_Out(Ch2Down_Out)
	);

	initial begin
		// Initialize Inputs
		Ch1Up_In = 0;
		Ch1Down_In = 0;
		Ch2Up_In = 0;
		Ch2Down_In = 0;
		reset = 0;

		// Wait 100 ns for global reset to finish
			#100;
		reset = 1;
		#100;
		Ch1Up_In = 1;
		
		Ch2Up_In = 1;
		#400;
		
		Ch1Up_In = 0;
		#5;
		
		
		Ch1Down_In = 1;
		
		
		#100;
		Ch2Up_In = 0;
		#5;
		Ch2Down_In = 1;
		
		#10;
		Ch1Down_In = 0;
		Ch2Down_In = 0;
		#200;
        
		// Add stimulus here

	end
      
endmodule

