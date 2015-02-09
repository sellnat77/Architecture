`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:43:51 02/09/2015
// Design Name:   ALUAndRF
// Module Name:   C:/Users/Russell/git/Architecture/ALUAndRF/ALUAndRFTest.v
// Project Name:  ALUAndRF
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ALUAndRF
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ALUAndRFTest;

	// Inputs
	reg clk;
	reg [4:0] Read1;
	reg [4:0] Read2;
	reg [4:0] WriteReg;
	reg [1:0] RegWrite;
	reg [31:0] WriteData;
	reg [3:0] FuncCode;
	reg [1:0] ALUOp;

	// Outputs
	wire Zero;
	wire ALUOut;

	// Instantiate the Unit Under Test (UUT)
	ALUAndRF uut (
		.clk(clk), 
		.Read1(Read1), 
		.Read2(Read2), 
		.WriteReg(WriteReg), 
		.RegWrite(RegWrite), 
		.WriteData(WriteData), 
		.FuncCode(FuncCode), 
		.ALUOp(ALUOp), 
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
		clk = 0;
		Read1 = 0;
		Read2 = 0;
		WriteReg = 0;
		RegWrite = 0;
		WriteData = 0;
		FuncCode = 0;
		ALUOp = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		#50;
		Read1 = 5'b00101;
		Read2 = 0;
		WriteReg = 5'b00101;
		RegWrite = 1;
		WriteData = 32'h55555555;
		FuncCode = 4'b0000;
		ALUOp = 2'b10;
		
		#100;
		Read1 = 0;
		Read2 = 5'b001010;
		WriteReg = 5'b001010;
		RegWrite = 1;
		WriteData = 32'haaaaaaaa;
		FuncCode = 4'b0000;
		ALUOp = 2'b10;

		#100;
		Read1 = 5'b00101;
		Read2 = 0;
		WriteReg = 5'b00101;
		RegWrite = 1;
		WriteData = 32'h55555555;
		FuncCode = 4'b0000;
		ALUOp = 2'b10;



	end
      
endmodule

