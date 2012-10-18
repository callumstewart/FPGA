`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:33:13 10/03/2012 
// Design Name: 
// Module Name:    rca2 
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

module rca2(A,B,mclk,rs,sum,seg,anode);
    input [3:0] A;
	 input [3:0] B;
	 input wire mclk;
	 input wire rs;
	 output [4:0] sum;
    output [7:0] seg;
    output [3:0] anode;
	 
   
	
 
wire [4:0]       carry_out;
wire [7:0]		  segw; 
wire [7:0]		  segx; 
wire [7:0]		  segz;
wire [3:0]		  anodefinal;
wire clkDiv;

full_adder fa0(
	.a(A[0]),
	.b(B[0]),
	.cin(1'b0),
 	.cout(carry_out[1]),
 	.sum(sum[0])
 	);

full_adder fa1(
	.a(A[1]),
	.b(B[1]),
	.cin(carry_out[1]),
 	.cout(carry_out[2]),
 	.sum(sum[1])
 	);

full_adder fa2(
	.a(A[2]),
	.b(B[2]),
	.cin(carry_out[2]),
 	.cout(carry_out[3]),
 	.sum(sum[2])
 	);
full_adder fa3(
	.a(A[3]),
	.b(B[3]),
	.cin(carry_out[3]),
 	.cout(carry_out[4]),
 	.sum(sum[3])
 	);
	
	assign sum[4] = carry_out[4];
	
	seg7 seggy(
	.bcd(sum[4:0]),
	.led(segw),
	.led2(segx)
	);
	
	clkDivider clky (
    .clk(mclk), 
    .reset(rs), 
    .clkDivOut(clkDiv)
    );
 
	switcher switch (
    .clkDiv(clkDiv), 
    .led1(segw), 
    .led2(segx), 
    .anode(anodefinal), 
    .ledx(segz)
    );
 
	
// assign the final sum bit.

assign seg = segz;
assign anode = anodefinal;
endmodule

