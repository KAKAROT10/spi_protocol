`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:58:06 04/05/2017 
// Design Name: 
// Module Name:    ichip_2 
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
module ichip_2(
    input sck,
    input clk,
    output miso,
    input  mosi,
    input enable,
	 output done,
	 output dd
    );
wire serial_input,load,load1,load2,load3,read,ram_enable;
wire [7:0] ramin,ramout;
wire read1,select,select1;
wire [3:0] adrs1,adrs;
wire [3:0] count;
wire [7:0] datain,dataout;
wire [2:0] wires;
reg [1:0] rohit;
reg command;
wire clk;
wire dd;
assign dd=count[2];
Counter shift_count (.reset(enable),.enable(1'b1),.count(count),.clk(sck));
ShiftReg looping_reg (.datain(datain),.dataout(dataout),.ser(serial_input),.load(load),.clk(clk),.reset(enable));
ram_flip memory (.clk(clk),.data_in(ramin),.data_out(ramout),.adrs(adrs),.read(read),.enable(ram_enable)); 		
dflipflop for_mosi (.d(mosi),.clk(sck),.q(serial_input),.reset(enable));
bit8_mux_2x1 datainforregister (.a(dataout),.b(ramout),.c(datain),.select(select));
bit8_mux_2x1 uut1 (.a({wires,read,adrs}),.b(dataout),.c({wires,read1,adrs1}),.select(select1));
register adderess ({read1,adrs1},{read,adrs},clk,enable);

assign miso=dataout[0];
assign ramin=dataout;

always @ (posedge clk)
	rohit[1:0]<={rohit[0],sck};

assign load=~(~rohit[1]&rohit[0]);

always @ (posedge sck,negedge enable)
begin
	if(!enable)
		command<=1;
	else
	command<=count[3]^command;
end
dflipflop d1 (.d(~load),.q(load1),.clk(clk),.reset(enable));
dflipflop d2 (.d(load1),.q(load2),.clk(clk),.reset(enable));
dflipflop d3 (.d(load2),.q(load3),.clk(clk),.reset(enable));
dflipflop d4 (.d(load3),.q(done),.clk(clk),.reset(count[3]));
assign select1=command&count[3]&load1;
assign ram_enable=count[3]&load2&(command&read|~command&~read);
assign select=command&read&(load3); 
endmodule
