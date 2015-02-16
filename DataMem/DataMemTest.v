`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:50:58 02/12/2015
// Design Name:   DataMem
// Module Name:   C:/Users/Russell/git/Architecture/DataMem/DataMemTest.v
// Project Name:  DataMem
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: DataMem
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module DataMemTest;

	// Inputs
	reg clk;
	reg [31:0]Address;
	reg [31:0]WriteData;
	reg [1:0]MemWrite;
	reg [1:0]MemRead;

	// Outputs
	wire [31:0]ReadData;

	// Instantiate the Unit Under Test (UUT)
	DataMem uut (
		.clk(clk), 
		.Address(Address), 
		.WriteData(WriteData), 
		.MemWrite(MemWrite), 
		.MemRead(MemRead), 
		.ReadData(ReadData)
		);
	
	always
	begin
		#50 clk = 0;
		#50 clk = 1;
	end
	



		initial begin
		// Initialize Inputs
		clk = 0;
		Address = 32'h00000014;
		WriteData = 0;
		MemWrite = 0;
		MemRead = 1;

		// Wait 100 ns for global reset to finish
		#50;
        
		// Add stimulus here
		

		#100;
		Address = 20;
		MemRead = 1;
		
		#100;
		Address = 40;

		#100;
		Address = 20;
		WriteData = 32'h99999999;
		MemWrite = 1;
		MemRead = 0;
		
		#100;
		Address = 40;
		WriteData = 32'heeeeeeee;	
		
		#100;
		Address = 20;
		MemWrite = 0;
		MemRead = 1;
		
		#100;
		Address = 40;
		
		#100;
		Address = 20;

	end
      
endmodule

