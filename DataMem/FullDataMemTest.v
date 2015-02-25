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
	reg [31:0]MemWrite;
	reg RegWrite;
	reg [5:0]FuncCode;
	reg [1:0]ALUOp;
	reg [4:0] Read1;
	reg [4:0] Read2;
	reg [4:0] WriteReg;
	
	wire [31:0] ALUOut;
	wire Zero;

	// Instantiate the Unit Under Test (UUT)
	FullDMRFALU uut (
		.clk(clk), 
		.MemWrite(MemWrite), 
		.RegWrite(RegWrite), 
		.FuncCode(FuncCode),
		.ALUOp(ALUOp),
		.Read1(Read1),
		.Read2(Read2),
		.WriteReg(WriteReg)
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
		RegWrite = 0;
		FuncCode = 0;
		ALUOp = 0;
		Read1 = 0;
		Read2 = 0;

		

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		#100;
		MemWrite = 1;

		RegWrite = 20;
		FuncCode = 4'b0000;
		ALUOp = 2;


		#100;
		MemWrite = 0;
	
		RegWrite = 0;
		FuncCode = 0;
		ALUOp = 0;

		#100;
		MemWrite = 0;
	
		RegWrite = 0;
		FuncCode = 0;
		ALUOp = 0;

		#100;
		MemWrite = 0;
		
		RegWrite = 0;
		FuncCode = 0;
		ALUOp = 0;

	end
      
endmodule

