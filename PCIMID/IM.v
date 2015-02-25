`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:58:48 02/25/2015 
// Design Name: 
// Module Name:    IM 
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
module IM(
    input [7:0] Address,
    output InstructionOut
    );
	 
	 reg [31:0] instructionMemory [255:0];
	 
	 assign InstructionOut = instructionMemory[Address[9:2]];
	 


endmodule
