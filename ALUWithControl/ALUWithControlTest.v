`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:54:19 01/26/2015
// Design Name:   ALUWithControl
// Module Name:   C:/Users/Russell/git/Architecture/ALUWithControl/ALUWithControlTest.v
// Project Name:  ALUWithControl
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ALUWithControl
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ALUWithControlTest;

	// Inputs
	reg [31:0] A;
	reg [31:0] B;
	reg [3:0] ALUctl;

	// Outputs
	wire [31:0] ALUOut;
	wire [1:0] Zero;

	// Instantiate the Unit Under Test (UUT)
	ALUWithControl uut (
		.A(A), 
		.B(B), 
		.ALUctl(ALUctl), 
		.ALUOut(ALUOut), 
		.Zero(Zero)
	);

	initial begin
		// Initialize Inputs
		A = 0;		B = 0;		ALUctl = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		A = 32'h55555555;		B = 32'haaaaaaaa;		ALUctl = 4'b0000;
		#100;
		A = 32'h55555555;		B = 32'haaaaaaaa;		ALUctl = 4'b0001;
		#100;
		A = 32'h55555555;		B = 32'haaaaaaaa;		ALUctl = 4'b0010;
		#100;
		A = 32'h55555555;		B = 32'haaaaaaaa;		ALUctl = 4'b0110;
		#100;
		A = 32'h55555555;		B = 32'haaaaaaaa;		ALUctl = 4'b0111;
		#100;
		A = 32'haaaaaaaa;		B = 32'h55555555;		ALUctl = 4'b0111;
		#100;
	end
      
endmodule

