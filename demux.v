`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:33:52 04/06/2017 
// Design Name: 
// Module Name:    demux 
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
module demux(
		input [7:0] a,
		output reg [7:0] b,
		output reg [7:0] c,
		input select
    );
	 
always @ *
begin 
if(select)
	begin
	c=a;
	b=8'bz;
	end
else 
begin
	b=a;
	c=8'bz;
end
end

endmodule