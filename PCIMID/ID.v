`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:24:04 03/03/2015 
// Design Name: 
// Module Name:    ID 
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
module ID(
    input reg [31:0] instructionIn,
    output [8:0] ALUSrcB
    );
	 
	 reg Op0 = instructionIn[26];
	 reg Op1 = instructionIn[27];
	 reg Op2 = instructionIn[28];
	 reg Op3 = instructionIn[29];
	 reg Op4 = instructionIn[30];
	 reg Op5 = instructionIn[31];
	 
	 
	 assign lw = Op5 & ~Op4 & ~Op3 & ~Op2 & Op1 & Op0;

	 assign sw = Op5 & ~Op4 & Op3 & ~Op2 & Op1 & Op0;
	 assign add = Op5 & ~Op4 & ~Op3 & ~Op2 & ~Op1 & ~Op0; 
	 assign sub = Op5 & ~Op4 & ~Op3 & ~Op2 & Op1 & ~Op0;
	 assign andr = Op5 & ~Op4 & ~Op3 & Op2 & ~Op1 & ~Op0;
	 assign orr = Op5 & ~Op4 & ~Op3 & Op2 & ~Op1 & Op0;
	 assign stl = Op5 & ~Op4 & Op3 & ~Op2 & Op1 & ~Op0;

	 assign ALUSrcB = lw | sw | add | sub | andr | orr | stl;


endmodule
