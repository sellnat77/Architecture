`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:16:31 01/28/2015 
// Design Name: 
// Module Name:    FullALU 
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
module FullALU(
    input [1:0] ALUOp,
    input [3:0] FuncCode,
    input [31:0] A,
    input [31:0] B,
    output [31:0] ALUOut,
    output Zero,
	 wire [3:0] ALUctl
    );
	 
	 ALUControl ALUControl(ALUOp,FuncCode,ALUctl);
	 ALUWithControl ALUWithControl(AULctl,A,B,ALUOut,Zero);


endmodule
