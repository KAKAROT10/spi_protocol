`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   06:05:39 04/08/2017
// Design Name:   ichip_2
// Module Name:   E:/spi2/ichip3_tb.v
// Project Name:  spi
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ichip_2
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ichip3_tb;

	// Inputs
	reg sck;
	reg clk;
	reg mosi;
	reg enable;
	reg [31:0] data;
	// Outputs
	wire miso;
	wire done;

	// Instantiate the Unit Under Test (UUT)
	ichip_2 uut (
		.sck(sck), 
		.clk(clk), 
		.miso(miso), 
		.mosi(mosi), 
		.enable(enable), 
		.done(done)
	);
integer i;
	initial begin
		// Initialize Inputs
		sck = 0;
		clk = 0;
		mosi = 0;
		enable = 0;
		data=32'h55128602;
		i=0;
		// Wait 100 ns for global reset to finish
		#100;
        enable=1;
		  forever
			#400 sck=~sck;
		// Add stimulus here

	end
      initial
		begin
		forever
			#50 clk=~clk;
		end
		initial
		begin
		
		end
		always @ (posedge sck)
		begin
			mosi=data[i];
			i=i+1;
		end
endmodule


