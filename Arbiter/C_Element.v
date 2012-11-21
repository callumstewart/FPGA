`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:50:01 11/21/2012 
// Design Name: 
// Module Name:    C_Element 
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
module C_Element(
    input a,
    input b,
    output q
    );

assign q = ((a&&b) || ((a || b) && q));
endmodule
