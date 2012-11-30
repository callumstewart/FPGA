`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:56:23 11/29/2012 
// Design Name: 
// Module Name:    Arbiter 
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
module Arbiter(
    input Ch1Up_In,
    input Ch1Down_In,
    input Ch2Up_In,
    input Ch2Down_In,
	 input Fs_sen,
	 input Fe_d,
    input reset,
    output Ch1,
    output Ch2,
    output Up,
    output Down,
    output go
    );


	wire req1, req2, gnt1, gnt2;
	wire req1_1, req1_2, gnt1_1, gnt2_2;

	Ch1Up_FSM Ch1Up_FSM (
    .Ch1Up(Ch1Up_In), 
    .Gnt1(gnt1), 
    .Fs_sen(Fs_sen), 
    .Fe_d(Fe_d), 
    .reset(reset), 
    .Req1(req1_1), 
    .Ch1(Ch1_1), 
    .Up(Ch1Up), 
    .go(go1), 
    .A(Ch1UA), 
    .B(Ch1UB), 
    .C(Ch1UC)
    );
	 
	 
	Ch1Down_FSM Ch1Down_FSM (
    .Ch1Down(Ch1Down_In), 
    .Gnt1(gnt1), 
    .Fs_sen(Fs_sen), 
    .Fe_d(Fe_d), 
    .reset(reset), 
    .Req1(req1_2), 
    .Ch1(Ch1_2), 
    .Down(Ch1Down), 
    .go(go2), 
    .A(Ch1DA), 
    .B(Ch1DB), 
    .C(Ch1DC)
    );
	 
	 
	 Ch2Up_FSM Ch2Up_FSM (
    .Ch2Up(Ch2Up_In), 
    .Gnt2(gnt2), 
    .Fs_sen(Fs_sen), 
    .Fe_d(Fe_d), 
    .reset(reset), 
    .Req2(req2_1), 
    .Ch2(Ch2_1), 
    .Up(Ch2Up), 
    .go(go3), 
    .A(Ch2UA), 
    .B(Ch2UB), 
    .C(Ch2UC)
    );
	 
	 
	 Ch2Down_FSM Ch2Down_FSM (
    .Ch2Down(Ch2Down_In), 
    .Gnt2(gnt2), 
    .Fs_sen(Fs_sen), 
    .Fe_d(Fe_d), 
    .reset(reset), 
    .Req2(req2_2), 
    .Ch2(Ch2_2), 
    .Down(Ch2Down), 
    .go(go4), 
    .A(Ch2DA), 
    .B(Ch2DB), 
    .C(Ch2DC)
    );
	 
	 ME MutualExclusion (
    .Req1(req1), 
    .Req2(req2), 
    .G1(gnt1), 
    .G2(gnt2)
    );
	 
	 assign 
		req1 = (req1_1 || req1_2),
		req2 = (req2_1 || req2_2),
		
		Ch1 = (Ch1_1 || Ch1_2),
		Ch2 = (Ch2_1 || Ch2_2),
		Up = (Ch1Up || Ch2Up),
		Down = (Ch1Down || Ch2Down),
		
		go = (go1 || go2 || go3 || go4);

endmodule
