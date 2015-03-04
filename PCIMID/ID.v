`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:24:04 03/03/2015 
// Design Name: 
// Module Name:    ID 
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
module ID(
    input [31:0] instructionIn,
    output reg[8:0] ALUSrcB
    );
	 
			 wire Op0;
			 wire Op1;
			 wire Op2;
			 wire Op3;
			 wire Op4;
			 wire Op5;	 	 

 
	 always @ (instructionIn)
		begin
			case(instructionIn[31:26])
				6'b100011 : ALUSrcB = 9'b011110000;//lw
				6'b101011 : ALUSrcB = 9'b010001000;//sw			
			endcase
		end
		
	 always @ (instructionIn)
		begin
			case(instructionIn[7:0])
				6'b100000 : ALUSrcB = 9'b100100010;//add
				6'b100010 : ALUSrcB = 9'b100100010;//sub
				6'b100100 : ALUSrcB = 9'b100100010;//and
				6'b100101 : ALUSrcB = 9'b100100010;//or
				6'b101010 : ALUSrcB = 9'b100100010;//stl			
			endcase
		end		
	 
/*
				 reg Op0 = instructionIn[26];
			 reg Op1 = instructionIn[27];
			 reg Op2 = instructionIn[28];
			 reg Op3 = instructionIn[29];
			 reg Op4 = instructionIn[30];
			 reg Op5 = instructionIn[31]; 

	 always @ (instructionIn)
	 begin
	 
			 reg Op0 = instructionIn[26];
			 reg Op1 = instructionIn[27];
			 reg Op2 = instructionIn[28];
			 reg Op3 = instructionIn[29];
			 reg Op4 = instructionIn[30];
			 reg Op5 = instructionIn[31];
			 
			//if(instructionIn[31:26] == 6'b0)
			 wire Op0 = instructionIn[0];
			 wire Op1 = instructionIn[1];
			 wire Op2 = instructionIn[2];
			 wire Op3 = instructionIn[3];
			 wire Op4 = instructionIn[4];
			 wire Op5 = instructionIn[5];
	end
	 assign lw = Op5 & ~Op4 & ~Op3 & ~Op2 & Op1 & Op0;

	 assign sw = Op5 & ~Op4 & Op3 & ~Op2 & Op1 & Op0;
	 
	 
	 assign add = Op5 & ~Op4 & ~Op3 & ~Op2 & ~Op1 & ~Op0; 
	 assign sub = Op5 & ~Op4 & ~Op3 & ~Op2 & Op1 & ~Op0;
	 assign andr = Op5 & ~Op4 & ~Op3 & Op2 & ~Op1 & ~Op0;
	 assign orr = Op5 & ~Op4 & ~Op3 & Op2 & ~Op1 & Op0;
	 assign stl = Op5 & ~Op4 & Op3 & ~Op2 & Op1 & ~Op0;

	 assign ALUSrcB = lw | sw | add | sub | andr | orr | stl;

*/
endmodule
