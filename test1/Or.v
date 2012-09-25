`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:57:57 09/24/2012 
// Design Name: 
// Module Name:    Or 
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
module Or(
    input A,
    input B,
	 input C,	 
    output X
    );

assign X = (A||B||C) && (A&B) || (A&C) || ((A^C)||B);

endmodule
