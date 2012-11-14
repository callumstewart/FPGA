`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:33:20 11/14/2012 
// Design Name: 
// Module Name:    Fs 
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
module Fs(
    input ack,
    input reset,
    output bit0,
    output bit1,
    output A,
    output B
    );
	
	assign
    A = ((!B&&ack) || (A&&!B) || (A&&!ack))&&reset,
	 B = ((A&&!ack) || (B&&A) || (B&&ack))&&reset,
	 bit0 = !B,
	 bit1 = A;

	

endmodule
