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
		#50 clk = 0;
		#50 clk = 1;
		end

	initial begin
		// Initialize Inputs
		#50;
		Read1 = 0;
		Read2 = 0;
		WriteReg = 0;
		RegWrite = 1;
		WriteData = 0;

		// Wait 100 ns for global reset to finish
		#100;
		Read1 = 5'b00101;
		Read2 = 0;
		WriteReg = 5'b00101;
		RegWrite = 1;
		WriteData = 32'h55555555;
		
		#100;
		Read1 = 0;
		Read2 = 5'b01010;
		WriteReg = 5'b001010;
		RegWrite = 1;
		WriteData = 32'haaaaaaaa;	
		
		#100;
		Read1 = 5'b00101;
		Read2 = 0;
		WriteReg = 5'b00101;
		RegWrite = 1;
		WriteData = 32'h00000000;
		
		#100;
		Read1 = 0;
		Read2 = 5'b01010;
		WriteReg = 5'b001010;
		RegWrite = 1;
		WriteData = 32'h00000000;			
       
			

	end
      
endmodule

