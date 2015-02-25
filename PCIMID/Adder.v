`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:23:44 02/25/2015 
// Design Name: 
// Module Name:    Adder 
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
module Adder(
    input [7:0] in,
    output reg [7:0] out
    );

	always @(posedge clk)
	begin
		assign out = in + 4;
		
	end

endmodule
