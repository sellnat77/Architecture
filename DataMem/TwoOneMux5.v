`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:34:32 02/23/2015 
// Design Name: 
// Module Name:    TwoOneMux5 
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
module TwoOneMux5(
    input [4:0] A,
    input [4:0] B,
    input [1:0] sel,
    output [4:0] out
    );
	 
	 assign out = (sel) ? A:B;
	 


endmodule
