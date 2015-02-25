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
    clk,PCOutput
    );
	 input clk;
	 output reg [7:0] PCOutput;
	 
	 initial 
		PCOutput = 0;
	 
	 always @ (posedge clk)
	 begin
		 
		PCOutput = PCOutput + 4;
		
	 end
	

	

endmodule
