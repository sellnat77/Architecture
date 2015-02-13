`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:32:41 02/09/2015 
// Design Name: 
// Module Name:    ALUAndRF 
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
module ALUAndRF(
    input clk,
    input [4:0] Read1,
    input [4:0] Read2,
    input [4:0] WriteReg,
    input [1:0] RegWrite,
    input [31:0] WriteData,
    input [3:0] FuncCode,
    input [1:0] ALUOp,
    output [1:0]Zero,
    output [31:0]ALUOut
    );
	 
	 wire [31:0]Data1;
	 wire [31:0]Data2;	 
	 
	 RegisterFile RegisterFile(clk,Read1,Read2,WriteReg,RegWrite,WriteData,Data1,Data2);
	 FullALU FullALU(ALUOp,FuncCode,Data1,Data2,ALUOut,Zero);
	 


endmodule
