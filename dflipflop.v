`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:47:46 04/06/2017 
// Design Name: 
// Module Name:    dflipflop 
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
module dflipflop(
    input d,
    output reg q,
    input clk,
	 input reset
    );

always@ (posedge clk,negedge reset)
begin
if(!reset)
	q<=0;
else
	q<=d;

end
endmodule
