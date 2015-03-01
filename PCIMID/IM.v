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
    output reg [31:0] InstructionOut
    );
	 
	 reg [31:0] iM [255:0];
	 
	 assign InstructionOut = iM[Address[9:2]];
	 
	 initial begin
		
		iM[0] = 8'h8c;
		iM[1] = 8'h05;
		iM[2] = 8'h14;
		iM[3] = 8'h8c;
		iM[4] = 8'h0a;
		iM[5] = 8'h14;
	


	/*
		instructionMemory[0] = 32'b 100011_00000_00101_0000000000010100;
		instructionMemory[1] = 32'b 100011_00000_00101_0000000000010100;
		instructionMemory[2] = 32'b 100011_00000_00101_0000000000010100;
		instructionMemory[3] = 32'b 100011_00000_00101_0000000000010100;
		instructionMemory[4] = 32'b 100011_00000_00101_0000000000010100;
		instructionMemory[5] = 32'b 100011_00000_00101_0000000000010100;
		instructionMemory[6] = 32'b 100011_00000_00101_0000000000010100;
		instructionMemory[7] = 32'b 100011_00000_00101_0000000000010100;

		instructionMemory[20] = 32'b 100011_00000_00101_0000000000010100; 
		instructionMemory[21] = 32'b 100011_00000_00101_0000000000010100;
		instructionMemory[22] = 32'b 100011_00000_00101_0000000000010100;
		instructionMemory[23] = 32'b 100011_00000_00101_0000000000010100;

		instructionMemory[40] = 32'b 100011_00000_00101_0000000000010100;
		instructionMemory[41] = 32'b 100011_00000_00101_0000000000010100;
		instructionMemory[42] = 32'b 100011_00000_00101_0000000000010100;
		instructionMemory[43] = 32'b 100011_00000_00101_0000000000010100;
*/
	end	 
	 


endmodule
