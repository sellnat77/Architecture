`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:28:22 01/21/2015 
// Design Name: 
// Module Name:    mux 
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
module mux(
    input In0,
    input In1,
    input In2,
    input In3,
    input [1:0] Sel,
    output reg Out
    );
	 
	 always @(In0,In1,In2,In3,Sel)
	 case(Sel)
	 0: Out <= In0;
	 1: Out <= In1;
	 2: Out <= In2;
	 3: Out <= In3;
	 endcase
	 
endmodule
