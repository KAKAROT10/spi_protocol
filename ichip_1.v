`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:27:31 04/04/2017 
// Design Name: 
// Module Name:    ichip_1 
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
module ichip_1(
	output miso,
	input mosi,
	input sck,		//transmission clock
	input clk,		//internal clock
	input enable,	//chip enable
	input master_reset
    );
reg [7:0] datain;
wire [7:0] count,dataout,ramout;
wire count_reset,count_enable;
reg command,read;
reg [3:0] adrs;
reg [7:0] ramin;
reg [1:0] state;
ShiftReg looping_reg (
		.datain(datain),
		.dataout(dataout),
		.ser(mosi),
		.load(1'b0),
		.clk(sck)
		);
		
Counter shift_count (
		.reset(master_reset),
		.enable(enable),
		.count(count),
		.clk(clk)
		);
ram_flip memory (.clk(clk),.data_in(ramin),.data_out(ramout),.adrs(adrs),.read(read),.enable(1'b1)); 		

assign miso=dataout[0];
assign count_reset=master_reset;
always @ (posedge sck)
begin
	if(!count[3])
		state<=2'b00;
end
always @ (posedge clk)
 begin
	if(count[3])
			begin
				if(!(state[1]&state[0]))
				state<=state+2'b01;
				if(state==0)
					if(command)
						begin
							adrs<=dataout[3:0];
						read<=dataout[4];
			end
		else if(state==2)
			begin
				if(command)
					begin
						if(read)
						datain<=ramout;
					end
				else 
					if(!read)
						ramin<=dataout;
			end
			end
 end
always @ (posedge clk)
begin
if(count[3])
	begin
		
	end

end
endmodule
