`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   03:17:32 04/07/2017
// Design Name:   ram_flip
// Module Name:   E:/spi/ram_flip_tb.v
// Project Name:  spi
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ram_flip
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ram_flip_tb;

	// Inputs
	reg clk;
	reg [7:0] data_in;
	reg [3:0] adrs;
	reg read;
	reg enable;

	// Outputs
	wire [7:0] data_out;
	wire [7:0] memo;

	// Instantiate the Unit Under Test (UUT)
	ram_flip uut (
		.clk(clk), 
		.data_in(data_in), 
		.adrs(adrs), 
		.data_out(data_out), 
		.read(read), 
		.enable(enable), 
		.memo(memo)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		data_in = 0;
		adrs = 0;
		read = 0;
		enable = 0;

		// Wait 100 ns for global reset to finish
		#100;
        enable=1;
		  data_in=45;
		  adrs=2;
		 #76;
			read=1;
		// Add stimulus here

	end
      initial
			forever
				#5 clk=~clk;
endmodule

