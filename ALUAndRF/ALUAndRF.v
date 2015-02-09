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
    output Zero,
    output ALUOut
    );
	 
	 wire ;
	 wire ;
	 wire ;
	 wire ;
	 wire ;
	 wire ;
	 wire ;
	 
	 
	 
	 FullALU FullALU();
	 RegisterFile RegisterFile();


endmodule
