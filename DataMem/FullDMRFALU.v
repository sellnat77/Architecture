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
module FullDMRFALU(
	 input clk,
    input MemWrite,
    input MemRead,
    input RegWrite,
    input FuncCode,
    input ALUOp,
	 input SEin,
	 input A,
	 input B,
	 input sel
    );
	 
	 wire ALUResultWire;
	 wire ReadData2Wire;
	 wire ReadData1Wire;
	 wire ReadDataWire;
	 wire WriteRegWire;
	 wire WriteDataWire;
	 wire ZeroWire;
	 wire SExtendWire;
	 

	DataMem DataMem(clk,ALUResultWire,ReadData2Wire,MemWrite,MemRead,ReadDataWire);
	 
	ALUAndRF ALUAndRF(clk,ReadData1Wire,ReadData2Wire,WriteRegWire,RegWrite,WriteDataWire,FuncCode,ALUOp,ALUResultWire,ZeroWire);

	SignExtender SignExtender(SEin,SExtendWire);
	
	TwoOneMux32 TwoOneMux32(ReadData2Wire,SExtendWire,sel,ReadData2Wire);
	
	TwoOneMux321 TwoOneMux321(A,B,sel,WriteRegWire);
	
	TwoOneMux5 TwoOneMux5(ReadDataWire,ALUResultWire,sel,WriteDataWire);

endmodule
