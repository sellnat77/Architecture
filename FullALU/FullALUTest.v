`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:22:39 01/28/2015
// Design Name:   FullALU
// Module Name:   C:/Users/Russell/git/Architecture/FullALU/FullALUTest.v
// Project Name:  FullALU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: FullALU
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module FullALUTest;

	// Inputs
	reg [1:0] ALUOp;
	reg [3:0] FuncCode;
	reg [31:0] A;
	reg [31:0] B;

	// Outputs
	wire [31:0] ALUOut;
	wire Zero;

	// Instantiate the Unit Under Test (UUT)
	FullALU uut (
		.ALUOp(ALUOp), 
		.FuncCode(FuncCode), 
		.A(A), 
		.B(B), 
		.ALUOut(ALUOut), 
		.Zero(Zero)
	);

	initial begin
		// Initialize Inputs
		ALUOp = 0;
		FuncCode = 0;
		A = 0;
		B = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		ALUOp = 2'b10;		FuncCode = 4'b0000;		A = 32'h55555555;		B = 32'haaaaaaaa; #100;
		ALUOp = 2'b10;		FuncCode = 4'b0010;		A = 32'h55555555;		B = 32'haaaaaaaa; #100;
		ALUOp = 2'b10;		FuncCode = 4'b0100;		A = 32'h55555555;		B = 32'haaaaaaaa; #100;
		ALUOp = 2'b10;		FuncCode = 4'b0101;		A = 32'h55555555;		B = 32'haaaaaaaa; #100;
		ALUOp = 2'b10;		FuncCode = 4'b1010;		A = 32'h55555555;		B = 32'haaaaaaaa; #100;
	end
      
endmodule

