`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:39:24 03/02/2015
// Design Name:   PCAndIM
// Module Name:   C:/Users/Russell/git/Architecture/PCIMID/PCAndIMTest.v
// Project Name:  PCIMID
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: PCAndIM
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module PCAndIMTest;

	// Inputs
	reg clk;

	// Outputs
	wire [31:0] InstructionOut;

	// Instantiate the Unit Under Test (UUT)
	PCAndIM uut (
		.clk(clk), 
		.InstructionOut(InstructionOut)
	);
	always
	begin
	#50 clk = 0;
	#50 clk = 1;
	end
	initial begin
		// Initialize Inputs
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

