`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:44:52 02/12/2015 
// Design Name: 
// Module Name:    DataMem 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module DataMem(
    input clk,
    input  [31:0] Address,
    input  [31:0] WriteData,
    input  MemWrite,
    input  MemRead,
	 output reg [31:0] ReadData
	 );
	 reg [7:0] DM [0:255];
	
	 
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
		//…	// no need as we will not use these locations
	end	 
	 always @ (posedge clk)
	 begin		
		if (MemWrite == 1)
			DM[Address[7:0]+0]  <= WriteData[31:24];
			DM[Address[7:0]+1] <= WriteData[23:16];
		  	DM[Address[7:0]+2] <= WriteData[15:8];
			DM[Address[7:0]+3] <= WriteData[7:0];	
	 end
	 
	 always @ (posedge clk)
	 begin		
		if (MemRead == 1)
			ReadData[7:0] = DM[Address[7:0]+0];
			ReadData[15:8] = DM[Address[7:0]+1];
		  	ReadData[23:16] = DM[Address[7:0]+2];
			ReadData[31:24] = DM[Address[7:0]+3];		
	 end


endmodule
