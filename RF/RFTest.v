`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:34:14 02/04/2015
// Design Name:   RegisterFile
// Module Name:   C:/Users/Russell/git/Architecture/RF/RFTest.v
// Project Name:  RF
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: RegisterFile
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module RFTest;

	// Inputs
	reg clk;
	reg [4:0] Read1;
	reg [4:0] Read2;
	reg [4:0] WriteReg;
	reg [1:0] RegWrite;
	reg [31:0] WriteData;

	// Outputs
	wire [31:0] Data1;
	wire [31:0] Data2;

	// Instantiate the Unit Under Test (UUT)
	RegisterFile uut (
		.clk(clk), 
		.Read1(Read1), 
		.Read2(Read2), 
		.WriteReg(WriteReg), 
		.RegWrite(RegWrite), 
		.WriteData(WriteData), 
		.Data1(Data1), 
		.Data2(Data2)
	);
	
	always 
	begin
		#100 clk = 0;
		#100 clk = 1;
	end

	initial begin
		// Initialize Inputs
		Read1 = 0;
		Read2 = 0;
		WriteReg = 0;
		RegWrite = 0;
		WriteData = 0;

		// Wait 100 ns for global reset to finish
		#150;
		Read1 = 1;
		Read2 = 0;
		WriteReg = 1;
		RegWrite = 1;
		WriteData = 32'h55555555;
		
		#150;
		Read1 = 0;
		Read2 = 0;
		WriteReg = 0;
		RegWrite = 1;
		WriteData = 0;	
        
		#150;
		Read1 = 0;
		Read2 = 1;
		WriteReg = 1;
		RegWrite = 1;
		WriteData = 32'haaaaaaaa;		

	


	end
      
endmodule

