`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:36:56 01/28/2015
// Design Name:   ALUControl
// Module Name:   C:/Users/Russell/git/Architecture/ALUControl/ALUctlTest.v
// Project Name:  ALUControl
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ALUControl
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ALUctlTest;

	// Inputs
	reg [5:0] FuncCode;
	reg [1:0] ALUop;

	// Outputs
	wire [3:0] ALUctl;

	// Instantiate the Unit Under Test (UUT)
	ALUControl uut (
		.FuncCode(FuncCode), 
		.ALUop(ALUop), 
		.ALUctl(ALUctl)
	);

	initial begin
		// Initialize Inputs
		FuncCode = 0;
		ALUop = 2'b10;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		
		FuncCode = 6'b100000; 
		#100;
		FuncCode = 6'b100010; 
		#100;
		FuncCode = 6'b100100; 
		#100;
		FuncCode = 6'b100101;  
		#100;
		FuncCode = 6'b101010; 
		#100;
	end
      
endmodule

