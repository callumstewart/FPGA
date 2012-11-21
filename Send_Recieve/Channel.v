`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    03:11:15 11/21/2012 
// Design Name: 
// Module Name:    Channel 
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
module Channel(
    input Ch1,
    input Ch2,
	 input request,
    input Up,
    input Down,
    input Reset,
    output Ch1_up,
	 output Ch2_up,
	 output Ch2_down,
	 output Ch1_down
    );
	 
	 wire acknowledge1,acknowledge2, zero, one;
	 
	
	 
	 wire fs_ack, xo_ack, one_ack, zero_ack, fe_ack, fd_ack;
	 wire fs_out, xo_out, one_out, zero_out, fe_out, fd_out;
	 wire Ch1_Downx, Ch1_Upx, Ch2_Downx, Ch2_Upx;
	 wire A,B,C,D,E;
	 
	 Reciever recieve (
    .reset(Reset), 
    .ZERO_IN(zero), 
    .ONE_IN(one), 
    .ONE_ACK(one_ack), 
    .ZERO_ACK(zero_ack), 
    .FS_ACK(fs_ack), 
    .FE_ACK(fe_ack), 
    .X0_ACK(xo_ack), 
    .FD_ACK(fd_ack), 
    .ACK(acknowledge1), 
    .Fs(fo_out), 
    .Fe(fe_out), 
    .Fd(fd_out), 
    .X0(xo_out), 
    .ZERO_OUT(zero_out), 
    .ONE_OUT(one_out), 
    .A(A), 
    .B(B), 
    .C(C), 
    .D(D), 
    .E(E)
    
	 
);


Sender send (
    .ack(acknowledge2), 
    .reset(Reset), 
    .Ch1(Ch1), 
    .Ch2(Ch2), 
    .Up(Up), 
    .go(request), 
    .Down(Down), 
    .Bit0_Out(zero), 
    .Bit1_Out(one), 
    .comp(comp), 
    .dt(dt)
    );	 

  buf1 buffer (
    .a(acknowledge1), 
    .b(acknowledge2)
    );

	
Output Decoder_Output (
    .Fd(fd_out), 
    .Fs(fs_out), 
    .Fe(fe_out), 
    .X0(xo_out), 
    .One(one_out), 
    .Zero(zero_out), 
    .Fs_ack(fs_ack), 
    .Fe_ack(fe_ack), 
    .Fd_ack(fd_ack), 
    .X0_ack(xo_ack), 
    .one_ack(one_ack), 
    .zero_ack(zero_ack), 
    .Ch1_Up(Ch1_Upx), 
    .Ch1_Down(Ch1_Downx), 
    .Ch2_Up(Ch2_Upx), 
    .Ch2_Down(Ch2_Downx)
    );

assign
		Ch1_down = E,
		Ch1_up = zero,
		Ch2_down = A,
		Ch2_up = one;
endmodule
