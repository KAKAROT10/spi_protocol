`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:35:16 04/06/2017
// Design Name:   ichip_2
// Module Name:   E:/spi/ichip2_tb.v
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

module ichip2_tb;

	// Inputs
	reg sck;
	reg clk;
	reg mosi;
	reg enable;
	reg [31:0] data;
	// Outputs
	wire miso;
	wire [7:0] tester;
	wire [7:0] tester2;
	wire tester3,tester5;
	wire [3:0] tester4,tester6;
	integer i;
	// Instantiate the Unit Under Test (UUT)
	ichip_2 uut ( 
		.sck(sck), 
		.clk(clk), 
		.miso(miso), 
		.mosi(mosi), 
		.enable(enable),
		.tester(tester),
		.tester2(tester2),
		.tester3(tester3),
		.tester4(tester4),
		.tester5(tester5),
		.tester6(tester6)
	);

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
			#35 sck=~sck;
		// Add stimulus here

	end
      initial
		begin
		forever
			#5 clk=~clk;
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

