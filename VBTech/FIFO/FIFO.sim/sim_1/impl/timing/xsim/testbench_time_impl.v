// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Tue May 10 15:01:11 2022
// Host        : NGHIA running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               D:/GitHub/VBTech/VBTech/FIFO/FIFO.sim/sim_1/impl/timing/xsim/testbench_time_impl.v
// Design      : fifo
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xcku5p-ffvb676-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module IBUF_UNIQ_BASE_
   (O,
    I);
  output O;
  input I;

  wire I;
  wire O;
  wire OUT;
  wire NLW_IBUFCTRL_INST_IBUFDISABLE_UNCONNECTED;
  wire NLW_IBUFCTRL_INST_INTERMDISABLE_UNCONNECTED;
  wire NLW_IBUFCTRL_INST_T_UNCONNECTED;
  wire NLW_INBUF_INST_OSC_EN_UNCONNECTED;
  wire NLW_INBUF_INST_VREF_UNCONNECTED;
  wire [3:0]NLW_INBUF_INST_OSC_UNCONNECTED;

  IBUFCTRL IBUFCTRL_INST
       (.I(OUT),
        .IBUFDISABLE(NLW_IBUFCTRL_INST_IBUFDISABLE_UNCONNECTED),
        .INTERMDISABLE(NLW_IBUFCTRL_INST_INTERMDISABLE_UNCONNECTED),
        .O(O),
        .T(NLW_IBUFCTRL_INST_T_UNCONNECTED));
  INBUF INBUF_INST
       (.O(OUT),
        .OSC(NLW_INBUF_INST_OSC_UNCONNECTED[3:0]),
        .OSC_EN(NLW_INBUF_INST_OSC_EN_UNCONNECTED),
        .PAD(I),
        .VREF(NLW_INBUF_INST_VREF_UNCONNECTED));
endmodule

module IBUF_HD1
   (O,
    I);
  output O;
  input I;

  wire I;
  wire O;
  wire OUT;
  wire NLW_IBUFCTRL_INST_IBUFDISABLE_UNCONNECTED;
  wire NLW_IBUFCTRL_INST_INTERMDISABLE_UNCONNECTED;
  wire NLW_IBUFCTRL_INST_T_UNCONNECTED;
  wire NLW_INBUF_INST_OSC_EN_UNCONNECTED;
  wire NLW_INBUF_INST_VREF_UNCONNECTED;
  wire [3:0]NLW_INBUF_INST_OSC_UNCONNECTED;

  IBUFCTRL IBUFCTRL_INST
       (.I(OUT),
        .IBUFDISABLE(NLW_IBUFCTRL_INST_IBUFDISABLE_UNCONNECTED),
        .INTERMDISABLE(NLW_IBUFCTRL_INST_INTERMDISABLE_UNCONNECTED),
        .O(O),
        .T(NLW_IBUFCTRL_INST_T_UNCONNECTED));
  INBUF INBUF_INST
       (.O(OUT),
        .OSC(NLW_INBUF_INST_OSC_UNCONNECTED[3:0]),
        .OSC_EN(NLW_INBUF_INST_OSC_EN_UNCONNECTED),
        .PAD(I),
        .VREF(NLW_INBUF_INST_VREF_UNCONNECTED));
endmodule

module IBUF_HD10
   (O,
    I);
  output O;
  input I;

  wire I;
  wire O;
  wire OUT;
  wire NLW_IBUFCTRL_INST_IBUFDISABLE_UNCONNECTED;
  wire NLW_IBUFCTRL_INST_INTERMDISABLE_UNCONNECTED;
  wire NLW_IBUFCTRL_INST_T_UNCONNECTED;
  wire NLW_INBUF_INST_OSC_EN_UNCONNECTED;
  wire NLW_INBUF_INST_VREF_UNCONNECTED;
  wire [3:0]NLW_INBUF_INST_OSC_UNCONNECTED;

  IBUFCTRL IBUFCTRL_INST
       (.I(OUT),
        .IBUFDISABLE(NLW_IBUFCTRL_INST_IBUFDISABLE_UNCONNECTED),
        .INTERMDISABLE(NLW_IBUFCTRL_INST_INTERMDISABLE_UNCONNECTED),
        .O(O),
        .T(NLW_IBUFCTRL_INST_T_UNCONNECTED));
  INBUF INBUF_INST
       (.O(OUT),
        .OSC(NLW_INBUF_INST_OSC_UNCONNECTED[3:0]),
        .OSC_EN(NLW_INBUF_INST_OSC_EN_UNCONNECTED),
        .PAD(I),
        .VREF(NLW_INBUF_INST_VREF_UNCONNECTED));
