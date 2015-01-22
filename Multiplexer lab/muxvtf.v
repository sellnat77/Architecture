`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:33:07 01/21/2015
// Design Name:   mux
// Module Name:   E:/341lab/lab1/muxvtf.v
// Project Name:  lab1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mux
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module muxvtf;

	// Inputs
	reg In0;
	reg In1;
	reg In2;
	reg In3;
	reg [1:0] Sel;

	// Outputs
	wire Out;

	// Instantiate the Unit Under Test (UUT)
	mux uut (
		.In0(In0), 
		.In1(In1), 
		.In2(In2), 
		.In3(In3), 
		.Sel(Sel), 
		.Out(Out)
	);

	initial begin
		// Initialize Inputs
		In0 = 0;
		In1 = 0;
		In2 = 0;
		In3 = 0;
		Sel = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		//Testing "Walking 1"
		#100 Sel = 0; In0 = 1;
		#100 Sel = 1; In0 = 0; In1 = 1;
		#100 Sel = 2; In1 = 0; In2 = 1;
		#100 Sel = 3; In2 = 0; In3 = 1;

		//Testing "Walking 0"
		#100 Sel = 0; In0 = 0; In1 = 1; In2 = 1;

		#100 Sel = 1; In0 = 1; In1 = 0;	

		#100 Sel = 2; In1 = 1; In2 = 0;

		#100 Sel = 3; In2 = 1; In3 = 0;	
		
		//All Zeros
		#100 Sel = 0; In0 = 0; In1 = 0; In2 = 0;
	end
      
endmodule

