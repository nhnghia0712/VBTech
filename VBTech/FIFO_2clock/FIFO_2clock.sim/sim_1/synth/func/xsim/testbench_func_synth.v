// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Tue May 17 11:59:38 2022
// Host        : NGHIA running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               D:/GitHub/VBTech/VBTech/FIFO_2clock/FIFO_2clock.sim/sim_1/synth/func/xsim/testbench_func_synth.v
// Design      : fifo
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcku5p-ffvb676-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* DATA_DEPTH = "8" *) (* DATA_WIDTH = "8" *) (* POINTER_WIDTH = "4" *) 
(* NotValidForBitStream *)
module fifo
   (WR_RESET,
    RD_RESET,
    WR_CLK,
    RD_CLK,
    WRITE,
    READ,
    DATA_IN,
    DATA_OUT,
    FULL,
    EMPTY);
  input WR_RESET;
  input RD_RESET;
  input WR_CLK;
  input RD_CLK;
  input WRITE;
  input READ;
  input [7:0]DATA_IN;
  output [7:0]DATA_OUT;
  output FULL;
  output EMPTY;

  wire [7:0]DATA_IN;
  wire [7:0]DATA_IN_IBUF;
  wire [7:0]DATA_OUT;
  wire [7:0]DATA_OUT_OBUF;
  wire EMPTY;
  wire EMPTY_OBUF;
  wire FULL;
  wire FULL_OBUF;
  wire RD_CLK;
  wire RD_CLK_IBUF;
  wire RD_CLK_IBUF_BUFG;
  wire [2:0]RD_PTR;
  wire RD_RESET;
  wire RD_RESET_IBUF;
  wire READ;
  wire READ_IBUF;
  wire WRITE;
  wire WRITE_IBUF;
  wire WR_CLK;
  wire WR_CLK_IBUF;
  wire WR_CLK_IBUF_BUFG;
  wire [2:0]WR_PTR;
  wire WR_RESET;
  wire WR_RESET_IBUF;
  wire p_0_in1_out;
  wire p_2_in;

  IBUF \DATA_IN_IBUF[0]_inst 
       (.I(DATA_IN[0]),
        .O(DATA_IN_IBUF[0]));
  IBUF \DATA_IN_IBUF[1]_inst 
       (.I(DATA_IN[1]),
        .O(DATA_IN_IBUF[1]));
  IBUF \DATA_IN_IBUF[2]_inst 
       (.I(DATA_IN[2]),
        .O(DATA_IN_IBUF[2]));
  IBUF \DATA_IN_IBUF[3]_inst 
       (.I(DATA_IN[3]),
        .O(DATA_IN_IBUF[3]));
  IBUF \DATA_IN_IBUF[4]_inst 
       (.I(DATA_IN[4]),
        .O(DATA_IN_IBUF[4]));
  IBUF \DATA_IN_IBUF[5]_inst 
       (.I(DATA_IN[5]),
        .O(DATA_IN_IBUF[5]));
  IBUF \DATA_IN_IBUF[6]_inst 
       (.I(DATA_IN[6]),
        .O(DATA_IN_IBUF[6]));
  IBUF \DATA_IN_IBUF[7]_inst 
       (.I(DATA_IN[7]),
        .O(DATA_IN_IBUF[7]));
  OBUF \DATA_OUT_OBUF[0]_inst 
       (.I(DATA_OUT_OBUF[0]),
        .O(DATA_OUT[0]));
  OBUF \DATA_OUT_OBUF[1]_inst 
       (.I(DATA_OUT_OBUF[1]),
        .O(DATA_OUT[1]));
  OBUF \DATA_OUT_OBUF[2]_inst 
       (.I(DATA_OUT_OBUF[2]),
        .O(DATA_OUT[2]));
  OBUF \DATA_OUT_OBUF[3]_inst 
       (.I(DATA_OUT_OBUF[3]),
        .O(DATA_OUT[3]));
  OBUF \DATA_OUT_OBUF[4]_inst 
       (.I(DATA_OUT_OBUF[4]),
        .O(DATA_OUT[4]));
  OBUF \DATA_OUT_OBUF[5]_inst 
       (.I(DATA_OUT_OBUF[5]),
        .O(DATA_OUT[5]));
  OBUF \DATA_OUT_OBUF[6]_inst 
       (.I(DATA_OUT_OBUF[6]),
        .O(DATA_OUT[6]));
  OBUF \DATA_OUT_OBUF[7]_inst 
       (.I(DATA_OUT_OBUF[7]),
        .O(DATA_OUT[7]));
  OBUF EMPTY_OBUF_inst
       (.I(EMPTY_OBUF),
        .O(EMPTY));
  OBUF FULL_OBUF_inst
       (.I(FULL_OBUF),
        .O(FULL));
  (* XILINX_LEGACY_PRIM = "BUFG" *) 
  BUFGCE #(
    .CE_TYPE("ASYNC"),
    .SIM_DEVICE("ULTRASCALE_PLUS"),
    .STARTUP_SYNC("FALSE")) 
    RD_CLK_IBUF_BUFG_inst
       (.CE(1'b1),
        .I(RD_CLK_IBUF),
        .O(RD_CLK_IBUF_BUFG));
  IBUF RD_CLK_IBUF_inst
       (.I(RD_CLK),
        .O(RD_CLK_IBUF));
  IBUF RD_RESET_IBUF_inst
       (.I(RD_RESET),
        .O(RD_RESET_IBUF));
  IBUF READ_IBUF_inst
       (.I(READ),
        .O(READ_IBUF));
  IBUF WRITE_IBUF_inst
       (.I(WRITE),
        .O(WRITE_IBUF));
  (* XILINX_LEGACY_PRIM = "BUFG" *) 
  BUFGCE #(
    .CE_TYPE("ASYNC"),
    .SIM_DEVICE("ULTRASCALE_PLUS"),
    .STARTUP_SYNC("FALSE")) 
    WR_CLK_IBUF_BUFG_inst
       (.CE(1'b1),
        .I(WR_CLK_IBUF),
        .O(WR_CLK_IBUF_BUFG));
  IBUF WR_CLK_IBUF_inst
       (.I(WR_CLK),
        .O(WR_CLK_IBUF));
  IBUF WR_RESET_IBUF_inst
       (.I(WR_RESET),
        .O(WR_RESET_IBUF));
  status_signal inst1
       (.CLK(WR_CLK_IBUF_BUFG),
        .E(WRITE_IBUF),
        .EMPTY_OBUF(EMPTY_OBUF),
        .FULL_OBUF(FULL_OBUF),
        .Q(WR_PTR),
        .\RD_PTR_reg[0]_0 (RD_CLK_IBUF_BUFG),
        .\RD_PTR_reg[2]_0 (RD_PTR),
        .\RD_PTR_reg[3]_0 (RD_RESET_IBUF),
        .\RD_PTR_reg[3]_1 (READ_IBUF),
        .SR(WR_RESET_IBUF),
        .WEBWE(p_0_in1_out),
        .p_2_in(p_2_in));
  ram inst2
       (.CLK(WR_CLK_IBUF_BUFG),
        .DINBDIN(DATA_IN_IBUF),
        .DOUTADOUT(DATA_OUT_OBUF),
        .MEM_reg_bram_0_0(RD_CLK_IBUF_BUFG),
        .MEM_reg_bram_0_1(RD_PTR),
        .Q(WR_PTR),
        .WEBWE(p_0_in1_out),
        .p_2_in(p_2_in));
endmodule

module ram
   (DOUTADOUT,
    MEM_reg_bram_0_0,
    CLK,
    p_2_in,
    MEM_reg_bram_0_1,
    Q,
    DINBDIN,
    WEBWE);
  output [7:0]DOUTADOUT;
  input MEM_reg_bram_0_0;
  input CLK;
  input p_2_in;
  input [2:0]MEM_reg_bram_0_1;
  input [2:0]Q;
  input [7:0]DINBDIN;
  input [0:0]WEBWE;

  wire CLK;
  wire [7:0]DINBDIN;
  wire [7:0]DOUTADOUT;
  wire MEM_reg_bram_0_0;
  wire [2:0]MEM_reg_bram_0_1;
  wire [2:0]Q;
  wire [0:0]WEBWE;
  wire p_2_in;
  wire [15:0]NLW_MEM_reg_bram_0_CASDOUTA_UNCONNECTED;
  wire [15:0]NLW_MEM_reg_bram_0_CASDOUTB_UNCONNECTED;
  wire [1:0]NLW_MEM_reg_bram_0_CASDOUTPA_UNCONNECTED;
  wire [1:0]NLW_MEM_reg_bram_0_CASDOUTPB_UNCONNECTED;
  wire [15:8]NLW_MEM_reg_bram_0_DOUTADOUT_UNCONNECTED;
  wire [15:0]NLW_MEM_reg_bram_0_DOUTBDOUT_UNCONNECTED;
  wire [1:0]NLW_MEM_reg_bram_0_DOUTPADOUTP_UNCONNECTED;
  wire [1:0]NLW_MEM_reg_bram_0_DOUTPBDOUTP_UNCONNECTED;

  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}} {SYNTH-7 {cell *THIS*}}" *) 
  (* RDADDR_COLLISION_HWCONFIG = "DELAYED_WRITE" *) 
  (* RTL_RAM_BITS = "64" *) 
  (* RTL_RAM_NAME = "inst2/MEM" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "7" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "7" *) 
  RAMB18E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("NONE"),
    .CLOCK_DOMAINS("INDEPENDENT"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("NO_CHANGE"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    MEM_reg_bram_0
       (.ADDRARDADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,MEM_reg_bram_0_1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,Q,1'b1,1'b1,1'b1,1'b1}),
        .ADDRENA(1'b0),
        .ADDRENB(1'b0),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINPA({1'b0,1'b0}),
        .CASDINPB({1'b0,1'b0}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(1'b0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(1'b1),
        .CASDOUTA(NLW_MEM_reg_bram_0_CASDOUTA_UNCONNECTED[15:0]),
        .CASDOUTB(NLW_MEM_reg_bram_0_CASDOUTB_UNCONNECTED[15:0]),
        .CASDOUTPA(NLW_MEM_reg_bram_0_CASDOUTPA_UNCONNECTED[1:0]),
        .CASDOUTPB(NLW_MEM_reg_bram_0_CASDOUTPB_UNCONNECTED[1:0]),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CLKARDCLK(MEM_reg_bram_0_0),
        .CLKBWRCLK(CLK),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DINBDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,DINBDIN}),
        .DINPADINP({1'b0,1'b0}),
        .DINPBDINP({1'b0,1'b0}),
        .DOUTADOUT({NLW_MEM_reg_bram_0_DOUTADOUT_UNCONNECTED[15:8],DOUTADOUT}),
        .DOUTBDOUT(NLW_MEM_reg_bram_0_DOUTBDOUT_UNCONNECTED[15:0]),
        .DOUTPADOUTP(NLW_MEM_reg_bram_0_DOUTPADOUTP_UNCONNECTED[1:0]),
        .DOUTPBDOUTP(NLW_MEM_reg_bram_0_DOUTPBDOUTP_UNCONNECTED[1:0]),
        .ENARDEN(p_2_in),
        .ENBWREN(1'b1),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SLEEP(1'b0),
        .WEA({1'b1,1'b1}),
        .WEBWE({1'b0,1'b0,WEBWE,WEBWE}));
endmodule

module status_signal
   (Q,
    \RD_PTR_reg[2]_0 ,
    p_2_in,
    EMPTY_OBUF,
    WEBWE,
    FULL_OBUF,
    SR,
    E,
    CLK,
    \RD_PTR_reg[3]_0 ,
    \RD_PTR_reg[3]_1 ,
    \RD_PTR_reg[0]_0 );
  output [2:0]Q;
  output [2:0]\RD_PTR_reg[2]_0 ;
  output p_2_in;
  output EMPTY_OBUF;
  output [0:0]WEBWE;
  output FULL_OBUF;
  input [0:0]SR;
  input [0:0]E;
  input CLK;
  input [0:0]\RD_PTR_reg[3]_0 ;
  input [0:0]\RD_PTR_reg[3]_1 ;
  input \RD_PTR_reg[0]_0 ;

  wire CLK;
  wire [0:0]E;
  wire EMPTY_OBUF;
  wire EMPTY_OBUF_inst_i_2_n_0;
  wire FULL_OBUF;
  wire FULL_OBUF_inst_i_2_n_0;
  wire [2:0]Q;
  wire [3:3]RD_PTR;
  wire \RD_PTR[0]_i_1_n_0 ;
  wire \RD_PTR[1]_i_1_n_0 ;
  wire \RD_PTR[2]_i_1_n_0 ;
  wire \RD_PTR[3]_i_1_n_0 ;
  wire \RD_PTR_reg[0]_0 ;
  wire [2:0]\RD_PTR_reg[2]_0 ;
  wire [0:0]\RD_PTR_reg[3]_0 ;
  wire [0:0]\RD_PTR_reg[3]_1 ;
  wire [0:0]SR;
  wire [0:0]WEBWE;
  wire [3:3]WR_PTR;
  wire \WR_PTR[0]_i_1_n_0 ;
  wire [3:1]p_0_in;
  wire p_2_in;

  LUT4 #(
    .INIT(16'hFF82)) 
    EMPTY_OBUF_inst_i_1
       (.I0(EMPTY_OBUF_inst_i_2_n_0),
        .I1(WR_PTR),
        .I2(RD_PTR),
        .I3(\RD_PTR_reg[3]_0 ),
        .O(EMPTY_OBUF));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    EMPTY_OBUF_inst_i_2
       (.I0(\RD_PTR_reg[2]_0 [0]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(\RD_PTR_reg[2]_0 [2]),
        .I4(Q[1]),
        .I5(\RD_PTR_reg[2]_0 [1]),
        .O(EMPTY_OBUF_inst_i_2_n_0));
  LUT5 #(
    .INIT(32'h00040000)) 
    FULL_OBUF_inst_i_1
       (.I0(Q[1]),
        .I1(WR_PTR),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(FULL_OBUF_inst_i_2_n_0),
        .O(FULL_OBUF));
  LUT5 #(
    .INIT(32'h00000001)) 
    FULL_OBUF_inst_i_2
       (.I0(\RD_PTR_reg[2]_0 [1]),
        .I1(\RD_PTR_reg[2]_0 [0]),
        .I2(\RD_PTR_reg[2]_0 [2]),
        .I3(RD_PTR),
        .I4(SR),
        .O(FULL_OBUF_inst_i_2_n_0));
  LUT5 #(
    .INIT(32'h02202222)) 
    MEM_reg_bram_0_i_1
       (.I0(\RD_PTR_reg[3]_1 ),
        .I1(\RD_PTR_reg[3]_0 ),
        .I2(RD_PTR),
        .I3(WR_PTR),
        .I4(EMPTY_OBUF_inst_i_2_n_0),
        .O(p_2_in));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAA2AAAA)) 
    MEM_reg_bram_0_i_2
       (.I0(E),
        .I1(FULL_OBUF_inst_i_2_n_0),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(WR_PTR),
        .I5(Q[1]),
        .O(WEBWE));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h5551)) 
    \RD_PTR[0]_i_1 
       (.I0(\RD_PTR_reg[2]_0 [0]),
        .I1(RD_PTR),
        .I2(\RD_PTR_reg[2]_0 [1]),
        .I3(\RD_PTR_reg[2]_0 [2]),
        .O(\RD_PTR[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \RD_PTR[1]_i_1 
       (.I0(\RD_PTR_reg[2]_0 [0]),
        .I1(\RD_PTR_reg[2]_0 [1]),
        .O(\RD_PTR[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \RD_PTR[2]_i_1 
       (.I0(\RD_PTR_reg[2]_0 [0]),
        .I1(\RD_PTR_reg[2]_0 [1]),
        .I2(\RD_PTR_reg[2]_0 [2]),
        .O(\RD_PTR[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h78F0)) 
    \RD_PTR[3]_i_1 
       (.I0(\RD_PTR_reg[2]_0 [2]),
        .I1(\RD_PTR_reg[2]_0 [1]),
        .I2(RD_PTR),
        .I3(\RD_PTR_reg[2]_0 [0]),
        .O(\RD_PTR[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \RD_PTR_reg[0] 
       (.C(\RD_PTR_reg[0]_0 ),
        .CE(\RD_PTR_reg[3]_1 ),
        .D(\RD_PTR[0]_i_1_n_0 ),
        .Q(\RD_PTR_reg[2]_0 [0]),
        .R(\RD_PTR_reg[3]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \RD_PTR_reg[1] 
       (.C(\RD_PTR_reg[0]_0 ),
        .CE(\RD_PTR_reg[3]_1 ),
        .D(\RD_PTR[1]_i_1_n_0 ),
        .Q(\RD_PTR_reg[2]_0 [1]),
        .R(\RD_PTR_reg[3]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \RD_PTR_reg[2] 
       (.C(\RD_PTR_reg[0]_0 ),
        .CE(\RD_PTR_reg[3]_1 ),
        .D(\RD_PTR[2]_i_1_n_0 ),
        .Q(\RD_PTR_reg[2]_0 [2]),
        .R(\RD_PTR_reg[3]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \RD_PTR_reg[3] 
       (.C(\RD_PTR_reg[0]_0 ),
        .CE(\RD_PTR_reg[3]_1 ),
        .D(\RD_PTR[3]_i_1_n_0 ),
        .Q(RD_PTR),
        .R(\RD_PTR_reg[3]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h5551)) 
    \WR_PTR[0]_i_1 
       (.I0(Q[0]),
        .I1(WR_PTR),
        .I2(Q[2]),
        .I3(Q[1]),
        .O(\WR_PTR[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \WR_PTR[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h6C)) 
    \WR_PTR[2]_i_1 
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(Q[1]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h78F0)) 
    \WR_PTR[3]_i_1 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(WR_PTR),
        .I3(Q[0]),
        .O(p_0_in[3]));
  FDRE #(
    .INIT(1'b0)) 
    \WR_PTR_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(\WR_PTR[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \WR_PTR_reg[1] 
       (.C(CLK),
        .CE(E),
        .D(p_0_in[1]),
        .Q(Q[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \WR_PTR_reg[2] 
       (.C(CLK),
        .CE(E),
        .D(p_0_in[2]),
        .Q(Q[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \WR_PTR_reg[3] 
       (.C(CLK),
        .CE(E),
        .D(p_0_in[3]),
        .Q(WR_PTR),
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