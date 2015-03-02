`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:37:43 03/02/2015 
// Design Name: 
// Module Name:    PCAndIM 
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
module PCAndIM(
		input clk,
    output [31:0] InstructionOut
    );
	 wire [7:0]address;
	 
	 PC PC(clk,address);
	 IM IM(address,InstructionOut);


endmodule
