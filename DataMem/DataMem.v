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
    input  [1:0]  MemWrite,
    input  [1:0]  MemRead,
	 output reg [31:0] ReadData
    
    );
	 
	 reg [7:0] DM [0:255];	
	 
	 always @ (posedge clk)
	 begin		
		if (MemWrite == 1)
			DM[Address [7:0]+0] = WriteData [31:24];
			DM[Address [7:0]+1] = WriteData [23:16];
		  	DM[Address [7:0]+2] = WriteData [15:8];
			DM[Address [7:0]+3 ] = WriteData [7:0];	
	 end
	 
	 always @ (posedge clk)
	 begin		
		if (MemRead == 1)
			assign ReadData = {DM[Address[7:0]+0],DM[Address[7:0]+1],
			DM[Address[7:0]+2],DM[Address[7:0]+3]};
	 end

endmodule
