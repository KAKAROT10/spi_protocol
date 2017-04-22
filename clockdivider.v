`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:02:14 04/07/2017 
// Design Name: 
// Module Name:    clockdivider 
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
module clockdivider(
    input raw,
    output reg clk
    );
	reg [24:0] ff;
always @ (posedge raw)
	{clk,ff}<=ff+1;

endmodule
