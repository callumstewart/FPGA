`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:20:52 10/18/2012 
// Design Name: 
// Module Name:    test 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module test(
    input clock,
    input reset,
    output reg clkout
    );
	 
	 
	always @(posedge clock)
	begin
	if (reset)
	begin
	clkout <=0;
	end
	else
	begin
	clkout <=1;
	end
	
end	

endmodule
