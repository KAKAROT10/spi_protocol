`timescale 1us / 1ns

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:48:38 04/04/2017
// Design Name:   ram
// Module Name:   E:/spi/ram_tb.v
// Project Name:  spi
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ram
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ram_tb;

	// Inputs
	reg [7:0] datain;
	reg enable;
	reg rw;
	reg [3:0] adrs;

	// Outputs
	wire [7:0] dataout;

	// Instantiate the Unit Under Test (UUT)
	ram uut (
		.datain(datain), 
		.dataout(dataout), 
		.enable(enable), 
		.rw(rw), 
		.adrs(adrs)
	);
integer i;
	initial begin :ramram
		// Initialize Inputs
		datain = 0;
		enable = 0;
		rw = 0;
		adrs = 0;

		// Wait 100 ns for global reset to finish
		#100;
		enable=1;
		for(i=0;i<16;i=i+1)
		begin
			adrs=i;
			datain=i*i;
			#10;
		end
		rw=1;
		for(i=0;i<16;i=i+1)
		begin
			adrs=i;
			#20;
		end
        
		// Add stimulus here

	end
      
endmodule

