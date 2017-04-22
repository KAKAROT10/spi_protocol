`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:40:16 04/06/2017 
// Design Name: 
// Module Name:    register 
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
module register(
    input [7:0] a,
    output reg [7:0] b,
    input clk,
	 input reset
    );
always @(posedge clk,negedge reset)
	if(!reset)
	b<=0;
	else
	b<=a;

endmodule
