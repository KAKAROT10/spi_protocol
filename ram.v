`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:42:06 04/04/2017 
// Design Name: 
// Module Name:    ram 
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
module ram(
    input [7:0] datain,
    output reg [7:0] dataout,
    input enable,
    input rw,
    input [3:0] adrs
    );
reg [7:0] memory [15:0];

always @ (enable or rw or adrs)
begin
	if(enable)
		begin
			if(rw)
				dataout=memory[adrs];
			else
				memory[adrs]=datain;
		end
	else
		dataout=8'bz;
end
endmodule