endmodule

module IBUF_HD11
   (O,
    I);
  output O;
  input I;

  wire I;
  wire O;
  wire OUT;
  wire NLW_IBUFCTRL_INST_IBUFDISABLE_UNCONNECTED;
  wire NLW_IBUFCTRL_INST_INTERMDISABLE_UNCONNECTED;
  wire NLW_IBUFCTRL_INST_T_UNCONNECTED;
  wire NLW_INBUF_INST_OSC_EN_UNCONNECTED;
  wire NLW_INBUF_INST_VREF_UNCONNECTED;
  wire [3:0]NLW_INBUF_INST_OSC_UNCONNECTED;

  IBUFCTRL IBUFCTRL_INST
       (.I(OUT),
        .IBUFDISABLE(NLW_IBUFCTRL_INST_IBUFDISABLE_UNCONNECTED),
        .INTERMDISABLE(NLW_IBUFCTRL_INST_INTERMDISABLE_UNCONNECTED),
        .O(O),
        .T(NLW_IBUFCTRL_INST_T_UNCONNECTED));
  INBUF INBUF_INST
       (.O(OUT),
        .OSC(NLW_INBUF_INST_OSC_UNCONNECTED[3:0]),
        .OSC_EN(NLW_INBUF_INST_OSC_EN_UNCONNECTED),
        .PAD(I),
        .VREF(NLW_INBUF_INST_VREF_UNCONNECTED));
endmodule

module IBUF_HD2
   (O,
    I);
  output O;
  input I;

  wire I;
  wire O;
  wire OUT;
  wire NLW_IBUFCTRL_INST_IBUFDISABLE_UNCONNECTED;
  wire NLW_IBUFCTRL_INST_INTERMDISABLE_UNCONNECTED;
  wire NLW_IBUFCTRL_INST_T_UNCONNECTED;
  wire NLW_INBUF_INST_OSC_EN_UNCONNECTED;
  wire NLW_INBUF_INST_VREF_UNCONNECTED;
  wire [3:0]NLW_INBUF_INST_OSC_UNCONNECTED;

  IBUFCTRL IBUFCTRL_INST
       (.I(OUT),
        .IBUFDISABLE(NLW_IBUFCTRL_INST_IBUFDISABLE_UNCONNECTED),
        .INTERMDISABLE(NLW_IBUFCTRL_INST_INTERMDISABLE_UNCONNECTED),
        .O(O),
        .T(NLW_IBUFCTRL_INST_T_UNCONNECTED));
  INBUF INBUF_INST
       (.O(OUT),
        .OSC(NLW_INBUF_INST_OSC_UNCONNECTED[3:0]),
        .OSC_EN(NLW_INBUF_INST_OSC_EN_UNCONNECTED),
        .PAD(I),
        .VREF(NLW_INBUF_INST_VREF_UNCONNECTED));
endmodule

module IBUF_HD3
   (O,
    I);
  output O;
  input I;

  wire I;
  wire O;
  wire OUT;
  wire NLW_IBUFCTRL_INST_IBUFDISABLE_UNCONNECTED;
  wire NLW_IBUFCTRL_INST_INTERMDISABLE_UNCONNECTED;
  wire NLW_IBUFCTRL_INST_T_UNCONNECTED;
  wire NLW_INBUF_INST_OSC_EN_UNCONNECTED;
  wire NLW_INBUF_INST_VREF_UNCONNECTED;
  wire [3:0]NLW_INBUF_INST_OSC_UNCONNECTED;

  IBUFCTRL IBUFCTRL_INST
       (.I(OUT),
        .IBUFDISABLE(NLW_IBUFCTRL_INST_IBUFDISABLE_UNCONNECTED),
        .INTERMDISABLE(NLW_IBUFCTRL_INST_INTERMDISABLE_UNCONNECTED),
        .O(O),
        .T(NLW_IBUFCTRL_INST_T_UNCONNECTED));
  INBUF INBUF_INST
       (.O(OUT),
        .OSC(NLW_INBUF_INST_OSC_UNCONNECTED[3:0]),
        .OSC_EN(NLW_INBUF_INST_OSC_EN_UNCONNECTED),
        .PAD(I),
        .VREF(NLW_INBUF_INST_VREF_UNCONNECTED));
