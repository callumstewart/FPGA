`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:50:59 11/12/2012 
// Design Name: 
// Module Name:    SimpleOR 
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
module SimpleOR(
    input A_UP,
    input A_DOWN,
    input B_UP,
    input B_DOWN,
    output CH_OUT
    );

	
	wire CH1_OUT;
	wire CH2_OUT;
	
	wire CH;
	
	OR CH1 (
    .A(A_UP), 
    .B(A_DOWN), 
    .C(CH1_OUT)
    );
	 
	 OR CH2 (
    .A(B_UP), 
    .B(B_DOWN), 
    .C(CH2_OUT)
    );
	 
	 OR CH3 (
    .A(CH1_OUT), 
    .B(CH2_OUT), 
    .C(CH)
    );
	 
	 
	 
	assign CH_OUT = CH;

endmodule
