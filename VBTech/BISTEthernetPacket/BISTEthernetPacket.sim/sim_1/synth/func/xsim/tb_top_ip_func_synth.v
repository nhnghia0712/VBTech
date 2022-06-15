// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Wed Jun 15 16:34:42 2022
// Host        : NGHIA running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               D:/GitHub/VBTech/VBTech/BISTEthernetPacket/BISTEthernetPacket.sim/sim_1/synth/func/xsim/tb_top_ip_func_synth.v
// Design      : top_ip
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcku5p-ffvb676-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHID_NUM = "4" *) (* D_W = "32" *) (* LENGTH_W = "16" *) 
(* NUM_PKT_W = "16" *) (* PKT_CH_W = "2" *) 
(* NotValidForBitStream *)
module top_ip
   (clk_sys,
    cpu_clk,
    cpu_cs,
    cpu_we,
    cpu_oe,
    cpu_adrr,
    cpu_din,
    cpu_dout,
    done);
  input clk_sys;
  input cpu_clk;
  input cpu_cs;
  input cpu_we;
  input cpu_oe;
  input [15:0]cpu_adrr;
  input [15:0]cpu_din;
  output [15:0]cpu_dout;
  output done;

  wire [15:0]cpu_dout;
  wire done;

  OBUF \cpu_dout_OBUF[0]_inst 
       (.I(1'b0),
        .O(cpu_dout[0]));
  OBUF \cpu_dout_OBUF[10]_inst 
       (.I(1'b0),
        .O(cpu_dout[10]));
  OBUF \cpu_dout_OBUF[11]_inst 
       (.I(1'b0),
        .O(cpu_dout[11]));
  OBUF \cpu_dout_OBUF[12]_inst 
       (.I(1'b0),
        .O(cpu_dout[12]));
  OBUF \cpu_dout_OBUF[13]_inst 
       (.I(1'b0),
        .O(cpu_dout[13]));
  OBUF \cpu_dout_OBUF[14]_inst 
       (.I(1'b0),
        .O(cpu_dout[14]));
  OBUF \cpu_dout_OBUF[15]_inst 
       (.I(1'b0),
        .O(cpu_dout[15]));
  OBUF \cpu_dout_OBUF[1]_inst 
       (.I(1'b0),
        .O(cpu_dout[1]));
  OBUF \cpu_dout_OBUF[2]_inst 
       (.I(1'b0),
        .O(cpu_dout[2]));
  OBUF \cpu_dout_OBUF[3]_inst 
       (.I(1'b0),
        .O(cpu_dout[3]));
  OBUF \cpu_dout_OBUF[4]_inst 
       (.I(1'b0),
        .O(cpu_dout[4]));
  OBUF \cpu_dout_OBUF[5]_inst 
       (.I(1'b0),
        .O(cpu_dout[5]));
  OBUF \cpu_dout_OBUF[6]_inst 
       (.I(1'b0),
        .O(cpu_dout[6]));
  OBUF \cpu_dout_OBUF[7]_inst 
       (.I(1'b0),
        .O(cpu_dout[7]));
  OBUF \cpu_dout_OBUF[8]_inst 
       (.I(1'b0),
        .O(cpu_dout[8]));
  OBUF \cpu_dout_OBUF[9]_inst 
       (.I(1'b0),
        .O(cpu_dout[9]));
  OBUF done_OBUF_inst
       (.I(1'b0),
        .O(done));
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
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
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

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
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
