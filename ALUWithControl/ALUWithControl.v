`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:44:04 01/26/2015 
// Design Name: 
// Module Name:    ALUWithControl 
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
module ALUWithControl(
    input [31:0] a,
    input [31:0] b,
    input [3:0] ALUctl,
    output reg [31:0] ALUOut,
    output reg [1:0] zero
    );
	 
	 always @(a,b,ALUctl)
	 begin
		case(ALUctl)
			4'b0000: ALUOut = a&b;
			4'b0001: ALUOut = a|b;
			4'b0010: ALUOut = a+b;
			4'b0110: ALUOut = a-b;
			4'b0111: ALUOut = a<b ? 1:0;
		endcase
		if (ALUOut == 0) zero = 1;
		else zero = 0;
	end


endmodule
