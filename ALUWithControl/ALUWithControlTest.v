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
	reg [31:0] a;
	reg [31:0] b;
	reg [3:0] ALUctl;

	// Outputs
	wire [31:0] ALUOut;
	wire [1:0] zero;

	// Instantiate the Unit Under Test (UUT)
	ALUWithControl uut (
		.a(a), 
		.b(b), 
		.ALUctl(ALUctl), 
		.ALUOut(ALUOut), 
		.zero(zero)
	);

	initial begin
		// Initialize Inputs
		a = 0;		b = 0;		ALUctl = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		a = 4'b0101;		b = 4'b0011;		ALUctl = 4'b0000;
		#100;
		a = 4'b0101;		b = 4'b0011;		ALUctl = 4'b0001;
		#100;
		a = 4'b0101;		b = 4'b0011;		ALUctl = 4'b0011;
		#100;
		a = 4'b0101;		b = 4'b0011;		ALUctl = 4'b0010;
		#100;
		a = 4'b0101;		b = 4'b0011;		ALUctl = 4'b0100;
		#100;
		a = 4'b0101;		b = 4'b0011;		ALUctl = 4'b0110;
		#100;
		a = 4'b0101;		b = 4'b0011;		ALUctl = 4'b0111;
		#100;
	end
      
endmodule

