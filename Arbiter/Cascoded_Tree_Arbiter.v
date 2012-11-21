`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:53:31 11/21/2012 
// Design Name: 
// Module Name:    Cascoded_Tree_Arbiter 
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
module Cascoded_Tree_Arbiter(
    input R1,
    input R2,
 
    output A1,
    output A2
    
    );
	 
	 
	 wire me_inva1, me_inva2;
	 wire and1, and2;
	 wire sor_out, C1_out, C2_out;
	 
	 
	ME Mutual_Exclusion (
    .Req1(R1), 
    .Req2(R2), 
    .G1(me_inva1), 
    .G2(me_inva2)
    );


InvAnd INVA1 (
    .a(C2_out), 
    .b(me_inva1), 
    .c(and1)
    );
	 
	 
	 
	 InvAnd INVA2 (
    .a(C1_out), 
    .b(me_inva2), 
    .c(and2)
    );
	 
	 C_Element C1 (
    .a(and1), 
    .b(sor_out), 
    .q(C1_out)
    );
	 
	 
	 C_Element C2 (
    .a(and2), 
    .b(sor_out), 
    .q(C2_out)
    );
	
	
	Sor Or (
    .a(and1), 
    .b(and2), 
    .c(sor_out)
    );


assign
	A1 = C1_out,
	A2 = C2_out;
endmodule
