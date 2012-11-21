`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:35:28 11/21/2012 
// Design Name: 
// Module Name:    Nor 
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
module Nor(
    input a,
    input b,
    input c,
    input d,
    output Out
    );

assign Out = !(a || b || c || d);
endmodule
