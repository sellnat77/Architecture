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
	reg [7:0]DM[0:255];

	// Outputs
	reg [31:0]ReadData;

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
		DM[0] = 8'h00;	// beginning of 0th word
		DM[1] = 8'h00;
		DM[2] = 8'h00;
		DM[3] = 8'h00;
		DM[4] = 8'h00;	// beginning of first word
		DM[5] = 8'h00;
		DM[6] = 8'h00;
		DM[7] = 8'h00;
		//…	//no need as we will not use these locations
		DM[20] = 8'h55;	// This is the beginning of the fifth word. Remember addresses are in decimal here (without 0x prefix).
		DM[21] = 8'h55;
		DM[22] = 8'h55;
		DM[23] = 8'h55;
		//…….	// no need as we will not use these locations
		DM[40] = 8'haa;	//This is the tenth (Ath) word
		DM[41] = 8'haa;
		DM[42] = 8'haa;
		DM[43] = 8'haa;
		end
		initial begin

		//…	// no need as we will not use these locations
		// Initialize Inputs
		clk = 0;
		Address = 0;
		WriteData = 0;
		MemWrite = 0;
		MemRead = 1;

		// Wait 100 ns for global reset to finish
		#50;
        
		// Add stimulus here
		

		#100;
		Address[7:0] = 8'h14;
		//Address = 32'h14141414;
		MemRead = 1;
		
		#100;
		Address = 32'h28282828;

		#100;
		Address = 32'h14141414;
		WriteData = 32'h99999999;
		MemWrite = 1;
		MemRead = 0;
		
		#100;
		Address = 32'h28282828;
		WriteData = 32'heeeeeeee;	

	end
      
endmodule

