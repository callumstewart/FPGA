`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:32:38 11/30/2012 
// Design Name: 
// Module Name:    AER_Channel 
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
module AER_Channel(
    input Ch1Up_In,
    input Ch1Down_In,
    input Ch2Up_In,
    input Ch2Down_In,
    input reset,
    output Ch1Up_Out,
    output Ch1Down_Out,
    output Ch2Up_Out,
    output Ch2Down_Out
    );
	 
	 
	 wire Bit0, Bit1, ack;
	 
	 AER_Input Input (
    .Ch1Up(Ch1Up_In), 
    .Ch1Down(Ch1Down_In), 
    .Ch2Up(Ch2Up_In), 
    .Ch2Down(Ch2Down_In), 
    .ack(ackout), 
    .reset(reset), 
    .bit0(bit0In), 
    .bit1(bit1In)
    );


	
	AER_Output Output (
    .Bit0(bit0Out), 
    .Bit1(bit1Out), 
    .reset(reset), 
    .ack(ackin), 
    .Ch1Up(Ch1Up_Out), 
    .Ch1Down(Ch1Down_Out), 
    .Ch2Up(Ch2Up_Out), 
    .Ch2Down(Ch2Down_Out)
    );
	 
	 
	 Buffack Bit0Buff (
    .A(bit0In), 
    .B(bit0Out)
    );


	Buffack Bit1Buff (
    .A(bit1In), 
    .B(bit1Out)
    );


	Buffack ackBuff (
    .A(ackin), 
    .B(ackout)
    );
	
endmodule
