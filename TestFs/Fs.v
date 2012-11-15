`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Edinburgh University
// Engineer: Callum Stewart
// 
// Create Date:    20:33:20 11/14/2012 
// Design Name: 	 Fs Control Signal Generator Asynchronous FSM
// Module Name:    Fs 
// Project Name: 	 Address Event Controller
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