endmodule

module IBUF_HD4
   (O,
    I);
  output O;
  input I;

  wire I;
  wire O;
  wire OUT;
  wire NLW_IBUFCTRL_INST_IBUFDISABLE_UNCONNECTED;
  wire NLW_IBUFCTRL_INST_INTERMDISABLE_UNCONNECTED;
  wire NLW_IBUFCTRL_INST_T_UNCONNECTED;
  wire NLW_INBUF_INST_OSC_EN_UNCONNECTED;
  wire NLW_INBUF_INST_VREF_UNCONNECTED;
  wire [3:0]NLW_INBUF_INST_OSC_UNCONNECTED;

  IBUFCTRL IBUFCTRL_INST
       (.I(OUT),
        .IBUFDISABLE(NLW_IBUFCTRL_INST_IBUFDISABLE_UNCONNECTED),
        .INTERMDISABLE(NLW_IBUFCTRL_INST_INTERMDISABLE_UNCONNECTED),
        .O(O),
        .T(NLW_IBUFCTRL_INST_T_UNCONNECTED));
  INBUF INBUF_INST
       (.O(OUT),
        .OSC(NLW_INBUF_INST_OSC_UNCONNECTED[3:0]),
        .OSC_EN(NLW_INBUF_INST_OSC_EN_UNCONNECTED),
        .PAD(I),
        .VREF(NLW_INBUF_INST_VREF_UNCONNECTED));
endmodule

module IBUF_HD5
   (O,
    I);
  output O;
  input I;

  wire I;
  wire O;
  wire OUT;
  wire NLW_IBUFCTRL_INST_IBUFDISABLE_UNCONNECTED;
  wire NLW_IBUFCTRL_INST_INTERMDISABLE_UNCONNECTED;
  wire NLW_IBUFCTRL_INST_T_UNCONNECTED;
  wire NLW_INBUF_INST_OSC_EN_UNCONNECTED;
  wire NLW_INBUF_INST_VREF_UNCONNECTED;
  wire [3:0]NLW_INBUF_INST_OSC_UNCONNECTED;

  IBUFCTRL IBUFCTRL_INST
       (.I(OUT),
        .IBUFDISABLE(NLW_IBUFCTRL_INST_IBUFDISABLE_UNCONNECTED),
        .INTERMDISABLE(NLW_IBUFCTRL_INST_INTERMDISABLE_UNCONNECTED),
        .O(O),
        .T(NLW_IBUFCTRL_INST_T_UNCONNECTED));
  INBUF INBUF_INST
       (.O(OUT),
        .OSC(NLW_INBUF_INST_OSC_UNCONNECTED[3:0]),
        .OSC_EN(NLW_INBUF_INST_OSC_EN_UNCONNECTED),
        .PAD(I),
        .VREF(NLW_INBUF_INST_VREF_UNCONNECTED));
endmodule

module IBUF_HD6
   (O,
    I);
  output O;
  input I;

  wire I;
  wire O;
  wire OUT;
  wire NLW_IBUFCTRL_INST_IBUFDISABLE_UNCONNECTED;
  wire NLW_IBUFCTRL_INST_INTERMDISABLE_UNCONNECTED;
  wire NLW_IBUFCTRL_INST_T_UNCONNECTED;
  wire NLW_INBUF_INST_OSC_EN_UNCONNECTED;
  wire NLW_INBUF_INST_VREF_UNCONNECTED;
  wire [3:0]NLW_INBUF_INST_OSC_UNCONNECTED;

  IBUFCTRL IBUFCTRL_INST
       (.I(OUT),
        .IBUFDISABLE(NLW_IBUFCTRL_INST_IBUFDISABLE_UNCONNECTED),
        .INTERMDISABLE(NLW_IBUFCTRL_INST_INTERMDISABLE_UNCONNECTED),
        .O(O),
        .T(NLW_IBUFCTRL_INST_T_UNCONNECTED));
  INBUF INBUF_INST
       (.O(OUT),
        .OSC(NLW_INBUF_INST_OSC_UNCONNECTED[3:0]),
        .OSC_EN(NLW_INBUF_INST_OSC_EN_UNCONNECTED),
        .PAD(I),
        .VREF(NLW_INBUF_INST_VREF_UNCONNECTED));
