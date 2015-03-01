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
	 
	 reg [31:0] instructionMemory [255:0];
	 
	 assign InstructionOut = instructionMemory[Address[9:2]];
	 
	 initial begin
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

	end	 
	 


endmodule
