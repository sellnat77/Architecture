`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:02:49 02/25/2015
// Design Name:   PC
// Module Name:   C:/Users/Russell/git/Architecture/PCIMID/PCTest.v
// Project Name:  PCIMID
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: PC
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module PCTest;

	// Inputs
	reg clk;
	reg PCIn;

	// Instantiate the Unit Under Test (UUT)
	PC uut (
		.clk(clk),
		.PCIn(PCIn)
	);

	initial begin
		// Initialize Inputs
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

