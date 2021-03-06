`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:38:08 02/28/2015
// Design Name:   IM
// Module Name:   C:/Users/Russell/git/Architecture/PCIMID/IMTest.v
// Project Name:  PCIMID
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: IM
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module IMTest;

	// Inputs
	reg [7:0] Address;

	// Outputs
	wire [31:0] InstructionOut;

	// Instantiate the Unit Under Test (UUT)
	IM uut (
		.Address(Address), 
		.InstructionOut(InstructionOut)
	);

	initial begin
		// Initialize Inputs
		Address = 0;

		// Wait 100 ns for global reset to finish
		#100;
      Address = 4;
		#100;
      Address = 8;
		#100;
      Address = 12;
		#100;
      Address = 16;
		#100;
      Address = 20;
		#100;
      Address = 24;
		#100;
      Address = 28;
		#100;
      Address = 32;		
		// Add stimulus here

	end
      
endmodule

