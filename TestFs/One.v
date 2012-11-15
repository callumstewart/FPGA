`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    02:12:53 11/15/2012 
// Design Name: 
// Module Name:    One 
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
module One(
   input ack,
    input reset,
    input senack,
    input one,
    output A,
    output B,
    output Cclear,
    output Dt,
    output bit1
    );

	assign
	
	A = ((!B && one) || (A && !B) || (A && ack)) && reset,
	B = ((A && ack) || (B && A) || (B && !senack)) && reset,
	Dt = (!A && B),
	Cclear = (A && !B),
	bit1 = (A && !B);
endmodule
