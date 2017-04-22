`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:01:56 04/04/2017 
// Design Name: 
// Module Name:    ram_flip 
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
module ram_flip(
    input clk,
    input [7:0] data_in,
	 input [3:0] adrs,
    output reg [7:0] data_out,
    input read,
    input enable
    );
reg [7:0] memory [0:15];
always @ (posedge clk)
begin
	if(enable)
	begin
		if(!read) begin
			memory[adrs]<=data_in;
			 end
		else
			data_out<=memory[adrs];
	end
	else
		data_out<=8'bz;
end 

endmodule
