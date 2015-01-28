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
	reg [3:0] FuncCode;
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
		
		FuncCode = 4'b0000; 
		#100;
		FuncCode = 4'b0010; 
		#100;
		FuncCode = 4'b0100; 
		#100;
		FuncCode = 4'b0101;  
		#100;
		FuncCode = 4'b1010; 
		#100;
	end
      
endmodule

