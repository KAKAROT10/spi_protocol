
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:55:36 04/05/2017 
// Design Name: 
// Module Name:    bit8_mux_2x1 
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
module bit8_mux_2x1(
    input [7:0] a,
    input  [7:0] b,
    output reg [7:0] c,
    input select
    );
always @ *
begin 
if(!select)
	c=a;
else 
	c=b;
end

endmodule