endmodule

module IBUF_HD7
   (O,
    I);
  output O;
  input I;

  wire I;
  wire O;
  wire OUT;
  wire NLW_IBUFCTRL_INST_IBUFDISABLE_UNCONNECTED;
  wire NLW_IBUFCTRL_INST_INTERMDISABLE_UNCONNECTED;
  wire NLW_IBUFCTRL_INST_T_UNCONNECTED;
  wire NLW_INBUF_INST_OSC_EN_UNCONNECTED;
  wire NLW_INBUF_INST_VREF_UNCONNECTED;
  wire [3:0]NLW_INBUF_INST_OSC_UNCONNECTED;

  IBUFCTRL IBUFCTRL_INST
       (.I(OUT),
        .IBUFDISABLE(NLW_IBUFCTRL_INST_IBUFDISABLE_UNCONNECTED),
        .INTERMDISABLE(NLW_IBUFCTRL_INST_INTERMDISABLE_UNCONNECTED),
        .O(O),
        .T(NLW_IBUFCTRL_INST_T_UNCONNECTED));
  INBUF INBUF_INST
       (.O(OUT),
        .OSC(NLW_INBUF_INST_OSC_UNCONNECTED[3:0]),
        .OSC_EN(NLW_INBUF_INST_OSC_EN_UNCONNECTED),
        .PAD(I),
        .VREF(NLW_INBUF_INST_VREF_UNCONNECTED));
endmodule

module IBUF_HD8
   (O,
    I);
  output O;
  input I;

  wire I;
  wire O;
  wire OUT;
  wire NLW_IBUFCTRL_INST_IBUFDISABLE_UNCONNECTED;
  wire NLW_IBUFCTRL_INST_INTERMDISABLE_UNCONNECTED;
  wire NLW_IBUFCTRL_INST_T_UNCONNECTED;
  wire NLW_INBUF_INST_OSC_EN_UNCONNECTED;
  wire NLW_INBUF_INST_VREF_UNCONNECTED;
  wire [3:0]NLW_INBUF_INST_OSC_UNCONNECTED;

  IBUFCTRL IBUFCTRL_INST
       (.I(OUT),
        .IBUFDISABLE(NLW_IBUFCTRL_INST_IBUFDISABLE_UNCONNECTED),
        .INTERMDISABLE(NLW_IBUFCTRL_INST_INTERMDISABLE_UNCONNECTED),
        .O(O),
        .T(NLW_IBUFCTRL_INST_T_UNCONNECTED));
  INBUF INBUF_INST
       (.O(OUT),
        .OSC(NLW_INBUF_INST_OSC_UNCONNECTED[3:0]),
        .OSC_EN(NLW_INBUF_INST_OSC_EN_UNCONNECTED),
        .PAD(I),
        .VREF(NLW_INBUF_INST_VREF_UNCONNECTED));
endmodule

