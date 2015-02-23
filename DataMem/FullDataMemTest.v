`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:15:52 02/23/2015
// Design Name:   FullDMRFALU
// Module Name:   C:/Users/Russell/git/Architecture/DataMem/FullDataMemTest.v
// Project Name:  DataMem
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: FullDMRFALU
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module FullDataMemTest;

	// Inputs
	reg clk;
	reg MemWrite;
	reg MemRead;
	reg RegWrite;
	reg FuncCode;
	reg ALUOp;
	reg SEin;
	reg A;
	reg B;
	reg sel;

	// Instantiate the Unit Under Test (UUT)
	FullDMRFALU uut (
		.clk(clk), 
		.MemWrite(MemWrite), 
		.MemRead(MemRead), 
		.RegWrite(RegWrite), 
		.FuncCode(FuncCode), 
		.ALUOp(ALUOp), 
		.SEin(SEin), 
		.A(A), 
		.B(B), 
		.sel(sel)
	);
	always
	begin
		#50 clk = 0;
		#50 clk = 1;
	end
	initial begin
		// Initialize Inputs
		clk = 0;
		MemWrite = 0;
		MemRead = 0;
		RegWrite = 0;
		FuncCode = 0;
		ALUOp = 0;
		SEin = 0;
		A = 0;
		B = 0;
		sel = 0;
		

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		#100;
		MemWrite = 1;
		MemRead = 0;
		RegWrite = 20;
		FuncCode = 4'b0000;
		ALUOp = 2;
		SEin = 16'b0000000000000000;
		A = 50;
		B = 10;
		sel = 1;
		#100;
		MemWrite = 0;
		MemRead = 0;
		RegWrite = 0;
		FuncCode = 0;
		ALUOp = 0;
		SEin = 0;
		A = 0;
		B = 0;
		sel = 0;
		#100;
		MemWrite = 0;
		MemRead = 0;
		RegWrite = 0;
		FuncCode = 0;
		ALUOp = 0;
		SEin = 0;
		A = 0;
		B = 0;
		sel = 0;
		#100;
		MemWrite = 0;
		MemRead = 0;
		RegWrite = 0;
		FuncCode = 0;
		ALUOp = 0;
		SEin = 0;
		A = 0;
		B = 0;
		sel = 0;
	end
      
endmodule

