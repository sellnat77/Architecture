`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:58:48 02/25/2015 
// Design Name: 
// Module Name:    IM 
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
module IM(
    input [7:0] Address,
    output wire [31:0] InstructionOut
    );
	 
	 reg [31:0] iM [255:0];
	 
	 assign InstructionOut = iM[Address[7:0]];

	 
	 initial begin
		

		iM[0] = {6'h23, 5'd0, 5'd05,16'd20}; //load
		iM[4] = {6'h23, 5'd0, 5'd10,16'd20}; //load
		
		iM[8]  ={6'h00,5'd5,5'd10,5'd11,5'd0,6'h20}; //add
		iM[12] ={6'h00,5'd5,5'd10,5'd11,5'd0,6'h22}; //sub
		iM[16] ={6'h00,5'd5,5'd10,5'd11,5'd0,6'h24}; //and
		iM[20] ={6'h00,5'd5,5'd10,5'd11,5'd0,6'h25}; //or
		iM[24] ={6'h00,5'd5,5'd10,5'd11,5'd0,6'h2a}; //setl
		
		iM[28] ={6'h2b,5'd0,5'd11,16'd00};// store
		iM[32] ={6'h2b,5'd0,5'd11,16'd00};// store

	end	 
	 


endmodule
