`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:21:26 02/04/2015 
// Design Name: 
// Module Name:    RegisterFile 
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
module RegisterFile(
	 input clk,
    input [4:0] Read1,
    input [4:0] Read2,
    input [4:0] WriteReg,
	 input [1:0]RegWrite,
    input [31:0] WriteData,
    output [31:0]Data1,
    output [31:0]Data2
    );
	 
	 reg [31:0] RF[0:31];

	assign Data1 = RF[Read1];
	assign Data2 = RF[Read2];
	 
	 always @(posedge clk)
		if(RegWrite == 1)
			RF[WriteReg] <= WriteData;
	
		
endmodule
