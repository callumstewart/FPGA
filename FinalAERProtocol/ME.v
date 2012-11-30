`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:33:49 11/21/2012 
// Design Name: 
// Module Name:    ME 
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
module ME(
    input Req1,
    input Req2,
    output G1,
    output G2
    );

  
  wire sr1, sr2, out1, out2;
  
    Nand SR1 (
    .a(Req1), 
    .b(sr2), 
    .c(sr1)
    );
	 
	 Nand SR2 (
    .a(Req2), 
    .b(sr1), 
    .c(sr2)
    );
	 Nor BUF1 (
    .a(sr1), 
    .b(sr1), 
    .c(sr1), 
    .d(sr1), 
    .Out(out1)
    );
	 
	 Nor BUF2 (
    .a(sr2), 
    .b(sr2), 
    .c(sr2), 
    .d(sr2), 
    .Out(out2)
    );

assign 
G1 = out1,
G2 = out2;


endmodule
