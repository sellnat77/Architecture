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
    input [31:0] A,
    input [31:0] B,
    input [3:0] ALUctl,
    output reg [31:0] ALUOut,
    output reg [1:0] Zero
    );
	 
	 always @(A,B,ALUctl)
	 begin
		case(ALUctl)
			4'b0000: ALUOut = A & B;
			4'b0001: ALUOut = A | B;
			4'b0010: ALUOut = A + B;
			4'b0110: ALUOut = A - B;
			4'b0111: ALUOut = A < B ? 1:0;
		endcase
		if (ALUOut == 0) Zero = 1;
		else Zero = 0;
	end


endmodule