module IBUF_HD9
   (O,
    I);
  output O;
  input I;

  wire I;
  wire O;
  wire OUT;
  wire NLW_IBUFCTRL_INST_IBUFDISABLE_UNCONNECTED;
  wire NLW_IBUFCTRL_INST_INTERMDISABLE_UNCONNECTED;
  wire NLW_IBUFCTRL_INST_T_UNCONNECTED;
  wire NLW_INBUF_INST_OSC_EN_UNCONNECTED;
  wire NLW_INBUF_INST_VREF_UNCONNECTED;
  wire [3:0]NLW_INBUF_INST_OSC_UNCONNECTED;

  IBUFCTRL IBUFCTRL_INST
       (.I(OUT),
        .IBUFDISABLE(NLW_IBUFCTRL_INST_IBUFDISABLE_UNCONNECTED),
        .INTERMDISABLE(NLW_IBUFCTRL_INST_INTERMDISABLE_UNCONNECTED),
        .O(O),
        .T(NLW_IBUFCTRL_INST_T_UNCONNECTED));
  INBUF INBUF_INST
       (.O(OUT),
        .OSC(NLW_INBUF_INST_OSC_UNCONNECTED[3:0]),
        .OSC_EN(NLW_INBUF_INST_OSC_EN_UNCONNECTED),
        .PAD(I),
        .VREF(NLW_INBUF_INST_VREF_UNCONNECTED));
endmodule

