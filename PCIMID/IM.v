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
	 
	 reg [31:0] iM [255:0];
	 
	 assign InstructionOut = iM[Address[7:0]];

	 
	 initial begin
		
		//iM[0] = 8'h8c;
		//iM[1] = 8'h05;
		//iM[2] = 8'h14;
		//iM[3] = 8'h8c;
		//iM[4] = 8'h0a;
		//iM[5] = 8'h14;
	

		//0-3 load
		//4-7 
		//8-12
		//13-15
		//
		iM[0] = {6'h23, 5'd0, 5'd05,16'd20}; //load
		iM[4] = {6'h23, 5'd0, 5'd10,16'd20}; //load
		
		iM[8]  ={6'h00,5'd5,5'd10,5'd11,5'd0,6'h20}; //add
		iM[12] ={6'h02,5'd5,5'd10,5'd11,5'd0,6'h20}; //sub
		iM[16] ={6'h04,5'd5,5'd10,5'd11,5'd0,6'h20}; //and
		iM[20] ={6'h05,5'd5,5'd10,5'd11,5'd0,6'h20}; //or
		iM[24] ={6'h0a,5'd5,5'd10,5'd11,5'd0,6'h20}; //setl
		
		iM[28] ={6'h2b,5'd0,5'd11,16'd00};// store
		
/*		
		iM[0] = 8'h8c; //Load
		iM[1] = 8'h05;
		iM[2] = 8'h0;
		iM[3] = 8'h20;
		
		iM[4] = 8'h8c; //Load
		iM[5] = 8'h0a;
		iM[6] = 8'h0;
		iM[7] = 8'h20;

		
		
		iM[8] = 8'h00; //Add
		iM[9] = 8'h05;
		iM[10] = 8'h0a;
		iM[11] = 8'h20;
		
		iM[12] = 8'h00; //Sub
		iM[17] = 8'h05;
		iM[13] = 8'h05;
		iM[14] = 8'h0a;
		iM[15] = 8'h20;

		iM[16] = 8'h00; //AND
		iM[18] = 8'h0a;
		iM[19] = 8'h20;

		iM[20] = 8'h00; //OR
		iM[21] = 8'h05;
		iM[22] = 8'h0a;
		iM[23] = 8'h20;		

		iM[24] = 8'h00; //Set Less Than
		iM[25] = 8'h05;
		iM[26] = 8'h0a;
		iM[27] = 8'h20;

		iM[28] = 8'h2b; //Store
		iM[29] = 8'h05;
		iM[30] = 8'h0a;
		iM[31] = 8'h20;
		
		iM[32] = 8'h2b; //Store
		iM[33] = 8'h0a;
		iM[34] = 8'h0a;
		iM[35] = 8'h20;		
		
*/
	end	 
	 


endmodule
