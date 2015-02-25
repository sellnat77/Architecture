`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:31:50 02/23/2015 
// Design Name: 
// Module Name:    TwoOneMux32 
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
module TwoOneMux321(
    input [31:0] A,
    input [31:0] B,
    input sel,
    output [31:0] out
    );
	 
	 assign out = (sel) ? A:B;


endmodule
