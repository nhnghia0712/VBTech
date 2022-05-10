// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Tue May 10 15:00:42 2022
// Host        : NGHIA running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               D:/GitHub/VBTech/VBTech/FIFO/FIFO.sim/sim_1/synth/func/xsim/testbench_func_synth.v
// Design      : fifo
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcku5p-ffvb676-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* DATA_DEPTH = "8" *) (* DATA_WIDTH = "8" *) 
(* NotValidForBitStream *)
module fifo
   (Reset,
    Clk,
    Read,
    Write,
    Data_In,
    Data_Out,
    Full,
    Empty);
  input Reset;
  input Clk;
  input Read;
  input Write;
  input [7:0]Data_In;
  output [7:0]Data_Out;
  output Full;
  output Empty;

  wire Clk;
  wire Clk_IBUF;
  wire Clk_IBUF_BUFG;
  wire [7:0]Data_In;
  wire [7:0]Data_In_IBUF;
  wire [7:0]Data_Out;
  wire [7:0]Data_Out_OBUF;
  wire Empty;
  wire Empty_OBUF;
  wire Full;
  wire Full_OBUF;
  wire Read;
  wire Read_IBUF;
  wire Reset;
  wire Reset_IBUF;
  wire Write;
  wire Write_IBUF;
  wire [3:0]fifo_cnt;
  wire \fifo_cnt[0]_i_1_n_0 ;
  wire \fifo_cnt[1]_i_1_n_0 ;
  wire \fifo_cnt[2]_i_1_n_0 ;
  wire \fifo_cnt[3]_i_1_n_0 ;
  wire \fifo_cnt[3]_i_2_n_0 ;
  wire [2:0]rd_ptr;
  wire [2:0]wr_ptr;

  (* XILINX_LEGACY_PRIM = "BUFG" *) 
  BUFGCE #(
    .CE_TYPE("ASYNC"),
    .SIM_DEVICE("ULTRASCALE_PLUS"),
    .STARTUP_SYNC("FALSE")) 
    Clk_IBUF_BUFG_inst
       (.CE(1'b1),
        .I(Clk_IBUF),
        .O(Clk_IBUF_BUFG));
  IBUF Clk_IBUF_inst
       (.I(Clk),
        .O(Clk_IBUF));
  IBUF \Data_In_IBUF[0]_inst 
       (.I(Data_In[0]),
        .O(Data_In_IBUF[0]));
  IBUF \Data_In_IBUF[1]_inst 
       (.I(Data_In[1]),
        .O(Data_In_IBUF[1]));
  IBUF \Data_In_IBUF[2]_inst 
       (.I(Data_In[2]),
        .O(Data_In_IBUF[2]));
  IBUF \Data_In_IBUF[3]_inst 
       (.I(Data_In[3]),
        .O(Data_In_IBUF[3]));
  IBUF \Data_In_IBUF[4]_inst 
       (.I(Data_In[4]),
        .O(Data_In_IBUF[4]));
  IBUF \Data_In_IBUF[5]_inst 
       (.I(Data_In[5]),
        .O(Data_In_IBUF[5]));
  IBUF \Data_In_IBUF[6]_inst 
       (.I(Data_In[6]),
        .O(Data_In_IBUF[6]));
  IBUF \Data_In_IBUF[7]_inst 
       (.I(Data_In[7]),
        .O(Data_In_IBUF[7]));
  OBUF \Data_Out_OBUF[0]_inst 
       (.I(Data_Out_OBUF[0]),
        .O(Data_Out[0]));
  OBUF \Data_Out_OBUF[1]_inst 
       (.I(Data_Out_OBUF[1]),
        .O(Data_Out[1]));
  OBUF \Data_Out_OBUF[2]_inst 
       (.I(Data_Out_OBUF[2]),
        .O(Data_Out[2]));
  OBUF \Data_Out_OBUF[3]_inst 
       (.I(Data_Out_OBUF[3]),
        .O(Data_Out[3]));
  OBUF \Data_Out_OBUF[4]_inst 
       (.I(Data_Out_OBUF[4]),
        .O(Data_Out[4]));
  OBUF \Data_Out_OBUF[5]_inst 
       (.I(Data_Out_OBUF[5]),
        .O(Data_Out[5]));
  OBUF \Data_Out_OBUF[6]_inst 
       (.I(Data_Out_OBUF[6]),
        .O(Data_Out[6]));
  OBUF \Data_Out_OBUF[7]_inst 
       (.I(Data_Out_OBUF[7]),
        .O(Data_Out[7]));
  OBUF Empty_OBUF_inst
       (.I(Empty_OBUF),
        .O(Empty));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    Empty_OBUF_inst_i_1
       (.I0(fifo_cnt[2]),
        .I1(fifo_cnt[3]),
        .I2(fifo_cnt[1]),
        .I3(fifo_cnt[0]),
        .O(Empty_OBUF));
  OBUF Full_OBUF_inst
       (.I(Full_OBUF),
        .O(Full));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    Full_OBUF_inst_i_1
       (.I0(fifo_cnt[2]),
        .I1(fifo_cnt[1]),
        .I2(fifo_cnt[3]),
        .I3(fifo_cnt[0]),
        .O(Full_OBUF));
  IBUF Read_IBUF_inst
       (.I(Read),
        .O(Read_IBUF));
  IBUF Reset_IBUF_inst
       (.I(Reset),
        .O(Reset_IBUF));
  IBUF Write_IBUF_inst
       (.I(Write),
        .O(Write_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h0000FFF6)) 
    \fifo_cnt[0]_i_1 
       (.I0(Write_IBUF),
        .I1(fifo_cnt[3]),
        .I2(fifo_cnt[2]),
        .I3(fifo_cnt[1]),
        .I4(fifo_cnt[0]),
        .O(\fifo_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \fifo_cnt[1]_i_1 
       (.I0(fifo_cnt[1]),
        .I1(fifo_cnt[0]),
        .O(\fifo_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \fifo_cnt[2]_i_1 
       (.I0(fifo_cnt[2]),
        .I1(fifo_cnt[1]),
        .I2(fifo_cnt[0]),
        .O(\fifo_cnt[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \fifo_cnt[3]_i_1 
       (.I0(Read_IBUF),
        .I1(Write_IBUF),
        .O(\fifo_cnt[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \fifo_cnt[3]_i_2 
       (.I0(fifo_cnt[3]),
        .I1(fifo_cnt[2]),
        .I2(fifo_cnt[1]),
        .I3(fifo_cnt[0]),
        .O(\fifo_cnt[3]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_cnt_reg[0] 
       (.C(Clk_IBUF_BUFG),
        .CE(\fifo_cnt[3]_i_1_n_0 ),
        .D(\fifo_cnt[0]_i_1_n_0 ),
        .Q(fifo_cnt[0]),
        .R(Reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_cnt_reg[1] 
       (.C(Clk_IBUF_BUFG),
        .CE(\fifo_cnt[3]_i_1_n_0 ),
        .D(\fifo_cnt[1]_i_1_n_0 ),
        .Q(fifo_cnt[1]),
        .R(Reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_cnt_reg[2] 
       (.C(Clk_IBUF_BUFG),
        .CE(\fifo_cnt[3]_i_1_n_0 ),
        .D(\fifo_cnt[2]_i_1_n_0 ),
        .Q(fifo_cnt[2]),
        .R(Reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_cnt_reg[3] 
       (.C(Clk_IBUF_BUFG),
        .CE(\fifo_cnt[3]_i_1_n_0 ),
        .D(\fifo_cnt[3]_i_2_n_0 ),
        .Q(fifo_cnt[3]),
        .R(Reset_IBUF));
  status_signal inst1
       (.CLK(Clk_IBUF_BUFG),
        .Q(fifo_cnt),
        .Read_IBUF(Read_IBUF),
        .SR(Reset_IBUF),
        .Write_IBUF(Write_IBUF),
        .\rd_ptr_reg[2]_0 (rd_ptr),
        .\wr_ptr_reg[2]_0 (wr_ptr));
  ram inst2
       (.CLK(Clk_IBUF_BUFG),
        .Data_In(Data_In_IBUF),
        .Data_Out(Data_Out_OBUF),
        .\Data_Out_reg[1]_0 (rd_ptr),
        .Q(fifo_cnt),
        .Read_IBUF(Read_IBUF),
        .Write_IBUF(Write_IBUF),
        .wr_ptr(wr_ptr));
endmodule

module ram
   (Data_Out,
    Q,
    Write_IBUF,
    Read_IBUF,
    CLK,
    Data_In,
    \Data_Out_reg[1]_0 ,
    wr_ptr);
  output [7:0]Data_Out;
  input [3:0]Q;
  input Write_IBUF;
  input Read_IBUF;
  input CLK;
  input [7:0]Data_In;
  input [2:0]\Data_Out_reg[1]_0 ;
  input [2:0]wr_ptr;

  wire CLK;
  wire [7:0]Data_In;
  wire [7:0]Data_Out;
  wire [7:0]Data_Out0;
  wire \Data_Out[7]_i_1_n_0 ;
  wire [2:0]\Data_Out_reg[1]_0 ;
  wire [3:0]Q;
  wire Read_IBUF;
  wire Write_IBUF;
  wire p_0_in__0;
  wire [2:0]wr_ptr;
  wire [1:0]NLW_mem_reg_0_7_0_7_DOE_UNCONNECTED;
  wire [1:0]NLW_mem_reg_0_7_0_7_DOF_UNCONNECTED;
  wire [1:0]NLW_mem_reg_0_7_0_7_DOG_UNCONNECTED;
  wire [1:0]NLW_mem_reg_0_7_0_7_DOH_UNCONNECTED;

  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \Data_Out[7]_i_1 
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Write_IBUF),
        .I5(Read_IBUF),
        .O(\Data_Out[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Data_Out_reg[0] 
       (.C(CLK),
        .CE(\Data_Out[7]_i_1_n_0 ),
        .D(Data_Out0[0]),
        .Q(Data_Out[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Data_Out_reg[1] 
       (.C(CLK),
        .CE(\Data_Out[7]_i_1_n_0 ),
        .D(Data_Out0[1]),
        .Q(Data_Out[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Data_Out_reg[2] 
       (.C(CLK),
        .CE(\Data_Out[7]_i_1_n_0 ),
        .D(Data_Out0[2]),
        .Q(Data_Out[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Data_Out_reg[3] 
       (.C(CLK),
        .CE(\Data_Out[7]_i_1_n_0 ),
        .D(Data_Out0[3]),
        .Q(Data_Out[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Data_Out_reg[4] 
       (.C(CLK),
        .CE(\Data_Out[7]_i_1_n_0 ),
        .D(Data_Out0[4]),
        .Q(Data_Out[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Data_Out_reg[5] 
       (.C(CLK),
        .CE(\Data_Out[7]_i_1_n_0 ),
        .D(Data_Out0[5]),
        .Q(Data_Out[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Data_Out_reg[6] 
       (.C(CLK),
        .CE(\Data_Out[7]_i_1_n_0 ),
        .D(Data_Out0[6]),
        .Q(Data_Out[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Data_Out_reg[7] 
       (.C(CLK),
        .CE(\Data_Out[7]_i_1_n_0 ),
        .D(Data_Out0[7]),
        .Q(Data_Out[7]),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "64" *) 
  (* RTL_RAM_NAME = "inst2/mem" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "7" *) 
  RAM32M16 #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000),
    .INIT_E(64'h0000000000000000),
    .INIT_F(64'h0000000000000000),
    .INIT_G(64'h0000000000000000),
    .INIT_H(64'h0000000000000000)) 
    mem_reg_0_7_0_7
       (.ADDRA({1'b0,1'b0,\Data_Out_reg[1]_0 }),
        .ADDRB({1'b0,1'b0,\Data_Out_reg[1]_0 }),
        .ADDRC({1'b0,1'b0,\Data_Out_reg[1]_0 }),
        .ADDRD({1'b0,1'b0,\Data_Out_reg[1]_0 }),
        .ADDRE({1'b0,1'b0,\Data_Out_reg[1]_0 }),
        .ADDRF({1'b0,1'b0,\Data_Out_reg[1]_0 }),
        .ADDRG({1'b0,1'b0,\Data_Out_reg[1]_0 }),
        .ADDRH({1'b0,1'b0,wr_ptr}),
        .DIA(Data_In[1:0]),
        .DIB(Data_In[3:2]),
        .DIC(Data_In[5:4]),
        .DID(Data_In[7:6]),
        .DIE({1'b0,1'b0}),
        .DIF({1'b0,1'b0}),
        .DIG({1'b0,1'b0}),
        .DIH({1'b0,1'b0}),
        .DOA(Data_Out0[1:0]),
        .DOB(Data_Out0[3:2]),
        .DOC(Data_Out0[5:4]),
        .DOD(Data_Out0[7:6]),
        .DOE(NLW_mem_reg_0_7_0_7_DOE_UNCONNECTED[1:0]),
        .DOF(NLW_mem_reg_0_7_0_7_DOF_UNCONNECTED[1:0]),
        .DOG(NLW_mem_reg_0_7_0_7_DOG_UNCONNECTED[1:0]),
        .DOH(NLW_mem_reg_0_7_0_7_DOH_UNCONNECTED[1:0]),
        .WCLK(CLK),
        .WE(p_0_in__0));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000000)) 
    mem_reg_0_7_0_7_i_1
       (.I0(Read_IBUF),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[0]),
        .I5(Write_IBUF),
        .O(p_0_in__0));
endmodule

module status_signal
   (\wr_ptr_reg[2]_0 ,
    \rd_ptr_reg[2]_0 ,
    Q,
    Read_IBUF,
    Write_IBUF,
    SR,
    CLK);
  output [2:0]\wr_ptr_reg[2]_0 ;
  output [2:0]\rd_ptr_reg[2]_0 ;
  input [3:0]Q;
  input Read_IBUF;
  input Write_IBUF;
  input [0:0]SR;
  input CLK;

  wire CLK;
  wire [3:0]Q;
  wire Read_IBUF;
  wire [0:0]SR;
  wire Write_IBUF;
  wire [2:0]p_0_in;
  wire rd_ptr0;
  wire [2:0]\rd_ptr_reg[2]_0 ;
  wire wr_ptr0;
  wire \wr_ptr[0]_i_1_n_0 ;
  wire \wr_ptr[1]_i_1_n_0 ;
  wire \wr_ptr[2]_i_2_n_0 ;
  wire [2:0]\wr_ptr_reg[2]_0 ;

  LUT1 #(
    .INIT(2'h1)) 
    \rd_ptr[0]_i_1 
       (.I0(\rd_ptr_reg[2]_0 [0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \rd_ptr[1]_i_1 
       (.I0(\rd_ptr_reg[2]_0 [0]),
        .I1(\rd_ptr_reg[2]_0 [1]),
        .O(p_0_in[1]));
  LUT6 #(
    .INIT(64'hFFFF0000FFFE0000)) 
    \rd_ptr[2]_i_1 
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Read_IBUF),
        .I5(Write_IBUF),
        .O(rd_ptr0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \rd_ptr[2]_i_2 
       (.I0(\rd_ptr_reg[2]_0 [0]),
        .I1(\rd_ptr_reg[2]_0 [1]),
        .I2(\rd_ptr_reg[2]_0 [2]),
        .O(p_0_in[2]));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_reg[0] 
       (.C(CLK),
        .CE(rd_ptr0),
        .D(p_0_in[0]),
        .Q(\rd_ptr_reg[2]_0 [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_reg[1] 
       (.C(CLK),
        .CE(rd_ptr0),
        .D(p_0_in[1]),
        .Q(\rd_ptr_reg[2]_0 [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_reg[2] 
       (.C(CLK),
        .CE(rd_ptr0),
        .D(p_0_in[2]),
        .Q(\rd_ptr_reg[2]_0 [2]),
        .R(SR));
  LUT1 #(
    .INIT(2'h1)) 
    \wr_ptr[0]_i_1 
       (.I0(\wr_ptr_reg[2]_0 [0]),
        .O(\wr_ptr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \wr_ptr[1]_i_1 
       (.I0(\wr_ptr_reg[2]_0 [0]),
        .I1(\wr_ptr_reg[2]_0 [1]),
        .O(\wr_ptr[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEF00000000)) 
    \wr_ptr[2]_i_1 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[3]),
        .I3(Q[0]),
        .I4(Read_IBUF),
        .I5(Write_IBUF),
        .O(wr_ptr0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \wr_ptr[2]_i_2 
       (.I0(\wr_ptr_reg[2]_0 [0]),
        .I1(\wr_ptr_reg[2]_0 [1]),
        .I2(\wr_ptr_reg[2]_0 [2]),
        .O(\wr_ptr[2]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_reg[0] 
       (.C(CLK),
        .CE(wr_ptr0),
        .D(\wr_ptr[0]_i_1_n_0 ),
        .Q(\wr_ptr_reg[2]_0 [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_reg[1] 
       (.C(CLK),
        .CE(wr_ptr0),
        .D(\wr_ptr[1]_i_1_n_0 ),
        .Q(\wr_ptr_reg[2]_0 [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_reg[2] 
       (.C(CLK),
        .CE(wr_ptr0),
        .D(\wr_ptr[2]_i_2_n_0 ),
        .Q(\wr_ptr_reg[2]_0 [2]),
        .R(SR));
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
