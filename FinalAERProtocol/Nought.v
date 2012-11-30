`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    02:00:15 11/15/2012 
// Design Name: 
// Module Name:    Nought 
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
module Nought(
    input ack,
    input reset,
    input senack,
    input nought,
    output A,
    output B,
    output Dt,
    output bit0
    );

	assign
	
	A = ((!B && nought) || (A && !B) || (A && ack)) && reset,
	B = ((A && ack) || (B && A) || (B && !senack)) && reset,
	Dt = (!A && B),
	bit0 = (A && !B);

endmodule
