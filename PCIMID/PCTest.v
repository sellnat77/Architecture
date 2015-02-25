`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:03:43 02/25/2015
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

	// Outputs
	wire [7:0] PCOutput;

	// Instantiate the Unit Under Test (UUT)
	PC uut (
		.clk(clk), 
		.PCOutput(PCOutput)
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

