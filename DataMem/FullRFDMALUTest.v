`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   07:49:45 02/25/2015
// Design Name:   FullDMRFALU
// Module Name:   C:/Users/Russell/git/Architecture/DataMem/FullRFDMALUTest.v
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

module FullRFDMALUTest;

	// Inputs
	reg [4:0] rs;
	reg [4:0] rt;
	reg [4:0] rd;
	reg [15:0] SEin;
	reg [3:0] FuncCode;
	reg Regsel;
	reg ALUsel;
	reg [1:0]ALUOp;
	reg MemWrite;
	reg MemRead;
	reg MemToRegSel;
	reg RegWrite;
	reg clk;

	// Outputs
	wire Zero;
	wire [31:0]ALUOut;

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
		.Zero(Zero),
		.ALUOut(ALUOut)
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
		Regsel = 1;
		ALUsel = 1;
		ALUOp = 0;
		MemWrite = 1;
		MemRead = 1;
		MemToRegSel = 1;
		RegWrite = 1;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#50;
        
		// Add stimulus here
		rs = 0;
		rt = 0;
		rd = 5;
		SEin = 16'h0014;
		FuncCode = 0;
		Regsel = 1;
		ALUsel = 1;
		ALUOp = 2'b10;
		MemWrite = 0;
		MemRead = 1;
		MemToRegSel = 0;
		RegWrite = 1;
		
		#100;
		rs = 0;
		rt = 0;
		rd = 10;
		SEin = 16'h0028;
		FuncCode = 0;
		Regsel = 1;
		ALUsel = 1;
		ALUOp = 2'b10;
		MemWrite = 0;
		MemRead = 1;
		MemToRegSel = 0;
		RegWrite = 1;
///////////////////////////////////////////////////
		#100;
		rs = 0;
		rt = 0;
		rd = 0;
		SEin = 0;
		FuncCode = 4'b00000;
		Regsel =1;
		ALUsel = 1;
		ALUOp = 2'b10;
		MemWrite = 0;
		MemRead =0;
		MemToRegSel = 0;
		RegWrite = 1;
			

		#100;
		rs = 0;
		rt = 0;
		rd = 0;
		SEin = 0;
		FuncCode = 4'b0010;
		Regsel = 1;
		ALUsel = 1;
		ALUOp = 2'b10;
		MemWrite = 1;
		MemRead = 1;
		MemToRegSel = 1;
		RegWrite = 1;
			

		#100;
		rs = 0;
		rt = 0;
		rd = 0;
		SEin = 0;
		FuncCode = 4'b0100;
		Regsel = 1;
		ALUsel = 1;
		ALUOp = 2'b10;
		MemWrite = 1;
		MemRead = 1;
		MemToRegSel = 1;
		RegWrite = 1;
	

		#100;
		rs = 0;
		rt = 0;
		rd = 0;
		SEin = 0;
		FuncCode = 4'b0101;
		Regsel = 1;
		ALUsel = 1;
		ALUOp = 2'b10;
		MemWrite = 1;
		MemRead = 1;
		MemToRegSel = 1;
		RegWrite = 1;
		

		#100;
		rs = 0;
		rt = 0;
		rd = 0;
		SEin = 0;
		FuncCode = 4'b1010;
		Regsel = 1;
		ALUsel = 1;
		ALUOp = 2'b10;
		MemWrite = 1;
		MemRead = 1;
		MemToRegSel = 1;
		RegWrite = 1;
			
	end
      
endmodule

