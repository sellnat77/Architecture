`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:36:31 03/03/2015
// Design Name:   ID
// Module Name:   C:/Users/Russell/git/Architecture/PCIMID/IDTest.v
// Project Name:  PCIMID
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ID
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module IDTest;

	// Inputs
	reg [31:0] instructionIn;

	// Outputs
	wire [8:0] ALUSrcB;

	// Instantiate the Unit Under Test (UUT)
	ID uut (
		.instructionIn(instructionIn), 
		.ALUSrcB(ALUSrcB)
	);

	initial begin
		// Initialize Inputs
		instructionIn = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