module RAM32M16_UNIQ_BASE_
   (DOA,
    DOB,
    DOC,
    DOD,
    DOE,
    DOF,
    DOG,
    DOH,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    ADDRE,
    ADDRF,
    ADDRG,
    ADDRH,
    DIA,
    DIB,
    DIC,
    DID,
    DIE,
    DIF,
    DIG,
    DIH,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  output [1:0]DOE;
  output [1:0]DOF;
  output [1:0]DOG;
  output [1:0]DOH;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [4:0]ADDRE;
  input [4:0]ADDRF;
  input [4:0]ADDRG;
  input [4:0]ADDRH;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input [1:0]DIE;
  input [1:0]DIF;
  input [1:0]DIG;
  input [1:0]DIH;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire ADDRE0;
  wire ADDRE1;
  wire ADDRE2;
  wire ADDRE3;
  wire ADDRE4;
  wire ADDRF0;
  wire ADDRF1;
  wire ADDRF2;
  wire ADDRF3;
  wire ADDRF4;
  wire ADDRG0;
  wire ADDRG1;
  wire ADDRG2;
  wire ADDRG3;
  wire ADDRG4;
  wire ADDRH0;
  wire ADDRH1;
  wire ADDRH2;
  wire ADDRH3;
  wire ADDRH4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DIE0;
  wire DIE1;
  wire DIF0;
  wire DIF1;
  wire DIG0;
  wire DIG1;
  wire DIH0;
  wire DIH1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire DOE0;
  wire DOE1;
  wire DOF0;
  wire DOF1;
  wire DOG0;
  wire DOG1;
  wire DOH0;
  wire DOH1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign ADDRE0 = ADDRE[0];
  assign ADDRE1 = ADDRE[1];
  assign ADDRE2 = ADDRE[2];
  assign ADDRE3 = ADDRE[3];
  assign ADDRE4 = ADDRE[4];
  assign ADDRF0 = ADDRF[0];
  assign ADDRF1 = ADDRF[1];
  assign ADDRF2 = ADDRF[2];
  assign ADDRF3 = ADDRF[3];
  assign ADDRF4 = ADDRF[4];
  assign ADDRG0 = ADDRG[0];
  assign ADDRG1 = ADDRG[1];
  assign ADDRG2 = ADDRG[2];
  assign ADDRG3 = ADDRG[3];
  assign ADDRG4 = ADDRG[4];
  assign ADDRH0 = ADDRH[0];
  assign ADDRH1 = ADDRH[1];
  assign ADDRH2 = ADDRH[2];
  assign ADDRH3 = ADDRH[3];
  assign ADDRH4 = ADDRH[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DIE0 = DIE[0];
  assign DIE1 = DIE[1];
  assign DIF0 = DIF[0];
  assign DIF1 = DIF[1];
  assign DIG0 = DIG[0];
  assign DIG1 = DIG[1];
  assign DIH0 = DIH[0];
  assign DIH1 = DIH[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  assign DOE[1] = DOE1;
  assign DOE[0] = DOE0;
  assign DOF[1] = DOF1;
  assign DOF[0] = DOF0;
  assign DOG[1] = DOG1;
  assign DOG[0] = DOG0;
  assign DOH[1] = DOH1;
  assign DOH[0] = DOH0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRH0),
        .WADR1(ADDRH1),
        .WADR2(ADDRH2),
        .WADR3(ADDRH3),
        .WADR4(ADDRH4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRH0),
        .WADR1(ADDRH1),
        .WADR2(ADDRH2),
        .WADR3(ADDRH3),
        .WADR4(ADDRH4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRH0),
        .WADR1(ADDRH1),
        .WADR2(ADDRH2),
        .WADR3(ADDRH3),
        .WADR4(ADDRH4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRH0),
        .WADR1(ADDRH1),
        .WADR2(ADDRH2),
        .WADR3(ADDRH3),
        .WADR4(ADDRH4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRH0),
        .WADR1(ADDRH1),
        .WADR2(ADDRH2),
        .WADR3(ADDRH3),
        .WADR4(ADDRH4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRH0),
        .WADR1(ADDRH1),
        .WADR2(ADDRH2),
        .WADR3(ADDRH3),
        .WADR4(ADDRH4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .RADR0(ADDRD0),
        .RADR1(ADDRD1),
        .RADR2(ADDRD2),
        .RADR3(ADDRD3),
        .RADR4(ADDRD4),
        .WADR0(ADDRH0),
        .WADR1(ADDRH1),
        .WADR2(ADDRH2),
        .WADR3(ADDRH3),
        .WADR4(ADDRH4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .RADR0(ADDRD0),
        .RADR1(ADDRD1),
        .RADR2(ADDRD2),
        .RADR3(ADDRD3),
        .RADR4(ADDRD4),
        .WADR0(ADDRH0),
        .WADR1(ADDRH1),
        .WADR2(ADDRH2),
        .WADR3(ADDRH3),
        .WADR4(ADDRH4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAME
       (.CLK(WCLK),
        .I(DIE0),
        .O(DOE0),
        .RADR0(ADDRE0),
        .RADR1(ADDRE1),
        .RADR2(ADDRE2),
        .RADR3(ADDRE3),
        .RADR4(ADDRE4),
        .WADR0(ADDRH0),
        .WADR1(ADDRH1),
        .WADR2(ADDRH2),
        .WADR3(ADDRH3),
        .WADR4(ADDRH4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAME_D1
       (.CLK(WCLK),
        .I(DIE1),
        .O(DOE1),
        .RADR0(ADDRE0),
        .RADR1(ADDRE1),
        .RADR2(ADDRE2),
        .RADR3(ADDRE3),
        .RADR4(ADDRE4),
        .WADR0(ADDRH0),
        .WADR1(ADDRH1),
        .WADR2(ADDRH2),
        .WADR3(ADDRH3),
        .WADR4(ADDRH4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMF
       (.CLK(WCLK),
        .I(DIF0),
        .O(DOF0),
        .RADR0(ADDRF0),
        .RADR1(ADDRF1),
        .RADR2(ADDRF2),
        .RADR3(ADDRF3),
        .RADR4(ADDRF4),
        .WADR0(ADDRH0),
        .WADR1(ADDRH1),
        .WADR2(ADDRH2),
        .WADR3(ADDRH3),
        .WADR4(ADDRH4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMF_D1
       (.CLK(WCLK),
        .I(DIF1),
        .O(DOF1),
        .RADR0(ADDRF0),
        .RADR1(ADDRF1),
        .RADR2(ADDRF2),
        .RADR3(ADDRF3),
        .RADR4(ADDRF4),
        .WADR0(ADDRH0),
        .WADR1(ADDRH1),
        .WADR2(ADDRH2),
        .WADR3(ADDRH3),
        .WADR4(ADDRH4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMG
       (.CLK(WCLK),
        .I(DIG0),
        .O(DOG0),
        .RADR0(ADDRG0),
        .RADR1(ADDRG1),
        .RADR2(ADDRG2),
        .RADR3(ADDRG3),
        .RADR4(ADDRG4),
        .WADR0(ADDRH0),
        .WADR1(ADDRH1),
        .WADR2(ADDRH2),
        .WADR3(ADDRH3),
        .WADR4(ADDRH4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMG_D1
       (.CLK(WCLK),
        .I(DIG1),
        .O(DOG1),
        .RADR0(ADDRG0),
        .RADR1(ADDRG1),
        .RADR2(ADDRG2),
        .RADR3(ADDRG3),
        .RADR4(ADDRG4),
        .WADR0(ADDRH0),
        .WADR1(ADDRH1),
        .WADR2(ADDRH2),
        .WADR3(ADDRH3),
        .WADR4(ADDRH4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMH
       (.ADR0(ADDRH0),
        .ADR1(ADDRH1),
        .ADR2(ADDRH2),
        .ADR3(ADDRH3),
        .ADR4(ADDRH4),
        .CLK(WCLK),
        .I(DIH0),
        .O(DOH0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMH_D1
       (.ADR0(ADDRH0),
        .ADR1(ADDRH1),
        .ADR2(ADDRH2),
        .ADR3(ADDRH3),
        .ADR4(ADDRH4),
        .CLK(WCLK),
        .I(DIH1),
        .O(DOH1),
        .WE(WE));
endmodule

(* DATA_DEPTH = "8" *) (* DATA_WIDTH = "8" *) (* ECO_CHECKSUM = "b2ca8342" *) 
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

initial begin
 $sdf_annotate("testbench_time_impl.sdf",,,,"tool_control");
end
  (* XILINX_LEGACY_PRIM = "BUFG" *) 
  BUFGCE #(
    .CE_TYPE("ASYNC"),
    .SIM_DEVICE("ULTRASCALE_PLUS"),
    .STARTUP_SYNC("FALSE")) 
    Clk_IBUF_BUFG_inst
       (.CE(1'b1),
        .I(Clk_IBUF),
        .O(Clk_IBUF_BUFG));
  (* IS_CCIO = "FALSE" *) 
  IBUF_UNIQ_BASE_ Clk_IBUF_inst
       (.I(Clk),
        .O(Clk_IBUF));
  (* IS_CCIO = "FALSE" *) 
  IBUF_HD1 \Data_In_IBUF[0]_inst 
       (.I(Data_In[0]),
        .O(Data_In_IBUF[0]));
  (* IS_CCIO = "FALSE" *) 
  IBUF_HD2 \Data_In_IBUF[1]_inst 
       (.I(Data_In[1]),
        .O(Data_In_IBUF[1]));
  (* IS_CCIO = "FALSE" *) 
  IBUF_HD3 \Data_In_IBUF[2]_inst 
       (.I(Data_In[2]),
        .O(Data_In_IBUF[2]));
  (* IS_CCIO = "FALSE" *) 
  IBUF_HD4 \Data_In_IBUF[3]_inst 
       (.I(Data_In[3]),
        .O(Data_In_IBUF[3]));
  (* IS_CCIO = "FALSE" *) 
  IBUF_HD5 \Data_In_IBUF[4]_inst 
       (.I(Data_In[4]),
        .O(Data_In_IBUF[4]));
  (* IS_CCIO = "FALSE" *) 
  IBUF_HD6 \Data_In_IBUF[5]_inst 
       (.I(Data_In[5]),
        .O(Data_In_IBUF[5]));
  (* IS_CCIO = "FALSE" *) 
  IBUF_HD7 \Data_In_IBUF[6]_inst 
       (.I(Data_In[6]),
        .O(Data_In_IBUF[6]));
  (* IS_CCIO = "FALSE" *) 
  IBUF_HD8 \Data_In_IBUF[7]_inst 
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
  (* IS_CCIO = "FALSE" *) 
  IBUF_HD9 Read_IBUF_inst
       (.I(Read),
        .O(Read_IBUF));
  (* IS_CCIO = "FALSE" *) 
  IBUF_HD10 Reset_IBUF_inst
       (.I(Reset),
        .O(Reset_IBUF));
  (* IS_CCIO = "FALSE" *) 
  IBUF_HD11 Write_IBUF_inst
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
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* INIT_E = "64'h0000000000000000" *) 
  (* INIT_F = "64'h0000000000000000" *) 
  (* INIT_G = "64'h0000000000000000" *) 
  (* INIT_H = "64'h0000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "64" *) 
  (* RTL_RAM_NAME = "inst2/mem" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "7" *) 
  RAM32M16_UNIQ_BASE_ mem_reg_0_7_0_7
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
