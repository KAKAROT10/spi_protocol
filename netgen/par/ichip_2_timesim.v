////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: ichip_2_timesim.v
// /___/   /\     Timestamp: Sun Apr 09 16:34:55 2017
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -s 1 -pcf ichip_2.pcf -sdf_anno true -sdf_path netgen/par -insert_glbl true -insert_pp_buffers true -w -dir netgen/par -ofmt verilog -sim ichip_2.ncd ichip_2_timesim.v 
// Device	: 7a100tcsg324-1 (PRODUCTION 1.10 2013-10-13)
// Input file	: ichip_2.ncd
// Output file	: E:\spi3\netgen\par\ichip_2_timesim.v
// # of Modules	: 1
// Design Name	: ichip_2
// Xilinx        : C:\Xilinx\14.7\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module ichip_2 (
  sck, clk, mosi, enable, miso, done, dd
);
  input sck;
  input clk;
  input mosi;
  input enable;
  output miso;
  output done;
  output dd;
  wire clk_BUFGP;
  wire command_338;
  wire \d2/q_340 ;
  wire \memory/_n0045[7:0]<1>_0 ;
  wire \memory/_n0045[7:0]<2> ;
  wire \memory/_n0045[7:0]<3>_0 ;
  wire \memory/_n0045[7:0]<4> ;
  wire \memory/_n0045[7:0]<5>_0 ;
  wire \memory/_n0045[7:0]<6> ;
  wire \memory/_n0045[7:0]<7>_0 ;
  wire \memory/enable_clk_DFF_13_363 ;
  wire sck_IBUF_BUFG_364;
  wire \adderess/reset_inv ;
  wire \d1/q_367 ;
  wire \rohit[1]_rohit[0]_AND_1_o ;
  wire \d4/q_0 ;
  wire \d3/q_0 ;
  wire \d4/reset_inv ;
  wire sck_IBUF_382;
  wire \memory/write_ctrl_387 ;
  wire \memory/_n0045[7:0]<0> ;
  wire enable_IBUF_389;
  wire N2_0;
  wire \for_mosi/q_0 ;
  wire \clk_BUFGP/IBUFG_395 ;
  wire mosi_IBUF_396;
  wire \looping_reg/datain[7]_ser_mux_0_OUT<6> ;
  wire \looping_reg/datain[7]_ser_mux_0_OUT<7> ;
  wire \ramout<7>_pack_7 ;
  wire \for_mosi/q_16 ;
  wire \shift_count/count<3>_pack_6 ;
  wire \shift_count/Mcount_count ;
  wire \shift_count/Mcount_count2 ;
  wire \shift_count/Mcount_count3 ;
  wire \shift_count/Mcount_count1 ;
  wire \d4/q_29 ;
  wire N2;
  wire \count[3]_command_XOR_5_o ;
  wire \looping_reg/datain[7]_ser_mux_0_OUT<2> ;
  wire \looping_reg/datain[7]_ser_mux_0_OUT<3> ;
  wire \ramout<3>_pack_9 ;
  wire \d3/q_191 ;
  wire \memory/enable_clk_DFF_13_rstpot_223 ;
  wire \memory/_n0045[7:0]<1> ;
  wire \memory/_n0045[7:0]<5> ;
  wire \memory/_n0045[7:0]<7> ;
  wire \memory/_n0045[7:0]<3> ;
  wire \looping_reg/datain[7]_ser_mux_0_OUT<4> ;
  wire \ramout<5>_pack_7 ;
  wire \looping_reg/datain[7]_ser_mux_0_OUT<5> ;
  wire \ramout<1>_pack_7 ;
  wire \looping_reg/datain[7]_ser_mux_0_OUT<1> ;
  wire \looping_reg/datain[7]_ser_mux_0_OUT<0> ;
  wire \NlwBufferSignal_looping_reg/dataout_7/CLK ;
  wire \NlwBufferSignal_looping_reg/dataout_6/CLK ;
  wire \NlwBufferSignal_memory/data_out_3/CLK ;
  wire \NlwBufferSignal_memory/data_out_6/CLK ;
  wire \NlwBufferSignal_memory/data_out_1/CLK ;
  wire \NlwBufferSignal_memory/data_out_0/CLK ;
  wire \NlwBufferSignal_done_OBUF/I ;
  wire \NlwBufferSignal_dd_OBUF/I ;
  wire \NlwBufferSignal_for_mosi/q/CLK ;
  wire \NlwBufferSignal_sck_IBUF_BUFG/IN ;
  wire \NlwBufferSignal_shift_count/count_2/CLK ;
  wire \NlwBufferSignal_shift_count/count_3/CLK ;
  wire \NlwBufferSignal_shift_count/count_1/CLK ;
  wire \NlwBufferSignal_shift_count/count_0/CLK ;
  wire \NlwBufferSignal_miso_OBUF/I ;
  wire \NlwBufferSignal_clk_BUFGP/BUFG/IN ;
  wire \NlwBufferSignal_d4/q/CLK ;
  wire \NlwBufferSignal_d4/q/IN ;
  wire \NlwBufferSignal_adderess/b_3/CLK ;
  wire \NlwBufferSignal_adderess/b_2/CLK ;
  wire \NlwBufferSignal_d1/q/CLK ;
  wire \NlwBufferSignal_rohit_1/CLK ;
  wire \NlwBufferSignal_rohit_1/IN ;
  wire \NlwBufferSignal_rohit_0/CLK ;
  wire \NlwBufferSignal_rohit_0/IN ;
  wire \NlwBufferSignal_adderess/b_1/CLK ;
  wire \NlwBufferSignal_adderess/b_0/CLK ;
  wire \NlwBufferSignal_command/CLK ;
  wire \NlwBufferSignal_adderess/b_4/CLK ;
  wire \NlwBufferSignal_looping_reg/dataout_3/CLK ;
  wire \NlwBufferSignal_looping_reg/dataout_2/CLK ;
  wire \NlwBufferSignal_d3/q/CLK ;
  wire \NlwBufferSignal_d3/q/IN ;
  wire \NlwBufferSignal_memory/enable_clk_DFF_13/CLK ;
  wire \NlwBufferSignal_memory/Mram_memory1/RADR0 ;
  wire \NlwBufferSignal_memory/Mram_memory1/RADR1 ;
  wire \NlwBufferSignal_memory/Mram_memory1/RADR2 ;
  wire \NlwBufferSignal_memory/Mram_memory1/RADR3 ;
  wire \NlwBufferSignal_memory/Mram_memory1/CLK ;
  wire \NlwBufferSignal_memory/Mram_memory1/IN ;
  wire \NlwBufferSignal_memory/Mram_memory1/WADR0 ;
  wire \NlwBufferSignal_memory/Mram_memory1/WADR1 ;
  wire \NlwBufferSignal_memory/Mram_memory1/WADR2 ;
  wire \NlwBufferSignal_memory/Mram_memory1/WADR3 ;
  wire \NlwBufferSignal_memory/Mram_memory2/RADR0 ;
  wire \NlwBufferSignal_memory/Mram_memory2/RADR1 ;
  wire \NlwBufferSignal_memory/Mram_memory2/RADR2 ;
  wire \NlwBufferSignal_memory/Mram_memory2/RADR3 ;
  wire \NlwBufferSignal_memory/Mram_memory2/CLK ;
  wire \NlwBufferSignal_memory/Mram_memory2/IN ;
  wire \NlwBufferSignal_memory/Mram_memory2/WADR0 ;
  wire \NlwBufferSignal_memory/Mram_memory2/WADR1 ;
  wire \NlwBufferSignal_memory/Mram_memory2/WADR2 ;
  wire \NlwBufferSignal_memory/Mram_memory2/WADR3 ;
  wire \NlwBufferSignal_memory/Mram_memory3/RADR0 ;
  wire \NlwBufferSignal_memory/Mram_memory3/RADR1 ;
  wire \NlwBufferSignal_memory/Mram_memory3/RADR2 ;
  wire \NlwBufferSignal_memory/Mram_memory3/RADR3 ;
  wire \NlwBufferSignal_memory/Mram_memory3/CLK ;
  wire \NlwBufferSignal_memory/Mram_memory3/IN ;
  wire \NlwBufferSignal_memory/Mram_memory3/WADR0 ;
  wire \NlwBufferSignal_memory/Mram_memory3/WADR1 ;
  wire \NlwBufferSignal_memory/Mram_memory3/WADR2 ;
  wire \NlwBufferSignal_memory/Mram_memory3/WADR3 ;
  wire \NlwBufferSignal_memory/Mram_memory4/RADR0 ;
  wire \NlwBufferSignal_memory/Mram_memory4/RADR1 ;
  wire \NlwBufferSignal_memory/Mram_memory4/RADR2 ;
  wire \NlwBufferSignal_memory/Mram_memory4/RADR3 ;
  wire \NlwBufferSignal_memory/Mram_memory4/CLK ;
  wire \NlwBufferSignal_memory/Mram_memory4/IN ;
  wire \NlwBufferSignal_memory/Mram_memory4/WADR0 ;
  wire \NlwBufferSignal_memory/Mram_memory4/WADR1 ;
  wire \NlwBufferSignal_memory/Mram_memory4/WADR2 ;
  wire \NlwBufferSignal_memory/Mram_memory4/WADR3 ;
  wire \NlwBufferSignal_memory/Mram_memory5/RADR0 ;
  wire \NlwBufferSignal_memory/Mram_memory5/RADR1 ;
  wire \NlwBufferSignal_memory/Mram_memory5/RADR2 ;
  wire \NlwBufferSignal_memory/Mram_memory5/RADR3 ;
  wire \NlwBufferSignal_memory/Mram_memory5/CLK ;
  wire \NlwBufferSignal_memory/Mram_memory5/IN ;
  wire \NlwBufferSignal_memory/Mram_memory5/WADR0 ;
  wire \NlwBufferSignal_memory/Mram_memory5/WADR1 ;
  wire \NlwBufferSignal_memory/Mram_memory5/WADR2 ;
  wire \NlwBufferSignal_memory/Mram_memory5/WADR3 ;
  wire \NlwBufferSignal_memory/Mram_memory6/RADR0 ;
  wire \NlwBufferSignal_memory/Mram_memory6/RADR1 ;
  wire \NlwBufferSignal_memory/Mram_memory6/RADR2 ;
  wire \NlwBufferSignal_memory/Mram_memory6/RADR3 ;
  wire \NlwBufferSignal_memory/Mram_memory6/CLK ;
  wire \NlwBufferSignal_memory/Mram_memory6/IN ;
  wire \NlwBufferSignal_memory/Mram_memory6/WADR0 ;
  wire \NlwBufferSignal_memory/Mram_memory6/WADR1 ;
  wire \NlwBufferSignal_memory/Mram_memory6/WADR2 ;
  wire \NlwBufferSignal_memory/Mram_memory6/WADR3 ;
  wire \NlwBufferSignal_memory/Mram_memory7/RADR0 ;
  wire \NlwBufferSignal_memory/Mram_memory7/RADR1 ;
  wire \NlwBufferSignal_memory/Mram_memory7/RADR2 ;
  wire \NlwBufferSignal_memory/Mram_memory7/RADR3 ;
  wire \NlwBufferSignal_memory/Mram_memory7/CLK ;
  wire \NlwBufferSignal_memory/Mram_memory7/IN ;
  wire \NlwBufferSignal_memory/Mram_memory7/WADR0 ;
  wire \NlwBufferSignal_memory/Mram_memory7/WADR1 ;
  wire \NlwBufferSignal_memory/Mram_memory7/WADR2 ;
  wire \NlwBufferSignal_memory/Mram_memory7/WADR3 ;
  wire \NlwBufferSignal_memory/Mram_memory8/RADR0 ;
  wire \NlwBufferSignal_memory/Mram_memory8/RADR1 ;
  wire \NlwBufferSignal_memory/Mram_memory8/RADR2 ;
  wire \NlwBufferSignal_memory/Mram_memory8/RADR3 ;
  wire \NlwBufferSignal_memory/Mram_memory8/CLK ;
  wire \NlwBufferSignal_memory/Mram_memory8/IN ;
  wire \NlwBufferSignal_memory/Mram_memory8/WADR0 ;
  wire \NlwBufferSignal_memory/Mram_memory8/WADR1 ;
  wire \NlwBufferSignal_memory/Mram_memory8/WADR2 ;
  wire \NlwBufferSignal_memory/Mram_memory8/WADR3 ;
  wire \NlwBufferSignal_looping_reg/dataout_5/CLK ;
  wire \NlwBufferSignal_looping_reg/dataout_4/CLK ;
  wire \NlwBufferSignal_looping_reg/dataout_1/CLK ;
  wire \NlwBufferSignal_looping_reg/dataout_0/CLK ;
  wire \NlwBufferSignal_d2/q/CLK ;
  wire \NlwBufferSignal_d2/q/IN ;
  wire \NlwBufferSignal_memory/data_out_7/CLK ;
  wire \NlwBufferSignal_memory/data_out_2/CLK ;
  wire \NlwBufferSignal_memory/data_out_5/CLK ;
  wire \NlwBufferSignal_memory/data_out_4/CLK ;
  wire VCC;
  wire GND;
  wire [3 : 0] \shift_count/count ;
  wire [4 : 0] \adderess/b ;
  wire [7 : 0] ramout;
  wire [7 : 0] \memory/data_out ;
  wire [7 : 0] \looping_reg/dataout ;
  wire [1 : 0] rohit;
  wire [7 : 0] \memory/n0043 ;
  wire [4 : 0] n0022;
  initial $sdf_annotate("netgen/par/ichip_2_timesim.sdf");
  X_BUF   \looping_reg/dataout<7>/looping_reg/dataout<7>_DMUX_Delay  (
    .I(\ramout<7>_pack_7 ),
    .O(ramout[7])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X42Y120" ),
    .INIT ( 64'hFFFF00FFFFFF00FF ))
  \memory/data_out<6>LogicTrst1  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(\memory/data_out [6]),
    .ADR3(\memory/enable_clk_DFF_13_363 ),
    .ADR5(1'b1),
    .O(ramout[6])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X42Y120" ),
    .INIT ( 32'hF0FFF0FF ))
  \memory/data_out<7>LogicTrst1  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(\memory/data_out [7]),
    .ADR4(1'b1),
    .ADR3(\memory/enable_clk_DFF_13_363 ),
    .O(\ramout<7>_pack_7 )
  );
  X_FF #(
    .LOC ( "SLICE_X42Y120" ),
    .INIT ( 1'b0 ))
  \looping_reg/dataout_7  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_looping_reg/dataout_7/CLK ),
    .I(\looping_reg/datain[7]_ser_mux_0_OUT<7> ),
    .O(\looping_reg/dataout [7]),
    .RST(\adderess/reset_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X42Y120" ),
    .INIT ( 64'hAFACACACA0ACACAC ))
  \looping_reg/mux71  (
    .ADR0(\for_mosi/q_0 ),
    .ADR3(\adderess/b [4]),
    .ADR4(N2_0),
    .ADR1(\looping_reg/dataout [7]),
    .ADR2(\rohit[1]_rohit[0]_AND_1_o ),
    .ADR5(ramout[7]),
    .O(\looping_reg/datain[7]_ser_mux_0_OUT<7> )
  );
  X_FF #(
    .LOC ( "SLICE_X42Y120" ),
    .INIT ( 1'b0 ))
  \looping_reg/dataout_6  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_looping_reg/dataout_6/CLK ),
    .I(\looping_reg/datain[7]_ser_mux_0_OUT<6> ),
    .O(\looping_reg/dataout [6]),
    .RST(\adderess/reset_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X42Y120" ),
    .INIT ( 64'hFAEE5044EEEE4444 ))
  \looping_reg/mux61  (
    .ADR4(\looping_reg/dataout [7]),
    .ADR3(\adderess/b [4]),
    .ADR5(N2_0),
    .ADR1(\looping_reg/dataout [6]),
    .ADR0(\rohit[1]_rohit[0]_AND_1_o ),
    .ADR2(ramout[6]),
    .O(\looping_reg/datain[7]_ser_mux_0_OUT<6> )
  );
  X_FF #(
    .LOC ( "SLICE_X42Y119" ),
    .INIT ( 1'b0 ))
  \memory/data_out_3  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_memory/data_out_3/CLK ),
    .I(\memory/n0043 [3]),
    .O(\memory/data_out [3]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X42Y119" ),
    .INIT ( 64'hFFFF0400FBFF0000 ))
  \memory/Mmux_n004341  (
    .ADR0(command_338),
    .ADR1(\shift_count/count [3]),
    .ADR3(\d2/q_340 ),
    .ADR2(\adderess/b [4]),
    .ADR4(\memory/_n0045[7:0]<3>_0 ),
    .ADR5(ramout[3]),
    .O(\memory/n0043 [3])
  );
  X_FF #(
    .LOC ( "SLICE_X42Y119" ),
    .INIT ( 1'b0 ))
  \memory/data_out_6  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_memory/data_out_6/CLK ),
    .I(\memory/n0043 [6]),
    .O(\memory/data_out [6]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X42Y119" ),
    .INIT ( 64'hFFFF0400FBFF0000 ))
  \memory/Mmux_n004371  (
    .ADR0(command_338),
    .ADR1(\shift_count/count [3]),
    .ADR3(\d2/q_340 ),
    .ADR2(\adderess/b [4]),
    .ADR4(\memory/_n0045[7:0]<6> ),
    .ADR5(ramout[6]),
    .O(\memory/n0043 [6])
  );
  X_FF #(
    .LOC ( "SLICE_X42Y119" ),
    .INIT ( 1'b0 ))
  \memory/data_out_1  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_memory/data_out_1/CLK ),
    .I(\memory/n0043 [1]),
    .O(\memory/data_out [1]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X42Y119" ),
    .INIT ( 64'hFFFDFFFF00080000 ))
  \memory/Mmux_n004321  (
    .ADR3(command_338),
    .ADR0(\shift_count/count [3]),
    .ADR4(\d2/q_340 ),
    .ADR2(\adderess/b [4]),
    .ADR5(\memory/_n0045[7:0]<1>_0 ),
    .ADR1(ramout[1]),
    .O(\memory/n0043 [1])
  );
  X_FF #(
    .LOC ( "SLICE_X42Y119" ),
    .INIT ( 1'b0 ))
  \memory/data_out_0  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_memory/data_out_0/CLK ),
    .I(\memory/n0043 [0]),
    .O(\memory/data_out [0]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X42Y119" ),
    .INIT ( 64'hFFFFFDFF02000000 ))
  \memory/Mmux_n004311  (
    .ADR1(command_338),
    .ADR0(\shift_count/count [3]),
    .ADR3(\d2/q_340 ),
    .ADR2(\adderess/b [4]),
    .ADR5(\memory/_n0045[7:0]<0> ),
    .ADR4(ramout[0]),
    .O(\memory/n0043 [0])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y149" ))
  done_15 (
    .PAD(done)
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y149" ))
  done_OBUF (
    .I(\NlwBufferSignal_done_OBUF/I ),
    .O(done)
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y114" ))
  dd_21 (
    .PAD(dd)
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y114" ))
  dd_OBUF (
    .I(\NlwBufferSignal_dd_OBUF/I ),
    .O(dd)
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y117" ))
  mosi_12 (
    .PAD(mosi)
  );
  X_BUF #(
    .LOC ( "IOB_X0Y117" ))
  mosi_IBUF (
    .O(mosi_IBUF_396),
    .I(mosi)
  );
  X_BUF   \for_mosi/q/for_mosi/q_Q1_Delay  (
    .I(\for_mosi/q_16 ),
    .O(\for_mosi/q_0 )
  );
  X_FF #(
    .LOC ( "ILOGIC_X0Y117" ),
    .INIT ( 1'b0 ))
  \for_mosi/q  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_for_mosi/q/CLK ),
    .I(mosi_IBUF_396),
    .O(\for_mosi/q_16 ),
    .SET(GND),
    .RST(\adderess/reset_inv )
  );
  X_CKBUF #(
    .LOC ( "BUFGCTRL_X0Y2" ))
  sck_IBUF_BUFG (
    .I(\NlwBufferSignal_sck_IBUF_BUFG/IN ),
    .O(sck_IBUF_BUFG_364)
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y118" ))
  sck_18 (
    .PAD(sck)
  );
  X_BUF #(
    .LOC ( "IOB_X0Y118" ))
  sck_IBUF (
    .O(sck_IBUF_382),
    .I(sck)
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y146" ))
  enable_6 (
    .PAD(enable)
  );
  X_BUF #(
    .LOC ( "IOB_X0Y146" ))
  enable_IBUF (
    .O(enable_IBUF_389),
    .I(enable)
  );
  X_BUF   \shift_count/count<2>/shift_count/count<2>_CMUX_Delay  (
    .I(\shift_count/count<3>_pack_6 ),
    .O(\shift_count/count [3])
  );
  X_FF #(
    .LOC ( "SLICE_X36Y115" ),
    .INIT ( 1'b0 ))
  \shift_count/count_2  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_shift_count/count_2/CLK ),
    .I(\shift_count/Mcount_count2 ),
    .O(\shift_count/count [2]),
    .RST(\adderess/reset_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X36Y115" ),
    .INIT ( 64'h3C3CCCCC3C3CCCCC ))
  \shift_count/Mcount_count_xor<2>11  (
    .ADR0(1'b1),
    .ADR3(1'b1),
    .ADR4(\shift_count/count [1]),
    .ADR1(\shift_count/count [2]),
    .ADR2(\shift_count/count [0]),
    .ADR5(1'b1),
    .O(\shift_count/Mcount_count2 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X36Y115" ),
    .INIT ( 32'h3FC0FC00 ))
  \shift_count/Mcount_count_xor<3>11  (
    .ADR0(1'b1),
    .ADR3(\shift_count/count [3]),
    .ADR4(\shift_count/count [1]),
    .ADR1(\shift_count/count [2]),
    .ADR2(\shift_count/count [0]),
    .O(\shift_count/Mcount_count3 )
  );
  X_FF #(
    .LOC ( "SLICE_X36Y115" ),
    .INIT ( 1'b0 ))
  \shift_count/count_3  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_shift_count/count_3/CLK ),
    .I(\shift_count/Mcount_count3 ),
    .O(\shift_count/count<3>_pack_6 ),
    .RST(\adderess/reset_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X36Y115" ),
    .INIT ( 1'b0 ))
  \shift_count/count_1  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_shift_count/count_1/CLK ),
    .I(\shift_count/Mcount_count1 ),
    .O(\shift_count/count [1]),
    .RST(\adderess/reset_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X36Y115" ),
    .INIT ( 64'h0000FFFFFFFF0000 ))
  \shift_count/Mcount_count_xor<1>11  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(\shift_count/count [1]),
    .ADR3(1'b1),
    .ADR5(\shift_count/count [0]),
    .O(\shift_count/Mcount_count1 )
  );
  X_FF #(
    .LOC ( "SLICE_X36Y115" ),
    .INIT ( 1'b0 ))
  \shift_count/count_0  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_shift_count/count_0/CLK ),
    .I(\shift_count/Mcount_count ),
    .O(\shift_count/count [0]),
    .RST(\adderess/reset_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X36Y115" ),
    .INIT ( 64'h00000000FFFFFFFF ))
  \shift_count/Mcount_count_xor<0>11_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR5(\shift_count/count [0]),
    .ADR4(1'b1),
    .ADR3(1'b1),
    .O(\shift_count/Mcount_count )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X28Y145" ),
    .INIT ( 64'h3333333333333333 ))
  \adderess/reset_inv1_INV_0  (
    .ADR0(1'b1),
    .ADR5(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .ADR1(enable_IBUF_389),
    .O(\adderess/reset_inv )
  );
  X_IPAD #(
    .LOC ( "IOB_X1Y126" ))
  clk_3 (
    .PAD(clk)
  );
  X_BUF #(
    .LOC ( "IOB_X1Y126" ))
  \clk_BUFGP/IBUFG  (
    .O(\clk_BUFGP/IBUFG_395 ),
    .I(clk)
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y109" ))
  miso_9 (
    .PAD(miso)
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y109" ))
  miso_OBUF (
    .I(\NlwBufferSignal_miso_OBUF/I ),
    .O(miso)
  );
  X_CKBUF #(
    .LOC ( "BUFGCTRL_X0Y26" ))
  \clk_BUFGP/BUFG  (
    .I(\NlwBufferSignal_clk_BUFGP/BUFG/IN ),
    .O(clk_BUFGP)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X31Y131" ),
    .INIT ( 64'h00000000FFFFFFFF ))
  \d4/reset_inv1_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .ADR5(\shift_count/count [3]),
    .O(\d4/reset_inv )
  );
  X_BUF   \d4/q/d4/q_DMUX_Delay  (
    .I(\d4/q_29 ),
    .O(\d4/q_0 )
  );
  X_FF #(
    .LOC ( "SLICE_X30Y131" ),
    .INIT ( 1'b0 ))
  \d4/q  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_d4/q/CLK ),
    .I(\NlwBufferSignal_d4/q/IN ),
    .O(\d4/q_29 ),
    .RST(\d4/reset_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X40Y118" ),
    .INIT ( 1'b0 ))
  \adderess/b_3  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_adderess/b_3/CLK ),
    .I(n0022[3]),
    .O(\adderess/b [3]),
    .RST(\adderess/reset_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X40Y118" ),
    .INIT ( 64'hF8F0F8F070F070F0 ))
  \uut1/Mmux_c41  (
    .ADR4(1'b1),
    .ADR1(command_338),
    .ADR0(\shift_count/count [3]),
    .ADR2(\adderess/b [3]),
    .ADR3(\d1/q_367 ),
    .ADR5(\looping_reg/dataout [3]),
    .O(n0022[3])
  );
  X_FF #(
    .LOC ( "SLICE_X40Y118" ),
    .INIT ( 1'b0 ))
  \adderess/b_2  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_adderess/b_2/CLK ),
    .I(n0022[2]),
    .O(\adderess/b [2]),
    .RST(\adderess/reset_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X40Y118" ),
    .INIT ( 64'hECEC4C4CCCCCCCCC ))
  \uut1/Mmux_c311  (
    .ADR3(1'b1),
    .ADR2(command_338),
    .ADR0(\shift_count/count [3]),
    .ADR1(\adderess/b [2]),
    .ADR5(\d1/q_367 ),
    .ADR4(\looping_reg/dataout [2]),
    .O(n0022[2])
  );
  X_FF #(
    .LOC ( "SLICE_X39Y116" ),
    .INIT ( 1'b0 ))
  \d1/q  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_d1/q/CLK ),
    .I(\rohit[1]_rohit[0]_AND_1_o ),
    .O(\d1/q_367 ),
    .RST(\adderess/reset_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X39Y116" ),
    .INIT ( 64'h00000000FFFF0000 ))
  \rohit[1]_rohit[0]_AND_1_o1  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR5(rohit[1]),
    .ADR4(rohit[0]),
    .O(\rohit[1]_rohit[0]_AND_1_o )
  );
  X_FF #(
    .LOC ( "SLICE_X38Y116" ),
    .INIT ( 1'b0 ))
  rohit_1 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_rohit_1/CLK ),
    .I(\NlwBufferSignal_rohit_1/IN ),
    .O(rohit[1]),
    .RST(GND),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X38Y116" ),
    .INIT ( 1'b0 ))
  rohit_0 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_rohit_0/CLK ),
    .I(\NlwBufferSignal_rohit_0/IN ),
    .O(rohit[0]),
    .RST(GND),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X40Y119" ),
    .INIT ( 1'b0 ))
  \adderess/b_1  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_adderess/b_1/CLK ),
    .I(n0022[1]),
    .O(\adderess/b [1]),
    .RST(\adderess/reset_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X40Y119" ),
    .INIT ( 64'hECCCECCC4CCC4CCC ))
  \uut1/Mmux_c211  (
    .ADR4(1'b1),
    .ADR3(command_338),
    .ADR0(\shift_count/count [3]),
    .ADR1(\adderess/b [1]),
    .ADR2(\d1/q_367 ),
    .ADR5(\looping_reg/dataout [1]),
    .O(n0022[1])
  );
  X_FF #(
    .LOC ( "SLICE_X40Y119" ),
    .INIT ( 1'b0 ))
  \adderess/b_0  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_adderess/b_0/CLK ),
    .I(n0022[0]),
    .O(\adderess/b [0]),
    .RST(\adderess/reset_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X40Y119" ),
    .INIT ( 64'hD8D8F0F0F0F0F0F0 ))
  \uut1/Mmux_c111  (
    .ADR3(1'b1),
    .ADR5(command_338),
    .ADR0(\shift_count/count [3]),
    .ADR2(\adderess/b [0]),
    .ADR4(\d1/q_367 ),
    .ADR1(\looping_reg/dataout [0]),
    .O(n0022[0])
  );
  X_BUF   \command/command_AMUX_Delay  (
    .I(N2),
    .O(N2_0)
  );
  X_FF #(
    .LOC ( "SLICE_X40Y120" ),
    .INIT ( 1'b1 ))
  command (
    .CE(VCC),
    .CLK(\NlwBufferSignal_command/CLK ),
    .I(\count[3]_command_XOR_5_o ),
    .O(command_338),
    .SET(\adderess/reset_inv ),
    .RST(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X40Y120" ),
    .INIT ( 64'h0F0FF0F00F0FF0F0 ))
  \Mxor_count[3]_command_XOR_5_o_xo<0>1  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR3(1'b1),
    .ADR2(command_338),
    .ADR4(\shift_count/count [3]),
    .ADR5(1'b1),
    .O(\count[3]_command_XOR_5_o )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X40Y120" ),
    .INIT ( 32'hF000F000 ))
  \looping_reg/mux71_SW0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR3(\d3/q_0 ),
    .ADR2(command_338),
    .ADR4(1'b1),
    .O(N2)
  );
  X_BUF   \adderess/b<4>/adderess/b<4>_CMUX_Delay  (
    .I(\ramout<3>_pack_9 ),
    .O(ramout[3])
  );
  X_FF #(
    .LOC ( "SLICE_X41Y118" ),
    .INIT ( 1'b0 ))
  \adderess/b_4  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_adderess/b_4/CLK ),
    .I(n0022[4]),
    .O(\adderess/b [4]),
    .RST(\adderess/reset_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X41Y118" ),
    .INIT ( 64'hF8F8F0F07070F0F0 ))
  \uut1/Mmux_c51  (
    .ADR3(1'b1),
    .ADR4(command_338),
    .ADR0(\shift_count/count [3]),
    .ADR2(\adderess/b [4]),
    .ADR1(\d1/q_367 ),
    .ADR5(\looping_reg/dataout [4]),
    .O(n0022[4])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X41Y118" ),
    .INIT ( 64'hFF00FFFFFF00FFFF ))
  \memory/data_out<2>LogicTrst1  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\memory/data_out [2]),
    .ADR4(\memory/enable_clk_DFF_13_363 ),
    .ADR5(1'b1),
    .O(ramout[2])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X41Y118" ),
    .INIT ( 32'hF0F0FFFF ))
  \memory/data_out<3>LogicTrst1  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(\memory/data_out [3]),
    .ADR3(1'b1),
    .ADR4(\memory/enable_clk_DFF_13_363 ),
    .O(\ramout<3>_pack_9 )
  );
  X_FF #(
    .LOC ( "SLICE_X41Y118" ),
    .INIT ( 1'b0 ))
  \looping_reg/dataout_3  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_looping_reg/dataout_3/CLK ),
    .I(\looping_reg/datain[7]_ser_mux_0_OUT<3> ),
    .O(\looping_reg/dataout [3]),
    .RST(\adderess/reset_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X41Y118" ),
    .INIT ( 64'hF0EEF044F0CCF0CC ))
  \looping_reg/mux31  (
    .ADR2(\looping_reg/dataout [4]),
    .ADR0(\adderess/b [4]),
    .ADR5(N2_0),
    .ADR1(\looping_reg/dataout [3]),
    .ADR3(\rohit[1]_rohit[0]_AND_1_o ),
    .ADR4(ramout[3]),
    .O(\looping_reg/datain[7]_ser_mux_0_OUT<3> )
  );
  X_FF #(
    .LOC ( "SLICE_X41Y118" ),
    .INIT ( 1'b0 ))
  \looping_reg/dataout_2  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_looping_reg/dataout_2/CLK ),
    .I(\looping_reg/datain[7]_ser_mux_0_OUT<2> ),
    .O(\looping_reg/dataout [2]),
    .RST(\adderess/reset_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X41Y118" ),
    .INIT ( 64'hCCF0CCAACCAACCAA ))
  \looping_reg/mux21  (
    .ADR1(\looping_reg/dataout [3]),
    .ADR4(\adderess/b [4]),
    .ADR5(N2_0),
    .ADR0(\looping_reg/dataout [2]),
    .ADR3(\rohit[1]_rohit[0]_AND_1_o ),
    .ADR2(ramout[2]),
    .O(\looping_reg/datain[7]_ser_mux_0_OUT<2> )
  );
  X_BUF   \d3/q/d3/q_AMUX_Delay  (
    .I(\d3/q_191 ),
    .O(\d3/q_0 )
  );
  X_FF #(
    .LOC ( "SLICE_X41Y121" ),
    .INIT ( 1'b0 ))
  \d3/q  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_d3/q/CLK ),
    .I(\NlwBufferSignal_d3/q/IN ),
    .O(\d3/q_191 ),
    .RST(\adderess/reset_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X43Y118" ),
    .INIT ( 64'h0000000022220000 ))
  \memory/write_ctrl  (
    .ADR3(1'b1),
    .ADR2(1'b1),
    .ADR1(command_338),
    .ADR0(\shift_count/count [3]),
    .ADR4(\d2/q_340 ),
    .ADR5(\adderess/b [4]),
    .O(\memory/write_ctrl_387 )
  );
  X_FF #(
    .LOC ( "SLICE_X43Y120" ),
    .INIT ( 1'b0 ))
  \memory/enable_clk_DFF_13  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_memory/enable_clk_DFF_13/CLK ),
    .I(\memory/enable_clk_DFF_13_rstpot_223 ),
    .O(\memory/enable_clk_DFF_13_363 ),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X43Y120" ),
    .INIT ( 64'h9080000090800000 ))
  \memory/enable_clk_DFF_13_rstpot  (
    .ADR5(1'b1),
    .ADR4(\shift_count/count [3]),
    .ADR2(\d2/q_340 ),
    .ADR3(\memory/enable_clk_DFF_13_363 ),
    .ADR0(\adderess/b [4]),
    .ADR1(command_338),
    .O(\memory/enable_clk_DFF_13_rstpot_223 )
  );
  X_BUF   \memory/_n0045[7:0]<0>/memory/_n0045[7:0]<0>_DMUX_Delay  (
    .I(\memory/_n0045[7:0]<1> ),
    .O(\memory/_n0045[7:0]<1>_0 )
  );
  X_BUF   \memory/_n0045[7:0]<0>/memory/_n0045[7:0]<0>_CMUX_Delay  (
    .I(\memory/_n0045[7:0]<3> ),
    .O(\memory/_n0045[7:0]<3>_0 )
  );
  X_BUF   \memory/_n0045[7:0]<0>/memory/_n0045[7:0]<0>_BMUX_Delay  (
    .I(\memory/_n0045[7:0]<5> ),
    .O(\memory/_n0045[7:0]<5>_0 )
  );
  X_BUF   \memory/_n0045[7:0]<0>/memory/_n0045[7:0]<0>_AMUX_Delay  (
    .I(\memory/_n0045[7:0]<7> ),
    .O(\memory/_n0045[7:0]<7>_0 )
  );
  X_RAMD32 #(
    .LOC ( "SLICE_X42Y118" ),
    .INIT ( 32'h00000000 ))
  \memory/Mram_memory1  (
    .RADR0(\NlwBufferSignal_memory/Mram_memory1/RADR0 ),
    .RADR1(\NlwBufferSignal_memory/Mram_memory1/RADR1 ),
    .RADR2(\NlwBufferSignal_memory/Mram_memory1/RADR2 ),
    .RADR3(\NlwBufferSignal_memory/Mram_memory1/RADR3 ),
    .RADR4(1'b1),
    .CLK(\NlwBufferSignal_memory/Mram_memory1/CLK ),
    .I(\NlwBufferSignal_memory/Mram_memory1/IN ),
    .O(\memory/_n0045[7:0]<0> ),
    .WADR0(\NlwBufferSignal_memory/Mram_memory1/WADR0 ),
    .WADR1(\NlwBufferSignal_memory/Mram_memory1/WADR1 ),
    .WADR2(\NlwBufferSignal_memory/Mram_memory1/WADR2 ),
    .WADR3(\NlwBufferSignal_memory/Mram_memory1/WADR3 ),
    .WADR4(1'b1),
    .WE(\memory/write_ctrl_387 )
  );
  X_RAMD32 #(
    .LOC ( "SLICE_X42Y118" ),
    .INIT ( 32'h00000000 ))
  \memory/Mram_memory2  (
    .RADR0(\NlwBufferSignal_memory/Mram_memory2/RADR0 ),
    .RADR1(\NlwBufferSignal_memory/Mram_memory2/RADR1 ),
    .RADR2(\NlwBufferSignal_memory/Mram_memory2/RADR2 ),
    .RADR3(\NlwBufferSignal_memory/Mram_memory2/RADR3 ),
    .RADR4(1'b1),
    .CLK(\NlwBufferSignal_memory/Mram_memory2/CLK ),
    .I(\NlwBufferSignal_memory/Mram_memory2/IN ),
    .O(\memory/_n0045[7:0]<1> ),
    .WADR0(\NlwBufferSignal_memory/Mram_memory2/WADR0 ),
    .WADR1(\NlwBufferSignal_memory/Mram_memory2/WADR1 ),
    .WADR2(\NlwBufferSignal_memory/Mram_memory2/WADR2 ),
    .WADR3(\NlwBufferSignal_memory/Mram_memory2/WADR3 ),
    .WADR4(1'b1),
    .WE(\memory/write_ctrl_387 )
  );
  X_RAMD32 #(
    .LOC ( "SLICE_X42Y118" ),
    .INIT ( 32'h00000000 ))
  \memory/Mram_memory3  (
    .RADR0(\NlwBufferSignal_memory/Mram_memory3/RADR0 ),
    .RADR1(\NlwBufferSignal_memory/Mram_memory3/RADR1 ),
    .RADR2(\NlwBufferSignal_memory/Mram_memory3/RADR2 ),
    .RADR3(\NlwBufferSignal_memory/Mram_memory3/RADR3 ),
    .RADR4(1'b1),
    .CLK(\NlwBufferSignal_memory/Mram_memory3/CLK ),
    .I(\NlwBufferSignal_memory/Mram_memory3/IN ),
    .O(\memory/_n0045[7:0]<2> ),
    .WADR0(\NlwBufferSignal_memory/Mram_memory3/WADR0 ),
    .WADR1(\NlwBufferSignal_memory/Mram_memory3/WADR1 ),
    .WADR2(\NlwBufferSignal_memory/Mram_memory3/WADR2 ),
    .WADR3(\NlwBufferSignal_memory/Mram_memory3/WADR3 ),
    .WADR4(1'b1),
    .WE(\memory/write_ctrl_387 )
  );
  X_RAMD32 #(
    .LOC ( "SLICE_X42Y118" ),
    .INIT ( 32'h00000000 ))
  \memory/Mram_memory4  (
    .RADR0(\NlwBufferSignal_memory/Mram_memory4/RADR0 ),
    .RADR1(\NlwBufferSignal_memory/Mram_memory4/RADR1 ),
    .RADR2(\NlwBufferSignal_memory/Mram_memory4/RADR2 ),
    .RADR3(\NlwBufferSignal_memory/Mram_memory4/RADR3 ),
    .RADR4(1'b1),
    .CLK(\NlwBufferSignal_memory/Mram_memory4/CLK ),
    .I(\NlwBufferSignal_memory/Mram_memory4/IN ),
    .O(\memory/_n0045[7:0]<3> ),
    .WADR0(\NlwBufferSignal_memory/Mram_memory4/WADR0 ),
    .WADR1(\NlwBufferSignal_memory/Mram_memory4/WADR1 ),
    .WADR2(\NlwBufferSignal_memory/Mram_memory4/WADR2 ),
    .WADR3(\NlwBufferSignal_memory/Mram_memory4/WADR3 ),
    .WADR4(1'b1),
    .WE(\memory/write_ctrl_387 )
  );
  X_RAMD32 #(
    .LOC ( "SLICE_X42Y118" ),
    .INIT ( 32'h00000000 ))
  \memory/Mram_memory5  (
    .RADR0(\NlwBufferSignal_memory/Mram_memory5/RADR0 ),
    .RADR1(\NlwBufferSignal_memory/Mram_memory5/RADR1 ),
    .RADR2(\NlwBufferSignal_memory/Mram_memory5/RADR2 ),
    .RADR3(\NlwBufferSignal_memory/Mram_memory5/RADR3 ),
    .RADR4(1'b1),
    .CLK(\NlwBufferSignal_memory/Mram_memory5/CLK ),
    .I(\NlwBufferSignal_memory/Mram_memory5/IN ),
    .O(\memory/_n0045[7:0]<4> ),
    .WADR0(\NlwBufferSignal_memory/Mram_memory5/WADR0 ),
    .WADR1(\NlwBufferSignal_memory/Mram_memory5/WADR1 ),
    .WADR2(\NlwBufferSignal_memory/Mram_memory5/WADR2 ),
    .WADR3(\NlwBufferSignal_memory/Mram_memory5/WADR3 ),
    .WADR4(1'b1),
    .WE(\memory/write_ctrl_387 )
  );
  X_RAMD32 #(
    .LOC ( "SLICE_X42Y118" ),
    .INIT ( 32'h00000000 ))
  \memory/Mram_memory6  (
    .RADR0(\NlwBufferSignal_memory/Mram_memory6/RADR0 ),
    .RADR1(\NlwBufferSignal_memory/Mram_memory6/RADR1 ),
    .RADR2(\NlwBufferSignal_memory/Mram_memory6/RADR2 ),
    .RADR3(\NlwBufferSignal_memory/Mram_memory6/RADR3 ),
    .RADR4(1'b1),
    .CLK(\NlwBufferSignal_memory/Mram_memory6/CLK ),
    .I(\NlwBufferSignal_memory/Mram_memory6/IN ),
    .O(\memory/_n0045[7:0]<5> ),
    .WADR0(\NlwBufferSignal_memory/Mram_memory6/WADR0 ),
    .WADR1(\NlwBufferSignal_memory/Mram_memory6/WADR1 ),
    .WADR2(\NlwBufferSignal_memory/Mram_memory6/WADR2 ),
    .WADR3(\NlwBufferSignal_memory/Mram_memory6/WADR3 ),
    .WADR4(1'b1),
    .WE(\memory/write_ctrl_387 )
  );
  X_RAMD32 #(
    .LOC ( "SLICE_X42Y118" ),
    .INIT ( 32'h00000000 ))
  \memory/Mram_memory7  (
    .RADR0(\NlwBufferSignal_memory/Mram_memory7/RADR0 ),
    .RADR1(\NlwBufferSignal_memory/Mram_memory7/RADR1 ),
    .RADR2(\NlwBufferSignal_memory/Mram_memory7/RADR2 ),
    .RADR3(\NlwBufferSignal_memory/Mram_memory7/RADR3 ),
    .RADR4(1'b1),
    .CLK(\NlwBufferSignal_memory/Mram_memory7/CLK ),
    .I(\NlwBufferSignal_memory/Mram_memory7/IN ),
    .O(\memory/_n0045[7:0]<6> ),
    .WADR0(\NlwBufferSignal_memory/Mram_memory7/WADR0 ),
    .WADR1(\NlwBufferSignal_memory/Mram_memory7/WADR1 ),
    .WADR2(\NlwBufferSignal_memory/Mram_memory7/WADR2 ),
    .WADR3(\NlwBufferSignal_memory/Mram_memory7/WADR3 ),
    .WADR4(1'b1),
    .WE(\memory/write_ctrl_387 )
  );
  X_RAMD32 #(
    .LOC ( "SLICE_X42Y118" ),
    .INIT ( 32'h00000000 ))
  \memory/Mram_memory8  (
    .RADR0(\NlwBufferSignal_memory/Mram_memory8/RADR0 ),
    .RADR1(\NlwBufferSignal_memory/Mram_memory8/RADR1 ),
    .RADR2(\NlwBufferSignal_memory/Mram_memory8/RADR2 ),
    .RADR3(\NlwBufferSignal_memory/Mram_memory8/RADR3 ),
    .RADR4(1'b1),
    .CLK(\NlwBufferSignal_memory/Mram_memory8/CLK ),
    .I(\NlwBufferSignal_memory/Mram_memory8/IN ),
    .O(\memory/_n0045[7:0]<7> ),
    .WADR0(\NlwBufferSignal_memory/Mram_memory8/WADR0 ),
    .WADR1(\NlwBufferSignal_memory/Mram_memory8/WADR1 ),
    .WADR2(\NlwBufferSignal_memory/Mram_memory8/WADR2 ),
    .WADR3(\NlwBufferSignal_memory/Mram_memory8/WADR3 ),
    .WADR4(1'b1),
    .WE(\memory/write_ctrl_387 )
  );
  X_BUF   \looping_reg/dataout<5>/looping_reg/dataout<5>_CMUX_Delay  (
    .I(\ramout<5>_pack_7 ),
    .O(ramout[5])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X41Y120" ),
    .INIT ( 64'hFF0FFF0FFF0FFF0F ))
  \memory/data_out<4>LogicTrst1  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR4(1'b1),
    .ADR3(\memory/data_out [4]),
    .ADR2(\memory/enable_clk_DFF_13_363 ),
    .ADR5(1'b1),
    .O(ramout[4])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X41Y120" ),
    .INIT ( 32'hFFFF0F0F ))
  \memory/data_out<5>LogicTrst1  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR4(\memory/data_out [5]),
    .ADR3(1'b1),
    .ADR2(\memory/enable_clk_DFF_13_363 ),
    .O(\ramout<5>_pack_7 )
  );
  X_FF #(
    .LOC ( "SLICE_X41Y120" ),
    .INIT ( 1'b0 ))
  \looping_reg/dataout_5  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_looping_reg/dataout_5/CLK ),
    .I(\looping_reg/datain[7]_ser_mux_0_OUT<5> ),
    .O(\looping_reg/dataout [5]),
    .RST(\adderess/reset_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X41Y120" ),
    .INIT ( 64'hAFACA0ACACACACAC ))
  \looping_reg/mux51  (
    .ADR0(\looping_reg/dataout [6]),
    .ADR3(\adderess/b [4]),
    .ADR5(N2_0),
    .ADR1(\looping_reg/dataout [5]),
    .ADR2(\rohit[1]_rohit[0]_AND_1_o ),
    .ADR4(ramout[5]),
    .O(\looping_reg/datain[7]_ser_mux_0_OUT<5> )
  );
  X_FF #(
    .LOC ( "SLICE_X41Y120" ),
    .INIT ( 1'b0 ))
  \looping_reg/dataout_4  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_looping_reg/dataout_4/CLK ),
    .I(\looping_reg/datain[7]_ser_mux_0_OUT<4> ),
    .O(\looping_reg/dataout [4]),
    .RST(\adderess/reset_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X41Y120" ),
    .INIT ( 64'hFCEE3022EEEE2222 ))
  \looping_reg/mux41  (
    .ADR4(\looping_reg/dataout [5]),
    .ADR3(\adderess/b [4]),
    .ADR5(N2_0),
    .ADR0(\looping_reg/dataout [4]),
    .ADR1(\rohit[1]_rohit[0]_AND_1_o ),
    .ADR2(ramout[4]),
    .O(\looping_reg/datain[7]_ser_mux_0_OUT<4> )
  );
  X_BUF   \looping_reg/dataout<1>/looping_reg/dataout<1>_DMUX_Delay  (
    .I(\ramout<1>_pack_7 ),
    .O(ramout[1])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X43Y119" ),
    .INIT ( 64'hFF00FFFFFF00FFFF ))
  \memory/data_out<0>LogicTrst1  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\memory/data_out [0]),
    .ADR4(\memory/enable_clk_DFF_13_363 ),
    .ADR5(1'b1),
    .O(ramout[0])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X43Y119" ),
    .INIT ( 32'hF0F0FFFF ))
  \memory/data_out<1>LogicTrst1  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(\memory/data_out [1]),
    .ADR3(1'b1),
    .ADR4(\memory/enable_clk_DFF_13_363 ),
    .O(\ramout<1>_pack_7 )
  );
  X_FF #(
    .LOC ( "SLICE_X43Y119" ),
    .INIT ( 1'b0 ))
  \looping_reg/dataout_1  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_looping_reg/dataout_1/CLK ),
    .I(\looping_reg/datain[7]_ser_mux_0_OUT<1> ),
    .O(\looping_reg/dataout [1]),
    .RST(\adderess/reset_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X43Y119" ),
    .INIT ( 64'hFE0EF404FC0CFC0C ))
  \looping_reg/mux111  (
    .ADR3(\looping_reg/dataout [2]),
    .ADR0(\adderess/b [4]),
    .ADR5(N2_0),
    .ADR1(\looping_reg/dataout [1]),
    .ADR2(\rohit[1]_rohit[0]_AND_1_o ),
    .ADR4(ramout[1]),
    .O(\looping_reg/datain[7]_ser_mux_0_OUT<1> )
  );
  X_FF #(
    .LOC ( "SLICE_X43Y119" ),
    .INIT ( 1'b0 ))
  \looping_reg/dataout_0  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_looping_reg/dataout_0/CLK ),
    .I(\looping_reg/datain[7]_ser_mux_0_OUT<0> ),
    .O(\looping_reg/dataout [0]),
    .RST(\adderess/reset_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X43Y119" ),
    .INIT ( 64'hFA0AFC0CFC0CFC0C ))
  \looping_reg/mux11  (
    .ADR3(\looping_reg/dataout [1]),
    .ADR4(\adderess/b [4]),
    .ADR5(N2_0),
    .ADR1(\looping_reg/dataout [0]),
    .ADR2(\rohit[1]_rohit[0]_AND_1_o ),
    .ADR0(ramout[0]),
    .O(\looping_reg/datain[7]_ser_mux_0_OUT<0> )
  );
  X_FF #(
    .LOC ( "SLICE_X43Y119" ),
    .INIT ( 1'b0 ))
  \d2/q  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_d2/q/CLK ),
    .I(\NlwBufferSignal_d2/q/IN ),
    .O(\d2/q_340 ),
    .RST(\adderess/reset_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X41Y119" ),
    .INIT ( 1'b0 ))
  \memory/data_out_7  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_memory/data_out_7/CLK ),
    .I(\memory/n0043 [7]),
    .O(\memory/data_out [7]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X41Y119" ),
    .INIT ( 64'hFFFFFFDF00200000 ))
  \memory/Mmux_n004381  (
    .ADR1(command_338),
    .ADR0(\shift_count/count [3]),
    .ADR2(\d2/q_340 ),
    .ADR3(\adderess/b [4]),
    .ADR5(\memory/_n0045[7:0]<7>_0 ),
    .ADR4(ramout[7]),
    .O(\memory/n0043 [7])
  );
  X_FF #(
    .LOC ( "SLICE_X41Y119" ),
    .INIT ( 1'b0 ))
  \memory/data_out_2  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_memory/data_out_2/CLK ),
    .I(\memory/n0043 [2]),
    .O(\memory/data_out [2]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X41Y119" ),
    .INIT ( 64'hFFFFFFDF00002000 ))
  \memory/Mmux_n004331  (
    .ADR1(command_338),
    .ADR0(\shift_count/count [3]),
    .ADR2(\d2/q_340 ),
    .ADR4(\adderess/b [4]),
    .ADR5(\memory/_n0045[7:0]<2> ),
    .ADR3(ramout[2]),
    .O(\memory/n0043 [2])
  );
  X_FF #(
    .LOC ( "SLICE_X41Y119" ),
    .INIT ( 1'b0 ))
  \memory/data_out_5  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_memory/data_out_5/CLK ),
    .I(\memory/n0043 [5]),
    .O(\memory/data_out [5]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X41Y119" ),
    .INIT ( 64'hFFFFFDFF02000000 ))
  \memory/Mmux_n004361  (
    .ADR2(command_338),
    .ADR0(\shift_count/count [3]),
    .ADR3(\d2/q_340 ),
    .ADR1(\adderess/b [4]),
    .ADR5(\memory/_n0045[7:0]<5>_0 ),
    .ADR4(ramout[5]),
    .O(\memory/n0043 [5])
  );
  X_FF #(
    .LOC ( "SLICE_X41Y119" ),
    .INIT ( 1'b0 ))
  \memory/data_out_4  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_memory/data_out_4/CLK ),
    .I(\memory/n0043 [4]),
    .O(\memory/data_out [4]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X41Y119" ),
    .INIT ( 64'hFFFF0200FDFF0000 ))
  \memory/Mmux_n004351  (
    .ADR2(command_338),
    .ADR0(\shift_count/count [3]),
    .ADR3(\d2/q_340 ),
    .ADR1(\adderess/b [4]),
    .ADR4(\memory/_n0045[7:0]<4> ),
    .ADR5(ramout[4]),
    .O(\memory/n0043 [4])
  );
  X_BUF   \NlwBufferBlock_looping_reg/dataout_7/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_looping_reg/dataout_7/CLK )
  );
  X_BUF   \NlwBufferBlock_looping_reg/dataout_6/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_looping_reg/dataout_6/CLK )
  );
  X_BUF   \NlwBufferBlock_memory/data_out_3/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_memory/data_out_3/CLK )
  );
  X_BUF   \NlwBufferBlock_memory/data_out_6/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_memory/data_out_6/CLK )
  );
  X_BUF   \NlwBufferBlock_memory/data_out_1/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_memory/data_out_1/CLK )
  );
  X_BUF   \NlwBufferBlock_memory/data_out_0/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_memory/data_out_0/CLK )
  );
  X_BUF   \NlwBufferBlock_done_OBUF/I  (
    .I(\d4/q_0 ),
    .O(\NlwBufferSignal_done_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_dd_OBUF/I  (
    .I(\shift_count/count [2]),
    .O(\NlwBufferSignal_dd_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_for_mosi/q/CLK  (
    .I(sck_IBUF_BUFG_364),
    .O(\NlwBufferSignal_for_mosi/q/CLK )
  );
  X_BUF   \NlwBufferBlock_sck_IBUF_BUFG/IN  (
    .I(sck_IBUF_382),
    .O(\NlwBufferSignal_sck_IBUF_BUFG/IN )
  );
  X_BUF   \NlwBufferBlock_shift_count/count_2/CLK  (
    .I(sck_IBUF_BUFG_364),
    .O(\NlwBufferSignal_shift_count/count_2/CLK )
  );
  X_BUF   \NlwBufferBlock_shift_count/count_3/CLK  (
    .I(sck_IBUF_BUFG_364),
    .O(\NlwBufferSignal_shift_count/count_3/CLK )
  );
  X_BUF   \NlwBufferBlock_shift_count/count_1/CLK  (
    .I(sck_IBUF_BUFG_364),
    .O(\NlwBufferSignal_shift_count/count_1/CLK )
  );
  X_BUF   \NlwBufferBlock_shift_count/count_0/CLK  (
    .I(sck_IBUF_BUFG_364),
    .O(\NlwBufferSignal_shift_count/count_0/CLK )
  );
  X_BUF   \NlwBufferBlock_miso_OBUF/I  (
    .I(\looping_reg/dataout [0]),
    .O(\NlwBufferSignal_miso_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_clk_BUFGP/BUFG/IN  (
    .I(\clk_BUFGP/IBUFG_395 ),
    .O(\NlwBufferSignal_clk_BUFGP/BUFG/IN )
  );
  X_BUF   \NlwBufferBlock_d4/q/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_d4/q/CLK )
  );
  X_BUF   \NlwBufferBlock_d4/q/IN  (
    .I(\d3/q_0 ),
    .O(\NlwBufferSignal_d4/q/IN )
  );
  X_BUF   \NlwBufferBlock_adderess/b_3/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_adderess/b_3/CLK )
  );
  X_BUF   \NlwBufferBlock_adderess/b_2/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_adderess/b_2/CLK )
  );
  X_BUF   \NlwBufferBlock_d1/q/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_d1/q/CLK )
  );
  X_BUF   \NlwBufferBlock_rohit_1/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_rohit_1/CLK )
  );
  X_BUF   \NlwBufferBlock_rohit_1/IN  (
    .I(rohit[0]),
    .O(\NlwBufferSignal_rohit_1/IN )
  );
  X_BUF   \NlwBufferBlock_rohit_0/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_rohit_0/CLK )
  );
  X_BUF   \NlwBufferBlock_rohit_0/IN  (
    .I(sck_IBUF_382),
    .O(\NlwBufferSignal_rohit_0/IN )
  );
  X_BUF   \NlwBufferBlock_adderess/b_1/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_adderess/b_1/CLK )
  );
  X_BUF   \NlwBufferBlock_adderess/b_0/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_adderess/b_0/CLK )
  );
  X_BUF   \NlwBufferBlock_command/CLK  (
    .I(sck_IBUF_BUFG_364),
    .O(\NlwBufferSignal_command/CLK )
  );
  X_BUF   \NlwBufferBlock_adderess/b_4/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_adderess/b_4/CLK )
  );
  X_BUF   \NlwBufferBlock_looping_reg/dataout_3/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_looping_reg/dataout_3/CLK )
  );
  X_BUF   \NlwBufferBlock_looping_reg/dataout_2/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_looping_reg/dataout_2/CLK )
  );
  X_BUF   \NlwBufferBlock_d3/q/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_d3/q/CLK )
  );
  X_BUF   \NlwBufferBlock_d3/q/IN  (
    .I(\d2/q_340 ),
    .O(\NlwBufferSignal_d3/q/IN )
  );
  X_BUF   \NlwBufferBlock_memory/enable_clk_DFF_13/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_memory/enable_clk_DFF_13/CLK )
  );
  X_BUF   \NlwBufferBlock_memory/Mram_memory1/RADR0  (
    .I(\adderess/b [0]),
    .O(\NlwBufferSignal_memory/Mram_memory1/RADR0 )
  );
  X_BUF   \NlwBufferBlock_memory/Mram_memory1/RADR1  (
    .I(\adderess/b [1]),
    .O(\NlwBufferSignal_memory/Mram_memory1/RADR1 )
  );
  X_BUF   \NlwBufferBlock_memory/Mram_memory1/RADR2  (
    .I(\adderess/b [2]),
    .O(\NlwBufferSignal_memory/Mram_memory1/RADR2 )
  );
  X_BUF   \NlwBufferBlock_memory/Mram_memory1/RADR3  (
    .I(\adderess/b [3]),
    .O(\NlwBufferSignal_memory/Mram_memory1/RADR3 )
  );
  X_BUF   \NlwBufferBlock_memory/Mram_memory1/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_memory/Mram_memory1/CLK )
  );
  X_BUF   \NlwBufferBlock_memory/Mram_memory1/IN  (
    .I(\looping_reg/dataout [0]),
    .O(\NlwBufferSignal_memory/Mram_memory1/IN )
  );
  X_BUF   \NlwBufferBlock_memory/Mram_memory1/WADR0  (
    .I(\adderess/b [0]),
    .O(\NlwBufferSignal_memory/Mram_memory1/WADR0 )
  );
  X_BUF   \NlwBufferBlock_memory/Mram_memory1/WADR1  (
    .I(\adderess/b [1]),
    .O(\NlwBufferSignal_memory/Mram_memory1/WADR1 )
  );
  X_BUF   \NlwBufferBlock_memory/Mram_memory1/WADR2  (
    .I(\adderess/b [2]),
    .O(\NlwBufferSignal_memory/Mram_memory1/WADR2 )
  );
  X_BUF   \NlwBufferBlock_memory/Mram_memory1/WADR3  (
    .I(\adderess/b [3]),
    .O(\NlwBufferSignal_memory/Mram_memory1/WADR3 )
  );
  X_BUF   \NlwBufferBlock_memory/Mram_memory2/RADR0  (
    .I(\adderess/b [0]),
    .O(\NlwBufferSignal_memory/Mram_memory2/RADR0 )
  );
  X_BUF   \NlwBufferBlock_memory/Mram_memory2/RADR1  (
    .I(\adderess/b [1]),
    .O(\NlwBufferSignal_memory/Mram_memory2/RADR1 )
  );
  X_BUF   \NlwBufferBlock_memory/Mram_memory2/RADR2  (
    .I(\adderess/b [2]),
    .O(\NlwBufferSignal_memory/Mram_memory2/RADR2 )
  );
  X_BUF   \NlwBufferBlock_memory/Mram_memory2/RADR3  (
    .I(\adderess/b [3]),
    .O(\NlwBufferSignal_memory/Mram_memory2/RADR3 )
  );
  X_BUF   \NlwBufferBlock_memory/Mram_memory2/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_memory/Mram_memory2/CLK )
  );
  X_BUF   \NlwBufferBlock_memory/Mram_memory2/IN  (
    .I(\looping_reg/dataout [1]),
    .O(\NlwBufferSignal_memory/Mram_memory2/IN )
  );
  X_BUF   \NlwBufferBlock_memory/Mram_memory2/WADR0  (
    .I(\adderess/b [0]),
    .O(\NlwBufferSignal_memory/Mram_memory2/WADR0 )
  );
  X_BUF   \NlwBufferBlock_memory/Mram_memory2/WADR1  (
    .I(\adderess/b [1]),
    .O(\NlwBufferSignal_memory/Mram_memory2/WADR1 )
  );
  X_BUF   \NlwBufferBlock_memory/Mram_memory2/WADR2  (
    .I(\adderess/b [2]),
    .O(\NlwBufferSignal_memory/Mram_memory2/WADR2 )
  );
  X_BUF   \NlwBufferBlock_memory/Mram_memory2/WADR3  (
    .I(\adderess/b [3]),
    .O(\NlwBufferSignal_memory/Mram_memory2/WADR3 )
  );
  X_BUF   \NlwBufferBlock_memory/Mram_memory3/RADR0  (
    .I(\adderess/b [0]),
    .O(\NlwBufferSignal_memory/Mram_memory3/RADR0 )
  );
  X_BUF   \NlwBufferBlock_memory/Mram_memory3/RADR1  (
    .I(\adderess/b [1]),
    .O(\NlwBufferSignal_memory/Mram_memory3/RADR1 )
  );
  X_BUF   \NlwBufferBlock_memory/Mram_memory3/RADR2  (
    .I(\adderess/b [2]),
    .O(\NlwBufferSignal_memory/Mram_memory3/RADR2 )
  );
  X_BUF   \NlwBufferBlock_memory/Mram_memory3/RADR3  (
    .I(\adderess/b [3]),
    .O(\NlwBufferSignal_memory/Mram_memory3/RADR3 )
  );
  X_BUF   \NlwBufferBlock_memory/Mram_memory3/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_memory/Mram_memory3/CLK )
  );
  X_BUF   \NlwBufferBlock_memory/Mram_memory3/IN  (
    .I(\looping_reg/dataout [2]),
    .O(\NlwBufferSignal_memory/Mram_memory3/IN )
  );
  X_BUF   \NlwBufferBlock_memory/Mram_memory3/WADR0  (
    .I(\adderess/b [0]),
    .O(\NlwBufferSignal_memory/Mram_memory3/WADR0 )
  );
  X_BUF   \NlwBufferBlock_memory/Mram_memory3/WADR1  (
    .I(\adderess/b [1]),
    .O(\NlwBufferSignal_memory/Mram_memory3/WADR1 )
  );
  X_BUF   \NlwBufferBlock_memory/Mram_memory3/WADR2  (
    .I(\adderess/b [2]),
    .O(\NlwBufferSignal_memory/Mram_memory3/WADR2 )
  );
  X_BUF   \NlwBufferBlock_memory/Mram_memory3/WADR3  (
    .I(\adderess/b [3]),
    .O(\NlwBufferSignal_memory/Mram_memory3/WADR3 )
  );
  X_BUF   \NlwBufferBlock_memory/Mram_memory4/RADR0  (
    .I(\adderess/b [0]),
    .O(\NlwBufferSignal_memory/Mram_memory4/RADR0 )
  );
  X_BUF   \NlwBufferBlock_memory/Mram_memory4/RADR1  (
    .I(\adderess/b [1]),
    .O(\NlwBufferSignal_memory/Mram_memory4/RADR1 )
  );
  X_BUF   \NlwBufferBlock_memory/Mram_memory4/RADR2  (
    .I(\adderess/b [2]),
    .O(\NlwBufferSignal_memory/Mram_memory4/RADR2 )
  );
  X_BUF   \NlwBufferBlock_memory/Mram_memory4/RADR3  (
    .I(\adderess/b [3]),
    .O(\NlwBufferSignal_memory/Mram_memory4/RADR3 )
  );
  X_BUF   \NlwBufferBlock_memory/Mram_memory4/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_memory/Mram_memory4/CLK )
  );
  X_BUF   \NlwBufferBlock_memory/Mram_memory4/IN  (
    .I(\looping_reg/dataout [3]),
    .O(\NlwBufferSignal_memory/Mram_memory4/IN )
  );
  X_BUF   \NlwBufferBlock_memory/Mram_memory4/WADR0  (
    .I(\adderess/b [0]),
    .O(\NlwBufferSignal_memory/Mram_memory4/WADR0 )
  );
  X_BUF   \NlwBufferBlock_memory/Mram_memory4/WADR1  (
    .I(\adderess/b [1]),
    .O(\NlwBufferSignal_memory/Mram_memory4/WADR1 )
  );
  X_BUF   \NlwBufferBlock_memory/Mram_memory4/WADR2  (
    .I(\adderess/b [2]),
    .O(\NlwBufferSignal_memory/Mram_memory4/WADR2 )
  );
  X_BUF   \NlwBufferBlock_memory/Mram_memory4/WADR3  (
    .I(\adderess/b [3]),
    .O(\NlwBufferSignal_memory/Mram_memory4/WADR3 )
  );
  X_BUF   \NlwBufferBlock_memory/Mram_memory5/RADR0  (
    .I(\adderess/b [0]),
    .O(\NlwBufferSignal_memory/Mram_memory5/RADR0 )
  );
  X_BUF   \NlwBufferBlock_memory/Mram_memory5/RADR1  (
    .I(\adderess/b [1]),
    .O(\NlwBufferSignal_memory/Mram_memory5/RADR1 )
  );
  X_BUF   \NlwBufferBlock_memory/Mram_memory5/RADR2  (
    .I(\adderess/b [2]),
    .O(\NlwBufferSignal_memory/Mram_memory5/RADR2 )
  );
  X_BUF   \NlwBufferBlock_memory/Mram_memory5/RADR3  (
    .I(\adderess/b [3]),
    .O(\NlwBufferSignal_memory/Mram_memory5/RADR3 )
  );
  X_BUF   \NlwBufferBlock_memory/Mram_memory5/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_memory/Mram_memory5/CLK )
  );
  X_BUF   \NlwBufferBlock_memory/Mram_memory5/IN  (
    .I(\looping_reg/dataout [4]),
    .O(\NlwBufferSignal_memory/Mram_memory5/IN )
  );
  X_BUF   \NlwBufferBlock_memory/Mram_memory5/WADR0  (
    .I(\adderess/b [0]),
    .O(\NlwBufferSignal_memory/Mram_memory5/WADR0 )
  );
  X_BUF   \NlwBufferBlock_memory/Mram_memory5/WADR1  (
    .I(\adderess/b [1]),
    .O(\NlwBufferSignal_memory/Mram_memory5/WADR1 )
  );
  X_BUF   \NlwBufferBlock_memory/Mram_memory5/WADR2  (
    .I(\adderess/b [2]),
    .O(\NlwBufferSignal_memory/Mram_memory5/WADR2 )
  );
  X_BUF   \NlwBufferBlock_memory/Mram_memory5/WADR3  (
    .I(\adderess/b [3]),
    .O(\NlwBufferSignal_memory/Mram_memory5/WADR3 )
  );
  X_BUF   \NlwBufferBlock_memory/Mram_memory6/RADR0  (
    .I(\adderess/b [0]),
    .O(\NlwBufferSignal_memory/Mram_memory6/RADR0 )
  );
  X_BUF   \NlwBufferBlock_memory/Mram_memory6/RADR1  (
    .I(\adderess/b [1]),
    .O(\NlwBufferSignal_memory/Mram_memory6/RADR1 )
  );
  X_BUF   \NlwBufferBlock_memory/Mram_memory6/RADR2  (
    .I(\adderess/b [2]),
    .O(\NlwBufferSignal_memory/Mram_memory6/RADR2 )
  );
  X_BUF   \NlwBufferBlock_memory/Mram_memory6/RADR3  (
    .I(\adderess/b [3]),
    .O(\NlwBufferSignal_memory/Mram_memory6/RADR3 )
  );
  X_BUF   \NlwBufferBlock_memory/Mram_memory6/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_memory/Mram_memory6/CLK )
  );
  X_BUF   \NlwBufferBlock_memory/Mram_memory6/IN  (
    .I(\looping_reg/dataout [5]),
    .O(\NlwBufferSignal_memory/Mram_memory6/IN )
  );
  X_BUF   \NlwBufferBlock_memory/Mram_memory6/WADR0  (
    .I(\adderess/b [0]),
    .O(\NlwBufferSignal_memory/Mram_memory6/WADR0 )
  );
  X_BUF   \NlwBufferBlock_memory/Mram_memory6/WADR1  (
    .I(\adderess/b [1]),
    .O(\NlwBufferSignal_memory/Mram_memory6/WADR1 )
  );
  X_BUF   \NlwBufferBlock_memory/Mram_memory6/WADR2  (
    .I(\adderess/b [2]),
    .O(\NlwBufferSignal_memory/Mram_memory6/WADR2 )
  );
  X_BUF   \NlwBufferBlock_memory/Mram_memory6/WADR3  (
    .I(\adderess/b [3]),
    .O(\NlwBufferSignal_memory/Mram_memory6/WADR3 )
  );
  X_BUF   \NlwBufferBlock_memory/Mram_memory7/RADR0  (
    .I(\adderess/b [0]),
    .O(\NlwBufferSignal_memory/Mram_memory7/RADR0 )
  );
  X_BUF   \NlwBufferBlock_memory/Mram_memory7/RADR1  (
    .I(\adderess/b [1]),
    .O(\NlwBufferSignal_memory/Mram_memory7/RADR1 )
  );
  X_BUF   \NlwBufferBlock_memory/Mram_memory7/RADR2  (
    .I(\adderess/b [2]),
    .O(\NlwBufferSignal_memory/Mram_memory7/RADR2 )
  );
  X_BUF   \NlwBufferBlock_memory/Mram_memory7/RADR3  (
    .I(\adderess/b [3]),
    .O(\NlwBufferSignal_memory/Mram_memory7/RADR3 )
  );
  X_BUF   \NlwBufferBlock_memory/Mram_memory7/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_memory/Mram_memory7/CLK )
  );
  X_BUF   \NlwBufferBlock_memory/Mram_memory7/IN  (
    .I(\looping_reg/dataout [6]),
    .O(\NlwBufferSignal_memory/Mram_memory7/IN )
  );
  X_BUF   \NlwBufferBlock_memory/Mram_memory7/WADR0  (
    .I(\adderess/b [0]),
    .O(\NlwBufferSignal_memory/Mram_memory7/WADR0 )
  );
  X_BUF   \NlwBufferBlock_memory/Mram_memory7/WADR1  (
    .I(\adderess/b [1]),
    .O(\NlwBufferSignal_memory/Mram_memory7/WADR1 )
  );
  X_BUF   \NlwBufferBlock_memory/Mram_memory7/WADR2  (
    .I(\adderess/b [2]),
    .O(\NlwBufferSignal_memory/Mram_memory7/WADR2 )
  );
  X_BUF   \NlwBufferBlock_memory/Mram_memory7/WADR3  (
    .I(\adderess/b [3]),
    .O(\NlwBufferSignal_memory/Mram_memory7/WADR3 )
  );
  X_BUF   \NlwBufferBlock_memory/Mram_memory8/RADR0  (
    .I(\adderess/b [0]),
    .O(\NlwBufferSignal_memory/Mram_memory8/RADR0 )
  );
  X_BUF   \NlwBufferBlock_memory/Mram_memory8/RADR1  (
    .I(\adderess/b [1]),
    .O(\NlwBufferSignal_memory/Mram_memory8/RADR1 )
  );
  X_BUF   \NlwBufferBlock_memory/Mram_memory8/RADR2  (
    .I(\adderess/b [2]),
    .O(\NlwBufferSignal_memory/Mram_memory8/RADR2 )
  );
  X_BUF   \NlwBufferBlock_memory/Mram_memory8/RADR3  (
    .I(\adderess/b [3]),
    .O(\NlwBufferSignal_memory/Mram_memory8/RADR3 )
  );
  X_BUF   \NlwBufferBlock_memory/Mram_memory8/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_memory/Mram_memory8/CLK )
  );
  X_BUF   \NlwBufferBlock_memory/Mram_memory8/IN  (
    .I(\looping_reg/dataout [7]),
    .O(\NlwBufferSignal_memory/Mram_memory8/IN )
  );
  X_BUF   \NlwBufferBlock_memory/Mram_memory8/WADR0  (
    .I(\adderess/b [0]),
    .O(\NlwBufferSignal_memory/Mram_memory8/WADR0 )
  );
  X_BUF   \NlwBufferBlock_memory/Mram_memory8/WADR1  (
    .I(\adderess/b [1]),
    .O(\NlwBufferSignal_memory/Mram_memory8/WADR1 )
  );
  X_BUF   \NlwBufferBlock_memory/Mram_memory8/WADR2  (
    .I(\adderess/b [2]),
    .O(\NlwBufferSignal_memory/Mram_memory8/WADR2 )
  );
  X_BUF   \NlwBufferBlock_memory/Mram_memory8/WADR3  (
    .I(\adderess/b [3]),
    .O(\NlwBufferSignal_memory/Mram_memory8/WADR3 )
  );
  X_BUF   \NlwBufferBlock_looping_reg/dataout_5/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_looping_reg/dataout_5/CLK )
  );
  X_BUF   \NlwBufferBlock_looping_reg/dataout_4/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_looping_reg/dataout_4/CLK )
  );
  X_BUF   \NlwBufferBlock_looping_reg/dataout_1/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_looping_reg/dataout_1/CLK )
  );
  X_BUF   \NlwBufferBlock_looping_reg/dataout_0/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_looping_reg/dataout_0/CLK )
  );
  X_BUF   \NlwBufferBlock_d2/q/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_d2/q/CLK )
  );
  X_BUF   \NlwBufferBlock_d2/q/IN  (
    .I(\d1/q_367 ),
    .O(\NlwBufferSignal_d2/q/IN )
  );
  X_BUF   \NlwBufferBlock_memory/data_out_7/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_memory/data_out_7/CLK )
  );
  X_BUF   \NlwBufferBlock_memory/data_out_2/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_memory/data_out_2/CLK )
  );
  X_BUF   \NlwBufferBlock_memory/data_out_5/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_memory/data_out_5/CLK )
  );
  X_BUF   \NlwBufferBlock_memory/data_out_4/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_memory/data_out_4/CLK )
  );
  X_ONE   NlwBlock_ichip_2_VCC (
    .O(VCC)
  );
  X_ZERO   NlwBlock_ichip_2_GND (
    .O(GND)
  );
endmodule


`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif

