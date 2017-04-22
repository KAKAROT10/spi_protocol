`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:20:50 04/04/2017
// Design Name:   Counter
// Module Name:   E:/spi/counter_tb.v
// Project Name:  spi
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Counter
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module counter_tb;

	// Inputs
	reg enable;
	reg pause;
	reg clk;

	// Outputs
	wire [7:0] count;

	// Instantiate the Unit Under Test (UUT)
	Counter uut (
		.enable(enable), 
		.pause(pause), 
		.count(count), 
		.clk(clk)
	);

	initial begin
		// Initialize Inputs
		enable = 0;
		pause = 0;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
        enable=1;
		forever
			#5 clk=~clk;
	end
      
endmodule

