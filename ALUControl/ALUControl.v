`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:26:44 01/28/2015 
// Design Name: 
// Module Name:    ALUControl 
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
module ALUControl(
    input [5:0] FuncCode,
    input [1:0] ALUop,
    output reg [3:0] ALUctl
    );
	 
	 always @(FuncCode,ALUop)
	 begin
		case({FuncCode})
		
			6'b100000: ALUctl = 4'b0010;
			6'b100010: ALUctl = 4'b0110;
			6'b100100: ALUctl = 4'b0000;
			6'b100101: ALUctl = 4'b0001;
			6'b101010: ALUctl = 4'b0111;
			
		endcase
	end
endmodule
