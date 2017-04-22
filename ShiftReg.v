`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:33:25 04/04/2017 
// Design Name: 
// Module Name:    ShiftReg 
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
module ShiftReg(
		input [7:0] datain,
		output reg [7:0] dataout,
		input ser,
		input load,
		input clk,
		input reset
    );

always @(posedge clk,negedge reset)
begin
	if(!reset)
		dataout<=0;
	else
		begin
			if(!load)
				dataout[7:0]<={ser,dataout[7:1]};
			else 
				dataout <= datain;
		end
end

endmodule