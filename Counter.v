`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:00:09 04/04/2017 
// Design Name: 
// Module Name:    Counter 
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
module Counter(
		input reset,
		input enable,
		output reg [3:0] count,
		input clk
    );

always @(posedge clk or negedge reset)
begin
	if(!reset)
		count <= 4'b0;
	else
		begin
			if(enable)
				if(count==4'b1000)
					count<=4'b0001;
				else
					count <= count+4'b0001;
			else
				count <= count;
		end
end

endmodule
