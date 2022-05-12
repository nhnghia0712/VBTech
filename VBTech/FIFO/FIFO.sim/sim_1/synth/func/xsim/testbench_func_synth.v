// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Thu May 12 12:52:44 2022
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
   (RESET,
    CLK,
    WRITE,
    READ,
    DATA_IN,
    DATA_OUT,
    FULL,
    EMPTY);
  input RESET;
  input CLK;
  input WRITE;
  input READ;
  input [7:0]DATA_IN;
  output [7:0]DATA_OUT;
  output FULL;
  output EMPTY;

  wire CLK;
  wire CLK_IBUF;
  wire CLK_IBUF_BUFG;
  wire [7:0]DATA_IN;
  wire [7:0]DATA_IN_IBUF;
  wire [7:0]DATA_OUT;
  wire DATA_OUT0;
  wire [7:0]DATA_OUT_OBUF;
  wire EMPTY;
  wire EMPTY_OBUF;
  wire FULL;
  wire FULL_OBUF;
  wire READ;
  wire READ_IBUF;
  wire RESET;
  wire RESET_IBUF;
  wire WRITE;
  wire WRITE_IBUF;
  wire inst1_n_0;
  wire inst1_n_1;
  wire inst1_n_2;
  wire inst1_n_3;
  wire inst1_n_4;
  wire inst1_n_5;
  wire p_0_in1_out;

  (* XILINX_LEGACY_PRIM = "BUFG" *) 
  BUFGCE #(
    .CE_TYPE("ASYNC"),
    .SIM_DEVICE("ULTRASCALE_PLUS"),
    .STARTUP_SYNC("FALSE")) 
    CLK_IBUF_BUFG_inst
       (.CE(1'b1),
        .I(CLK_IBUF),
        .O(CLK_IBUF_BUFG));
  IBUF CLK_IBUF_inst
       (.I(CLK),
        .O(CLK_IBUF));
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
  IBUF READ_IBUF_inst
       (.I(READ),
        .O(READ_IBUF));
  IBUF RESET_IBUF_inst
       (.I(RESET),
        .O(RESET_IBUF));
  IBUF WRITE_IBUF_inst
       (.I(WRITE),
        .O(WRITE_IBUF));
  status_signal inst1
       (.CLK(CLK_IBUF_BUFG),
        .E(DATA_OUT0),
        .EMPTY_OBUF(EMPTY_OBUF),
        .FULL_OBUF(FULL_OBUF),
        .Q({inst1_n_0,inst1_n_1,inst1_n_2}),
        .\RD_PTR_reg[2]_0 ({inst1_n_3,inst1_n_4,inst1_n_5}),
        .READ_IBUF(READ_IBUF),
        .SR(RESET_IBUF),
        .WRITE_IBUF(WRITE_IBUF),
        .p_0_in1_out(p_0_in1_out));
  ram inst2
       (.CLK(CLK_IBUF_BUFG),
        .DATA_IN(DATA_IN_IBUF),
        .DATA_OUT(DATA_OUT_OBUF),
        .\DATA_OUT_reg[1]_0 ({inst1_n_3,inst1_n_4,inst1_n_5}),
        .E(DATA_OUT0),
        .WR_PTR({inst1_n_0,inst1_n_1,inst1_n_2}),
        .p_0_in1_out(p_0_in1_out));
endmodule

module ram
   (DATA_OUT,
    E,
    CLK,
    p_0_in1_out,
    DATA_IN,
    \DATA_OUT_reg[1]_0 ,
    WR_PTR);
  output [7:0]DATA_OUT;
  input [0:0]E;
  input CLK;
  input p_0_in1_out;
  input [7:0]DATA_IN;
  input [2:0]\DATA_OUT_reg[1]_0 ;
  input [2:0]WR_PTR;

  wire CLK;
  wire [7:0]DATA_IN;
  wire [7:0]DATA_OUT;
  wire [7:0]DATA_OUT0;
  wire [2:0]\DATA_OUT_reg[1]_0 ;
  wire [0:0]E;
  wire [2:0]WR_PTR;
  wire p_0_in1_out;
  wire [1:0]NLW_MEM_reg_0_7_0_7_DOE_UNCONNECTED;
  wire [1:0]NLW_MEM_reg_0_7_0_7_DOF_UNCONNECTED;
  wire [1:0]NLW_MEM_reg_0_7_0_7_DOG_UNCONNECTED;
  wire [1:0]NLW_MEM_reg_0_7_0_7_DOH_UNCONNECTED;

  FDRE #(
    .INIT(1'b0)) 
    \DATA_OUT_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(DATA_OUT0[0]),
        .Q(DATA_OUT[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DATA_OUT_reg[1] 
       (.C(CLK),
        .CE(E),
        .D(DATA_OUT0[1]),
        .Q(DATA_OUT[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DATA_OUT_reg[2] 
       (.C(CLK),
        .CE(E),
        .D(DATA_OUT0[2]),
        .Q(DATA_OUT[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DATA_OUT_reg[3] 
       (.C(CLK),
        .CE(E),
        .D(DATA_OUT0[3]),
        .Q(DATA_OUT[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DATA_OUT_reg[4] 
       (.C(CLK),
        .CE(E),
        .D(DATA_OUT0[4]),
        .Q(DATA_OUT[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DATA_OUT_reg[5] 
       (.C(CLK),
        .CE(E),
        .D(DATA_OUT0[5]),
        .Q(DATA_OUT[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DATA_OUT_reg[6] 
       (.C(CLK),
        .CE(E),
        .D(DATA_OUT0[6]),
        .Q(DATA_OUT[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DATA_OUT_reg[7] 
       (.C(CLK),
        .CE(E),
        .D(DATA_OUT0[7]),
        .Q(DATA_OUT[7]),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "64" *) 
  (* RTL_RAM_NAME = "inst2/MEM" *) 
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
    MEM_reg_0_7_0_7
       (.ADDRA({1'b0,1'b0,\DATA_OUT_reg[1]_0 }),
        .ADDRB({1'b0,1'b0,\DATA_OUT_reg[1]_0 }),
        .ADDRC({1'b0,1'b0,\DATA_OUT_reg[1]_0 }),
        .ADDRD({1'b0,1'b0,\DATA_OUT_reg[1]_0 }),
        .ADDRE({1'b0,1'b0,\DATA_OUT_reg[1]_0 }),
        .ADDRF({1'b0,1'b0,\DATA_OUT_reg[1]_0 }),
        .ADDRG({1'b0,1'b0,\DATA_OUT_reg[1]_0 }),
        .ADDRH({1'b0,1'b0,WR_PTR}),
        .DIA(DATA_IN[1:0]),
        .DIB(DATA_IN[3:2]),
        .DIC(DATA_IN[5:4]),
        .DID(DATA_IN[7:6]),
        .DIE({1'b0,1'b0}),
        .DIF({1'b0,1'b0}),
        .DIG({1'b0,1'b0}),
        .DIH({1'b0,1'b0}),
        .DOA(DATA_OUT0[1:0]),
        .DOB(DATA_OUT0[3:2]),
        .DOC(DATA_OUT0[5:4]),
        .DOD(DATA_OUT0[7:6]),
        .DOE(NLW_MEM_reg_0_7_0_7_DOE_UNCONNECTED[1:0]),
        .DOF(NLW_MEM_reg_0_7_0_7_DOF_UNCONNECTED[1:0]),
        .DOG(NLW_MEM_reg_0_7_0_7_DOG_UNCONNECTED[1:0]),
        .DOH(NLW_MEM_reg_0_7_0_7_DOH_UNCONNECTED[1:0]),
        .WCLK(CLK),
        .WE(p_0_in1_out));
endmodule

module status_signal
   (Q,
    \RD_PTR_reg[2]_0 ,
    E,
    EMPTY_OBUF,
    p_0_in1_out,
    FULL_OBUF,
    SR,
    CLK,
    WRITE_IBUF,
    READ_IBUF);
  output [2:0]Q;
  output [2:0]\RD_PTR_reg[2]_0 ;
  output [0:0]E;
  output EMPTY_OBUF;
  output p_0_in1_out;
  output FULL_OBUF;
  input [0:0]SR;
  input CLK;
  input WRITE_IBUF;
  input READ_IBUF;

  wire CLK;
  wire [0:0]E;
  wire EMPTY_OBUF;
  wire EMPTY_OBUF_inst_i_2_n_0;
  wire FULL_OBUF;
  wire FULL_OBUF_inst_i_2_n_0;
  wire FULL_OBUF_inst_i_3_n_0;
  wire [2:0]Q;
  wire \RD_PTR[0]_i_1_n_0 ;
  wire \RD_PTR[0]_i_2_n_0 ;
  wire \RD_PTR[1]_i_1_n_0 ;
  wire \RD_PTR[2]_i_1_n_0 ;
  wire \RD_PTR[3]_i_1_n_0 ;
  wire \RD_PTR[4]_i_1_n_0 ;
  wire \RD_PTR[5]_i_1_n_0 ;
  wire \RD_PTR[6]_i_1_n_0 ;
  wire \RD_PTR[7]_i_1_n_0 ;
  wire \RD_PTR[8]_i_1_n_0 ;
  wire \RD_PTR[8]_i_2_n_0 ;
  wire \RD_PTR[8]_i_3_n_0 ;
  wire [2:0]\RD_PTR_reg[2]_0 ;
  wire \RD_PTR_reg_n_0_[3] ;
  wire \RD_PTR_reg_n_0_[4] ;
  wire \RD_PTR_reg_n_0_[5] ;
  wire \RD_PTR_reg_n_0_[6] ;
  wire \RD_PTR_reg_n_0_[7] ;
  wire \RD_PTR_reg_n_0_[8] ;
  wire READ_IBUF;
  wire [0:0]SR;
  wire WRITE_IBUF;
  wire \WR_PTR[1]_i_2_n_0 ;
  wire \WR_PTR[1]_i_3_n_0 ;
  wire \WR_PTR[3]_i_2_n_0 ;
  wire \WR_PTR[4]_i_2_n_0 ;
  wire \WR_PTR[5]_i_2_n_0 ;
  wire \WR_PTR[5]_i_3_n_0 ;
  wire \WR_PTR[8]_i_1_n_0 ;
  wire \WR_PTR[8]_i_3_n_0 ;
  wire \WR_PTR_reg_n_0_[3] ;
  wire \WR_PTR_reg_n_0_[4] ;
  wire \WR_PTR_reg_n_0_[5] ;
  wire \WR_PTR_reg_n_0_[6] ;
  wire \WR_PTR_reg_n_0_[7] ;
  wire \WR_PTR_reg_n_0_[8] ;
  wire p_0_in1_out;
  wire [8:0]p_1_in;

  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \DATA_OUT[7]_i_1 
       (.I0(READ_IBUF),
        .I1(EMPTY_OBUF_inst_i_2_n_0),
        .I2(\WR_PTR_reg_n_0_[7] ),
        .I3(\WR_PTR_reg_n_0_[8] ),
        .I4(\WR_PTR_reg_n_0_[6] ),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    EMPTY_OBUF_inst_i_1
       (.I0(\WR_PTR_reg_n_0_[6] ),
        .I1(\WR_PTR_reg_n_0_[8] ),
        .I2(\WR_PTR_reg_n_0_[7] ),
        .I3(EMPTY_OBUF_inst_i_2_n_0),
        .O(EMPTY_OBUF));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    EMPTY_OBUF_inst_i_2
       (.I0(\WR_PTR_reg_n_0_[4] ),
        .I1(\WR_PTR_reg_n_0_[5] ),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(\WR_PTR_reg_n_0_[3] ),
        .O(EMPTY_OBUF_inst_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00001000)) 
    FULL_OBUF_inst_i_1
       (.I0(\WR_PTR_reg_n_0_[5] ),
        .I1(\WR_PTR_reg_n_0_[4] ),
        .I2(FULL_OBUF_inst_i_2_n_0),
        .I3(\WR_PTR_reg_n_0_[3] ),
        .I4(FULL_OBUF_inst_i_3_n_0),
        .O(FULL_OBUF));
  LUT3 #(
    .INIT(8'h01)) 
    FULL_OBUF_inst_i_2
       (.I0(\WR_PTR_reg_n_0_[7] ),
        .I1(\WR_PTR_reg_n_0_[8] ),
        .I2(\WR_PTR_reg_n_0_[6] ),
        .O(FULL_OBUF_inst_i_2_n_0));
  LUT3 #(
    .INIT(8'hFE)) 
    FULL_OBUF_inst_i_3
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(FULL_OBUF_inst_i_3_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAA8AAA)) 
    MEM_reg_0_7_0_7_i_1
       (.I0(WRITE_IBUF),
        .I1(FULL_OBUF_inst_i_3_n_0),
        .I2(\WR_PTR_reg_n_0_[3] ),
        .I3(FULL_OBUF_inst_i_2_n_0),
        .I4(\WR_PTR_reg_n_0_[4] ),
        .I5(\WR_PTR_reg_n_0_[5] ),
        .O(p_0_in1_out));
  LUT6 #(
    .INIT(64'h00000000FFFFFFFD)) 
    \RD_PTR[0]_i_1 
       (.I0(\RD_PTR_reg_n_0_[3] ),
        .I1(\RD_PTR[0]_i_2_n_0 ),
        .I2(\RD_PTR_reg_n_0_[6] ),
        .I3(\RD_PTR_reg_n_0_[7] ),
        .I4(\RD_PTR_reg[2]_0 [1]),
        .I5(\RD_PTR_reg[2]_0 [0]),
        .O(\RD_PTR[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \RD_PTR[0]_i_2 
       (.I0(\RD_PTR_reg_n_0_[8] ),
        .I1(\RD_PTR_reg[2]_0 [2]),
        .I2(\RD_PTR_reg_n_0_[5] ),
        .I3(\RD_PTR_reg_n_0_[4] ),
        .O(\RD_PTR[0]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \RD_PTR[1]_i_1 
       (.I0(\RD_PTR_reg[2]_0 [0]),
        .I1(\RD_PTR_reg[2]_0 [1]),
        .O(\RD_PTR[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \RD_PTR[2]_i_1 
       (.I0(\RD_PTR_reg[2]_0 [2]),
        .I1(\RD_PTR_reg[2]_0 [0]),
        .I2(\RD_PTR_reg[2]_0 [1]),
        .O(\RD_PTR[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \RD_PTR[3]_i_1 
       (.I0(\RD_PTR_reg[2]_0 [1]),
        .I1(\RD_PTR_reg[2]_0 [0]),
        .I2(\RD_PTR_reg[2]_0 [2]),
        .I3(\RD_PTR_reg_n_0_[3] ),
        .O(\RD_PTR[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \RD_PTR[4]_i_1 
       (.I0(\RD_PTR_reg_n_0_[4] ),
        .I1(\RD_PTR_reg[2]_0 [1]),
        .I2(\RD_PTR_reg[2]_0 [0]),
        .I3(\RD_PTR_reg[2]_0 [2]),
        .I4(\RD_PTR_reg_n_0_[3] ),
        .O(\RD_PTR[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \RD_PTR[5]_i_1 
       (.I0(\RD_PTR_reg_n_0_[5] ),
        .I1(\RD_PTR_reg_n_0_[3] ),
        .I2(\RD_PTR_reg[2]_0 [2]),
        .I3(\RD_PTR_reg[2]_0 [0]),
        .I4(\RD_PTR_reg[2]_0 [1]),
        .I5(\RD_PTR_reg_n_0_[4] ),
        .O(\RD_PTR[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \RD_PTR[6]_i_1 
       (.I0(\RD_PTR_reg_n_0_[6] ),
        .I1(\RD_PTR_reg_n_0_[4] ),
        .I2(\RD_PTR[8]_i_3_n_0 ),
        .I3(\RD_PTR_reg_n_0_[5] ),
        .O(\RD_PTR[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \RD_PTR[7]_i_1 
       (.I0(\RD_PTR_reg_n_0_[7] ),
        .I1(\RD_PTR_reg_n_0_[5] ),
        .I2(\RD_PTR[8]_i_3_n_0 ),
        .I3(\RD_PTR_reg_n_0_[4] ),
        .I4(\RD_PTR_reg_n_0_[6] ),
        .O(\RD_PTR[7]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \RD_PTR[8]_i_1 
       (.I0(READ_IBUF),
        .I1(WRITE_IBUF),
        .O(\RD_PTR[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \RD_PTR[8]_i_2 
       (.I0(\RD_PTR_reg_n_0_[8] ),
        .I1(\RD_PTR_reg_n_0_[6] ),
        .I2(\RD_PTR_reg_n_0_[4] ),
        .I3(\RD_PTR[8]_i_3_n_0 ),
        .I4(\RD_PTR_reg_n_0_[5] ),
        .I5(\RD_PTR_reg_n_0_[7] ),
        .O(\RD_PTR[8]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \RD_PTR[8]_i_3 
       (.I0(\RD_PTR_reg_n_0_[3] ),
        .I1(\RD_PTR_reg[2]_0 [2]),
        .I2(\RD_PTR_reg[2]_0 [0]),
        .I3(\RD_PTR_reg[2]_0 [1]),
        .O(\RD_PTR[8]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \RD_PTR_reg[0] 
       (.C(CLK),
        .CE(\RD_PTR[8]_i_1_n_0 ),
        .D(\RD_PTR[0]_i_1_n_0 ),
        .Q(\RD_PTR_reg[2]_0 [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RD_PTR_reg[1] 
       (.C(CLK),
        .CE(\RD_PTR[8]_i_1_n_0 ),
        .D(\RD_PTR[1]_i_1_n_0 ),
        .Q(\RD_PTR_reg[2]_0 [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RD_PTR_reg[2] 
       (.C(CLK),
        .CE(\RD_PTR[8]_i_1_n_0 ),
        .D(\RD_PTR[2]_i_1_n_0 ),
        .Q(\RD_PTR_reg[2]_0 [2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RD_PTR_reg[3] 
       (.C(CLK),
        .CE(\RD_PTR[8]_i_1_n_0 ),
        .D(\RD_PTR[3]_i_1_n_0 ),
        .Q(\RD_PTR_reg_n_0_[3] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RD_PTR_reg[4] 
       (.C(CLK),
        .CE(\RD_PTR[8]_i_1_n_0 ),
        .D(\RD_PTR[4]_i_1_n_0 ),
        .Q(\RD_PTR_reg_n_0_[4] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RD_PTR_reg[5] 
       (.C(CLK),
        .CE(\RD_PTR[8]_i_1_n_0 ),
        .D(\RD_PTR[5]_i_1_n_0 ),
        .Q(\RD_PTR_reg_n_0_[5] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RD_PTR_reg[6] 
       (.C(CLK),
        .CE(\RD_PTR[8]_i_1_n_0 ),
        .D(\RD_PTR[6]_i_1_n_0 ),
        .Q(\RD_PTR_reg_n_0_[6] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RD_PTR_reg[7] 
       (.C(CLK),
        .CE(\RD_PTR[8]_i_1_n_0 ),
        .D(\RD_PTR[7]_i_1_n_0 ),
        .Q(\RD_PTR_reg_n_0_[7] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RD_PTR_reg[8] 
       (.C(CLK),
        .CE(\RD_PTR[8]_i_1_n_0 ),
        .D(\RD_PTR[8]_i_2_n_0 ),
        .Q(\RD_PTR_reg_n_0_[8] ),
        .R(SR));
  LUT6 #(
    .INIT(64'h00000000FDFEFFFF)) 
    \WR_PTR[0]_i_1 
       (.I0(WRITE_IBUF),
        .I1(\WR_PTR[1]_i_3_n_0 ),
        .I2(FULL_OBUF_inst_i_3_n_0),
        .I3(\WR_PTR_reg_n_0_[3] ),
        .I4(FULL_OBUF_inst_i_2_n_0),
        .I5(Q[0]),
        .O(p_1_in[0]));
  LUT6 #(
    .INIT(64'h9991999899999999)) 
    \WR_PTR[1]_i_1 
       (.I0(\WR_PTR[1]_i_2_n_0 ),
        .I1(WRITE_IBUF),
        .I2(\WR_PTR[1]_i_3_n_0 ),
        .I3(FULL_OBUF_inst_i_3_n_0),
        .I4(\WR_PTR_reg_n_0_[3] ),
        .I5(FULL_OBUF_inst_i_2_n_0),
        .O(p_1_in[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \WR_PTR[1]_i_2 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(\WR_PTR[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \WR_PTR[1]_i_3 
       (.I0(\WR_PTR_reg_n_0_[5] ),
        .I1(\WR_PTR_reg_n_0_[4] ),
        .O(\WR_PTR[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h7E812A807E817E81)) 
    \WR_PTR[2]_i_1 
       (.I0(WRITE_IBUF),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(EMPTY_OBUF_inst_i_2_n_0),
        .I5(FULL_OBUF_inst_i_2_n_0),
        .O(p_1_in[2]));
  LUT6 #(
    .INIT(64'hB8478844B847B847)) 
    \WR_PTR[3]_i_1 
       (.I0(\WR_PTR[3]_i_2_n_0 ),
        .I1(WRITE_IBUF),
        .I2(FULL_OBUF_inst_i_3_n_0),
        .I3(\WR_PTR_reg_n_0_[3] ),
        .I4(EMPTY_OBUF_inst_i_2_n_0),
        .I5(FULL_OBUF_inst_i_2_n_0),
        .O(p_1_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \WR_PTR[3]_i_2 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\WR_PTR[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8784B4B48787B4B4)) 
    \WR_PTR[4]_i_1 
       (.I0(\WR_PTR[4]_i_2_n_0 ),
        .I1(WRITE_IBUF),
        .I2(\WR_PTR_reg_n_0_[4] ),
        .I3(\WR_PTR_reg_n_0_[5] ),
        .I4(\WR_PTR[5]_i_3_n_0 ),
        .I5(FULL_OBUF_inst_i_2_n_0),
        .O(p_1_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \WR_PTR[4]_i_2 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\WR_PTR_reg_n_0_[3] ),
        .O(\WR_PTR[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB844BB44B847BB44)) 
    \WR_PTR[5]_i_1 
       (.I0(\WR_PTR[5]_i_2_n_0 ),
        .I1(WRITE_IBUF),
        .I2(\WR_PTR_reg_n_0_[4] ),
        .I3(\WR_PTR_reg_n_0_[5] ),
        .I4(\WR_PTR[5]_i_3_n_0 ),
        .I5(FULL_OBUF_inst_i_2_n_0),
        .O(p_1_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \WR_PTR[5]_i_2 
       (.I0(\WR_PTR_reg_n_0_[3] ),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(\WR_PTR_reg_n_0_[4] ),
        .O(\WR_PTR[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \WR_PTR[5]_i_3 
       (.I0(\WR_PTR_reg_n_0_[3] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .O(\WR_PTR[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B847474744)) 
    \WR_PTR[6]_i_1 
       (.I0(\WR_PTR[8]_i_3_n_0 ),
        .I1(WRITE_IBUF),
        .I2(EMPTY_OBUF_inst_i_2_n_0),
        .I3(\WR_PTR_reg_n_0_[7] ),
        .I4(\WR_PTR_reg_n_0_[8] ),
        .I5(\WR_PTR_reg_n_0_[6] ),
        .O(p_1_in[6]));
  LUT6 #(
    .INIT(64'hBBFFBBCC44004430)) 
    \WR_PTR[7]_i_1 
       (.I0(\WR_PTR[8]_i_3_n_0 ),
        .I1(WRITE_IBUF),
        .I2(\WR_PTR_reg_n_0_[8] ),
        .I3(\WR_PTR_reg_n_0_[6] ),
        .I4(EMPTY_OBUF_inst_i_2_n_0),
        .I5(\WR_PTR_reg_n_0_[7] ),
        .O(p_1_in[7]));
  LUT2 #(
    .INIT(4'h6)) 
    \WR_PTR[8]_i_1 
       (.I0(WRITE_IBUF),
        .I1(READ_IBUF),
        .O(\WR_PTR[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB4F0F0F0B4F0F0C0)) 
    \WR_PTR[8]_i_2 
       (.I0(\WR_PTR[8]_i_3_n_0 ),
        .I1(WRITE_IBUF),
        .I2(\WR_PTR_reg_n_0_[8] ),
        .I3(\WR_PTR_reg_n_0_[7] ),
        .I4(\WR_PTR_reg_n_0_[6] ),
        .I5(EMPTY_OBUF_inst_i_2_n_0),
        .O(p_1_in[8]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \WR_PTR[8]_i_3 
       (.I0(\WR_PTR_reg_n_0_[4] ),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(\WR_PTR_reg_n_0_[3] ),
        .I5(\WR_PTR_reg_n_0_[5] ),
        .O(\WR_PTR[8]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \WR_PTR_reg[0] 
       (.C(CLK),
        .CE(\WR_PTR[8]_i_1_n_0 ),
        .D(p_1_in[0]),
        .Q(Q[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \WR_PTR_reg[1] 
       (.C(CLK),
        .CE(\WR_PTR[8]_i_1_n_0 ),
        .D(p_1_in[1]),
        .Q(Q[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \WR_PTR_reg[2] 
       (.C(CLK),
        .CE(\WR_PTR[8]_i_1_n_0 ),
        .D(p_1_in[2]),
        .Q(Q[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \WR_PTR_reg[3] 
       (.C(CLK),
        .CE(\WR_PTR[8]_i_1_n_0 ),
        .D(p_1_in[3]),
        .Q(\WR_PTR_reg_n_0_[3] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \WR_PTR_reg[4] 
       (.C(CLK),
        .CE(\WR_PTR[8]_i_1_n_0 ),
        .D(p_1_in[4]),
        .Q(\WR_PTR_reg_n_0_[4] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \WR_PTR_reg[5] 
       (.C(CLK),
        .CE(\WR_PTR[8]_i_1_n_0 ),
        .D(p_1_in[5]),
        .Q(\WR_PTR_reg_n_0_[5] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \WR_PTR_reg[6] 
       (.C(CLK),
        .CE(\WR_PTR[8]_i_1_n_0 ),
        .D(p_1_in[6]),
        .Q(\WR_PTR_reg_n_0_[6] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \WR_PTR_reg[7] 
       (.C(CLK),
        .CE(\WR_PTR[8]_i_1_n_0 ),
        .D(p_1_in[7]),
        .Q(\WR_PTR_reg_n_0_[7] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \WR_PTR_reg[8] 
       (.C(CLK),
        .CE(\WR_PTR[8]_i_1_n_0 ),
        .D(p_1_in[8]),
        .Q(\WR_PTR_reg_n_0_[8] ),
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
