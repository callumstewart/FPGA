`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:22:34 11/30/2012 
// Design Name: 
// Module Name:    AER_Output 
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
module AER_Output(
    input Bit0,
    input Bit1,
	 input reset,
    output ack,
    output Ch1Up,
    output Ch1Down,
    output Ch2Up,
    output Ch2Down
	 );


	wire Fs, X0, One, Zero, RecieverFe, DecoderFe;
	wire Fs_ack, X0_ack, One_ack, Zero_ack, Fe_ack;

Reciever Recieve (
    .reset(reset), 
    .ZERO_IN(Bit0), 
    .ONE_IN(Bit1), 
    .ONE_ACK(One_ack), 
    .ZERO_ACK(Zero_ack), 
    .FS_ACK(Fs_ack), 
    .FE_ACK(Fe_ack), 
    .X0_ACK(X0_ack), 
    .FD_ACK(NOT_USED), 
    .ACK(ack), 
    .Fs(Fs), 
    .Fe(RecieverFe), 
    .Fd(Fd), 
    .X0(X0), 
    .ZERO_OUT(Zero), 
    .ONE_OUT(One), 
    .A(Rec_A), 
    .B(Rec_B), 
    .C(Rec_C), 
    .D(Rec_D), 
    .E(Rec_E)
    );


OutputDecoder Decode (
    .Fs(Fs), 
    .X0(X0), 
    .Zero(Zero), 
    .One(One), 
    .Fe(DecoderFe), 
    .reset(reset), 
    .Fs_ack(Fs_ack), 
    .X0_ack(X0_ack), 
    .Zero_ack(Zero_ack), 
    .One_ack(One_ack), 
    .Fe_ack(Fe_ack), 
    .S0(S0), 
    .S1(S1), 
    .D0(D0), 
    .D1(D1), 
    .A(Decode_A), 
    .B(Decode_B), 
    .C(Decode_C), 
    .D(Decode_D), 
    .Ch1Up(Ch1Up), 
    .Ch1Down(Ch1Down), 
    .Ch2Up(Ch2Up), 
    .Ch2Down(Ch2Down)
    );
	 
	 
	 BufferFe FeBuff (
    .A(RecieverFe), 
    .B(DecoderFe)
    );
	 
	 
endmodule
