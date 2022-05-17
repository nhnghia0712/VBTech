// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Tue May 17 16:39:55 2022
// Host        : NGHIA running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               D:/GitHub/VBTech/VBTech/FIFO/FIFO.sim/sim_1/synth/func/xsim/testbench_func_synth.v
// Design      : fifo
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcku5p-ffvb676-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* DATA_DEPTH = "8" *) (* DATA_WIDTH = "8" *) (* POINTER_WIDTH = "4" *) 
(* NotValidForBitStream *)
module fifo
   (reset,
    clk,
    write,
    read,
    data_in,
    data_out,
    full,
    empty);
  input reset;
  input clk;
  input write;
  input read;
  input [7:0]data_in;
  output [7:0]data_out;
  output full;
  output empty;

  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [7:0]data_in;
  wire [7:0]data_in_IBUF;
  wire [7:0]data_out;
  wire [7:0]data_out_OBUF;
  wire empty;
  wire empty_OBUF;
  wire full;
  wire full_OBUF;
  wire p_0_in1_out;
  wire p_2_in;
  wire [2:0]rd_ptr;
  wire read;
  wire read_IBUF;
  wire reset;
  wire reset_IBUF;
  wire [2:0]wr_ptr;
  wire write;
  wire write_IBUF;

  (* XILINX_LEGACY_PRIM = "BUFG" *) 
  BUFGCE #(
    .CE_TYPE("ASYNC"),
    .SIM_DEVICE("ULTRASCALE_PLUS"),
    .STARTUP_SYNC("FALSE")) 
    clk_IBUF_BUFG_inst
       (.CE(1'b1),
        .I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  IBUF \data_in_IBUF[0]_inst 
       (.I(data_in[0]),
        .O(data_in_IBUF[0]));
  IBUF \data_in_IBUF[1]_inst 
       (.I(data_in[1]),
        .O(data_in_IBUF[1]));
  IBUF \data_in_IBUF[2]_inst 
       (.I(data_in[2]),
        .O(data_in_IBUF[2]));
  IBUF \data_in_IBUF[3]_inst 
       (.I(data_in[3]),
        .O(data_in_IBUF[3]));
  IBUF \data_in_IBUF[4]_inst 
       (.I(data_in[4]),
        .O(data_in_IBUF[4]));
  IBUF \data_in_IBUF[5]_inst 
       (.I(data_in[5]),
        .O(data_in_IBUF[5]));
  IBUF \data_in_IBUF[6]_inst 
       (.I(data_in[6]),
        .O(data_in_IBUF[6]));
  IBUF \data_in_IBUF[7]_inst 
       (.I(data_in[7]),
        .O(data_in_IBUF[7]));
  OBUF \data_out_OBUF[0]_inst 
       (.I(data_out_OBUF[0]),
        .O(data_out[0]));
  OBUF \data_out_OBUF[1]_inst 
       (.I(data_out_OBUF[1]),
        .O(data_out[1]));
  OBUF \data_out_OBUF[2]_inst 
       (.I(data_out_OBUF[2]),
        .O(data_out[2]));
  OBUF \data_out_OBUF[3]_inst 
       (.I(data_out_OBUF[3]),
        .O(data_out[3]));
  OBUF \data_out_OBUF[4]_inst 
       (.I(data_out_OBUF[4]),
        .O(data_out[4]));
  OBUF \data_out_OBUF[5]_inst 
       (.I(data_out_OBUF[5]),
        .O(data_out[5]));
  OBUF \data_out_OBUF[6]_inst 
       (.I(data_out_OBUF[6]),
        .O(data_out[6]));
  OBUF \data_out_OBUF[7]_inst 
       (.I(data_out_OBUF[7]),
        .O(data_out[7]));
  OBUF empty_OBUF_inst
       (.I(empty_OBUF),
        .O(empty));
  OBUF full_OBUF_inst
       (.I(full_OBUF),
        .O(full));
  status_signal inst1
       (.CLK(clk_IBUF_BUFG),
        .Q(wr_ptr),
        .WEBWE(p_0_in1_out),
        .empty_OBUF(empty_OBUF),
        .full_OBUF(full_OBUF),
        .p_2_in(p_2_in),
        .\rd_ptr_reg[2]_0 (rd_ptr),
        .read_IBUF(read_IBUF),
        .reset_IBUF(reset_IBUF),
        .write_IBUF(write_IBUF));
  ram inst2
       (.CLK(clk_IBUF_BUFG),
        .DINBDIN(data_in_IBUF),
        .DOUTADOUT(data_out_OBUF),
        .Q(wr_ptr),
        .WEBWE(p_0_in1_out),
        .mem_reg_bram_0_0(rd_ptr),
        .p_2_in(p_2_in));
  IBUF read_IBUF_inst
       (.I(read),
        .O(read_IBUF));
  IBUF reset_IBUF_inst
       (.I(reset),
        .O(reset_IBUF));
  IBUF write_IBUF_inst
       (.I(write),
        .O(write_IBUF));
endmodule

module ram
   (DOUTADOUT,
    CLK,
    p_2_in,
    mem_reg_bram_0_0,
    Q,
    DINBDIN,
    WEBWE);
  output [7:0]DOUTADOUT;
  input CLK;
  input p_2_in;
  input [2:0]mem_reg_bram_0_0;
  input [2:0]Q;
  input [7:0]DINBDIN;
  input [0:0]WEBWE;

  wire CLK;
  wire [7:0]DINBDIN;
  wire [7:0]DOUTADOUT;
  wire [2:0]Q;
  wire [0:0]WEBWE;
  wire [2:0]mem_reg_bram_0_0;
  wire p_2_in;
  wire [15:0]NLW_mem_reg_bram_0_CASDOUTA_UNCONNECTED;
  wire [15:0]NLW_mem_reg_bram_0_CASDOUTB_UNCONNECTED;
  wire [1:0]NLW_mem_reg_bram_0_CASDOUTPA_UNCONNECTED;
  wire [1:0]NLW_mem_reg_bram_0_CASDOUTPB_UNCONNECTED;
  wire [15:8]NLW_mem_reg_bram_0_DOUTADOUT_UNCONNECTED;
  wire [15:0]NLW_mem_reg_bram_0_DOUTBDOUT_UNCONNECTED;
  wire [1:0]NLW_mem_reg_bram_0_DOUTPADOUTP_UNCONNECTED;
  wire [1:0]NLW_mem_reg_bram_0_DOUTPBDOUTP_UNCONNECTED;

  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}} {SYNTH-7 {cell *THIS*}}" *) 
  (* RDADDR_COLLISION_HWCONFIG = "DELAYED_WRITE" *) 
  (* RTL_RAM_BITS = "64" *) 
  (* RTL_RAM_NAME = "inst2/mem" *) 
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
    .CLOCK_DOMAINS("COMMON"),
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
    mem_reg_bram_0
       (.ADDRARDADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,mem_reg_bram_0_0,1'b1,1'b1,1'b1,1'b1}),
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
        .CASDOUTA(NLW_mem_reg_bram_0_CASDOUTA_UNCONNECTED[15:0]),
        .CASDOUTB(NLW_mem_reg_bram_0_CASDOUTB_UNCONNECTED[15:0]),
        .CASDOUTPA(NLW_mem_reg_bram_0_CASDOUTPA_UNCONNECTED[1:0]),
        .CASDOUTPB(NLW_mem_reg_bram_0_CASDOUTPB_UNCONNECTED[1:0]),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CLKARDCLK(CLK),
        .CLKBWRCLK(CLK),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DINBDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,DINBDIN}),
        .DINPADINP({1'b0,1'b0}),
        .DINPBDINP({1'b0,1'b0}),
        .DOUTADOUT({NLW_mem_reg_bram_0_DOUTADOUT_UNCONNECTED[15:8],DOUTADOUT}),
        .DOUTBDOUT(NLW_mem_reg_bram_0_DOUTBDOUT_UNCONNECTED[15:0]),
        .DOUTPADOUTP(NLW_mem_reg_bram_0_DOUTPADOUTP_UNCONNECTED[1:0]),
        .DOUTPBDOUTP(NLW_mem_reg_bram_0_DOUTPBDOUTP_UNCONNECTED[1:0]),
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
    \rd_ptr_reg[2]_0 ,
    p_2_in,
    empty_OBUF,
    WEBWE,
    full_OBUF,
    write_IBUF,
    read_IBUF,
    reset_IBUF,
    CLK);
  output [2:0]Q;
  output [2:0]\rd_ptr_reg[2]_0 ;
  output p_2_in;
  output empty_OBUF;
  output [0:0]WEBWE;
  output full_OBUF;
  input write_IBUF;
  input read_IBUF;
  input reset_IBUF;
  input CLK;

  wire CLK;
  wire [2:0]Q;
  wire [0:0]WEBWE;
  wire empty_OBUF;
  wire empty_OBUF_inst_i_2_n_0;
  wire full_OBUF;
  wire full_OBUF_inst_i_2_n_0;
  wire [3:1]p_1_in;
  wire p_2_in;
  wire [3:3]rd_ptr;
  wire \rd_ptr[0]_i_1_n_0 ;
  wire \rd_ptr[1]_i_1_n_0 ;
  wire \rd_ptr[2]_i_1_n_0 ;
  wire \rd_ptr[3]_i_1_n_0 ;
  wire \rd_ptr[3]_i_2_n_0 ;
  wire [2:0]\rd_ptr_reg[2]_0 ;
  wire read_IBUF;
  wire reset_IBUF;
  wire [3:3]wr_ptr;
  wire \wr_ptr[0]_i_1_n_0 ;
  wire \wr_ptr[3]_i_1_n_0 ;
  wire write_IBUF;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFF82)) 
    empty_OBUF_inst_i_1
       (.I0(empty_OBUF_inst_i_2_n_0),
        .I1(wr_ptr),
        .I2(rd_ptr),
        .I3(reset_IBUF),
        .O(empty_OBUF));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    empty_OBUF_inst_i_2
       (.I0(\rd_ptr_reg[2]_0 [0]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(\rd_ptr_reg[2]_0 [2]),
        .I4(Q[1]),
        .I5(\rd_ptr_reg[2]_0 [1]),
        .O(empty_OBUF_inst_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00040000)) 
    full_OBUF_inst_i_1
       (.I0(Q[1]),
        .I1(wr_ptr),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(full_OBUF_inst_i_2_n_0),
        .O(full_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    full_OBUF_inst_i_2
       (.I0(\rd_ptr_reg[2]_0 [1]),
        .I1(\rd_ptr_reg[2]_0 [0]),
        .I2(\rd_ptr_reg[2]_0 [2]),
        .I3(rd_ptr),
        .I4(reset_IBUF),
        .O(full_OBUF_inst_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h02202222)) 
    mem_reg_bram_0_i_1
       (.I0(read_IBUF),
        .I1(reset_IBUF),
        .I2(rd_ptr),
        .I3(wr_ptr),
        .I4(empty_OBUF_inst_i_2_n_0),
        .O(p_2_in));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAA2AAAA)) 
    mem_reg_bram_0_i_2
       (.I0(write_IBUF),
        .I1(full_OBUF_inst_i_2_n_0),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(wr_ptr),
        .I5(Q[1]),
        .O(WEBWE));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h5551)) 
    \rd_ptr[0]_i_1 
       (.I0(\rd_ptr_reg[2]_0 [0]),
        .I1(rd_ptr),
        .I2(\rd_ptr_reg[2]_0 [1]),
        .I3(\rd_ptr_reg[2]_0 [2]),
        .O(\rd_ptr[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \rd_ptr[1]_i_1 
       (.I0(\rd_ptr_reg[2]_0 [0]),
        .I1(\rd_ptr_reg[2]_0 [1]),
        .O(\rd_ptr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \rd_ptr[2]_i_1 
       (.I0(\rd_ptr_reg[2]_0 [0]),
        .I1(\rd_ptr_reg[2]_0 [1]),
        .I2(\rd_ptr_reg[2]_0 [2]),
        .O(\rd_ptr[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \rd_ptr[3]_i_1 
       (.I0(read_IBUF),
        .I1(write_IBUF),
        .O(\rd_ptr[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h78F0)) 
    \rd_ptr[3]_i_2 
       (.I0(\rd_ptr_reg[2]_0 [2]),
        .I1(\rd_ptr_reg[2]_0 [1]),
        .I2(rd_ptr),
        .I3(\rd_ptr_reg[2]_0 [0]),
        .O(\rd_ptr[3]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_reg[0] 
       (.C(CLK),
        .CE(\rd_ptr[3]_i_1_n_0 ),
        .D(\rd_ptr[0]_i_1_n_0 ),
        .Q(\rd_ptr_reg[2]_0 [0]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_reg[1] 
       (.C(CLK),
        .CE(\rd_ptr[3]_i_1_n_0 ),
        .D(\rd_ptr[1]_i_1_n_0 ),
        .Q(\rd_ptr_reg[2]_0 [1]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_reg[2] 
       (.C(CLK),
        .CE(\rd_ptr[3]_i_1_n_0 ),
        .D(\rd_ptr[2]_i_1_n_0 ),
        .Q(\rd_ptr_reg[2]_0 [2]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_reg[3] 
       (.C(CLK),
        .CE(\rd_ptr[3]_i_1_n_0 ),
        .D(\rd_ptr[3]_i_2_n_0 ),
        .Q(rd_ptr),
        .R(reset_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h5551)) 
    \wr_ptr[0]_i_1 
       (.I0(Q[0]),
        .I1(wr_ptr),
        .I2(Q[2]),
        .I3(Q[1]),
        .O(\wr_ptr[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \wr_ptr[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(p_1_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h6C)) 
    \wr_ptr[2]_i_1 
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(Q[1]),
        .O(p_1_in[2]));
  LUT2 #(
    .INIT(4'h2)) 
    \wr_ptr[3]_i_1 
       (.I0(write_IBUF),
        .I1(read_IBUF),
        .O(\wr_ptr[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h78F0)) 
    \wr_ptr[3]_i_2 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(wr_ptr),
        .I3(Q[0]),
        .O(p_1_in[3]));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_reg[0] 
       (.C(CLK),
        .CE(\wr_ptr[3]_i_1_n_0 ),
        .D(\wr_ptr[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_reg[1] 
       (.C(CLK),
        .CE(\wr_ptr[3]_i_1_n_0 ),
        .D(p_1_in[1]),
        .Q(Q[1]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_reg[2] 
       (.C(CLK),
        .CE(\wr_ptr[3]_i_1_n_0 ),
        .D(p_1_in[2]),
        .Q(Q[2]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_reg[3] 
       (.C(CLK),
        .CE(\wr_ptr[3]_i_1_n_0 ),
        .D(p_1_in[3]),
        .Q(wr_ptr),
        .R(reset_IBUF));
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
