`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:43:20 02/24/2015
// Design Name:   FullDMRFALU
// Module Name:   C:/Users/Russell/git/Architecture/DataMem/FullDMRFALUTest.v
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

module FullDMRFALUTest;

	// Inputs
	reg [4:0] rs;
	reg [4:0] rt;
	reg [4:0] rd;
	reg [15:0] SEin;
	reg [5:0] FuncCode;
	reg Regsel;
	reg ALUsel;
	reg ALUOp;
	reg MemWrite;
	reg MemRead;
	reg MemToRegSel;
	reg RegWrite;
	reg clk;

	// Outputs
	wire Zero;
	wire[31:0] ALUOut;

	// Instantiate the Unit Under Test (UUT)
	FullDMRFALU uut (
		.rs(rs), 
		.rt(rt), 
		.rd(rd), 
		.SEin(SEin), 
		.FuncCode(FuncCode), 
		.Regsel(Regsel), 
		.ALUsel(ALUsel), 
		.ALUOp(ALUOp), 
		.MemWrite(MemWrite), 
		.MemRead(MemRead), 
		.MemToRegSel(MemToRegSel), 
		.RegWrite(RegWrite), 
		.clk(clk), 
		.Zero(Zero)
	);
	always
	begin
		#50 clk = 0;
		#50 clk = 1;
	end
	initial begin
		// Initialize Inputs
		rs = 0;
		rt = 0;
		rd = 0;
		SEin = 0;
		FuncCode = 0;
		Regsel = 0;
		ALUsel = 0;
		ALUOp = 0;
		MemWrite = 0;
		MemRead = 0;
		MemToRegSel = 0;
		RegWrite = 0;
		clk = 0;
		
	

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		
		SEin = 16'h0014;
		rs = 0;
		rt = 0;
		ALUsel = 1;
		ALUOp = 2'b10;
		FuncCode = 6'b000000;
		RegWrite = 1;
		MemWrite = 32'h55555555;
		

	end
      
endmodule

