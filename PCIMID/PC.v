`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:57:07 02/25/2015 
// Design Name: 
// Module Name:    PC 
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
module PC(
    input clk,
	 input reg [7:0] PCIn,
  	 output wire [7:0]PCOut
    );
	 
	 always @ (posedge clk)
	 begin
		assign PCOut = PCOut + 4;
	 end
	 

	

endmodule
