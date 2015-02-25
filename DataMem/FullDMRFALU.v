`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:37:10 02/23/2015 
// Design Name: 
// Module Name:    FullDMRFALU 
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
module FullDMRFALU( rs,rt,rd,SEin,FuncCode,Regsel,ALUsel,ALUOp,MemWrite,MemRead,MemToRegSel,RegWrite,clk,Zero,ALUOut);

	 input Regsel,ALUsel,MemRead,MemToRegSel,RegWrite,clk;
	 input [1:0] MemWrite;
	 input [1:0] ALUOp;
	 input [5:0] FuncCode;
	 input [4:0] rs,rt,rd;
	 input [15:0] SEin;
	 
	 output Zero;
	 output wire [31:0] ALUOut;
	 
	 wire [3:0] ALUCtl;
	 wire [4:0] WriteReg;
	 wire [31:0] RegToMux2, A, B, SEOut, ReadDataOut, ReadData;
	 

	DataMem DataMem(.clk(clk),.Address(ALUOut),.WriteData(RegToMux2),.MemWrite(MemWrite),.MemRead(MemRead),.ReadData(ReadDataOut));

	SignExtender SignExtender(.SEin(SEin),.SEout(SEOut));
	
	TwoOneMux32 TwoOneMux32(.A(RegToMux2),.B(SEOut),.sel(ALUsel),.out(B));
	
	TwoOneMux321 TwoOneMux321(.A(ALUOut),.B(ReadDataOut),.sel(MemToRegSel),.out(ReadData));
	
	TwoOneMux5 TwoOneMux5(.A(rt),.B(rd),.sel(Regsel),.out(WriteReg));
	
	ALUControl ALUControl(.ALUOp(ALUOp),.FuncCode(FuncCode),.ALUctl(ALUCtl));
	
	ALUWithControl ALUWithControl(.ALUctl(ALUCtl),.A(A),.B(B),.ALUOut(ALUOut),.Zero(Zero));
	
	RegisterFile RegisterFile(.clk(clk),.Read1(rs),.Read2(rt),.WriteReg(WriteReg),.RegWrite(RegWrite),.WriteData(ReadData),.Data1(A),.Data2(RegToMux2));

endmodule
