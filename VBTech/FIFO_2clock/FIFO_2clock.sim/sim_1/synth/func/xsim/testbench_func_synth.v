// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Fri May 20 16:22:43 2022
// Host        : NGHIA running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               D:/GitHub/VBTech/VBTech/FIFO_2clock/FIFO_2clock.sim/sim_1/synth/func/xsim/testbench_func_synth.v
// Design      : fifo
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcku5p-ffvb676-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* DATA_DEPTH = "8" *) (* DATA_WIDTH = "8" *) (* POINTER_WIDTH = "3" *) 
(* NotValidForBitStream *)
module fifo
   (wr_reset,
    rd_reset,
    wr_clk,
    rd_clk,
    write,
    read,
    data_in,
    data_out,
    full,
    empty);
  input wr_reset;
  input rd_reset;
  input wr_clk;
  input rd_clk;
  input write;
  input read;
  input [7:0]data_in;
  output [7:0]data_out;
  output full;
  output empty;

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
  wire rd_clk;
  wire rd_clk_IBUF;
  wire rd_clk_IBUF_BUFG;
  wire [2:0]rd_ptr;
  wire rd_reset;
  wire rd_reset_IBUF;
  wire read;
  wire read_IBUF;
  wire wr_clk;
  wire wr_clk_IBUF;
  wire wr_clk_IBUF_BUFG;
  wire [2:0]wr_ptr;
  wire wr_reset;
  wire wr_reset_IBUF;
  wire write;
  wire write_IBUF;

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
       (.AR(rd_reset_IBUF),
        .CLK(rd_clk_IBUF_BUFG),
        .E(p_0_in1_out),
        .\data_out_reg[0] (wr_reset_IBUF),
        .empty_OBUF(empty_OBUF),
        .full_OBUF(full_OBUF),
        .out(wr_ptr),
        .\rd_bin_reg[2]_0 (rd_ptr),
        .\rd_bin_reg[3]_0 (p_2_in),
        .read_IBUF(read_IBUF),
        .\temp_reg[3] (wr_clk_IBUF_BUFG),
        .write_IBUF(write_IBUF));
  ram inst2
       (.CLK(rd_clk_IBUF_BUFG),
        .DINBDIN(data_in_IBUF),
        .DOUTADOUT(data_out_OBUF),
        .E(p_0_in1_out),
        .mem_reg_bram_0_0(wr_clk_IBUF_BUFG),
        .mem_reg_bram_0_1(p_2_in),
        .mem_reg_bram_0_2(rd_ptr),
        .out(wr_ptr));
  (* XILINX_LEGACY_PRIM = "BUFG" *) 
  BUFGCE #(
    .CE_TYPE("ASYNC"),
    .SIM_DEVICE("ULTRASCALE_PLUS"),
    .STARTUP_SYNC("FALSE")) 
    rd_clk_IBUF_BUFG_inst
       (.CE(1'b1),
        .I(rd_clk_IBUF),
        .O(rd_clk_IBUF_BUFG));
  IBUF rd_clk_IBUF_inst
       (.I(rd_clk),
        .O(rd_clk_IBUF));
  IBUF rd_reset_IBUF_inst
       (.I(rd_reset),
        .O(rd_reset_IBUF));
  IBUF read_IBUF_inst
       (.I(read),
        .O(read_IBUF));
  (* XILINX_LEGACY_PRIM = "BUFG" *) 
  BUFGCE #(
    .CE_TYPE("ASYNC"),
    .SIM_DEVICE("ULTRASCALE_PLUS"),
    .STARTUP_SYNC("FALSE")) 
    wr_clk_IBUF_BUFG_inst
       (.CE(1'b1),
        .I(wr_clk_IBUF),
        .O(wr_clk_IBUF_BUFG));
  IBUF wr_clk_IBUF_inst
       (.I(wr_clk),
        .O(wr_clk_IBUF));
  IBUF wr_reset_IBUF_inst
       (.I(wr_reset),
        .O(wr_reset_IBUF));
  IBUF write_IBUF_inst
       (.I(write),
        .O(write_IBUF));
endmodule

module ram
   (DOUTADOUT,
    CLK,
    mem_reg_bram_0_0,
    mem_reg_bram_0_1,
    mem_reg_bram_0_2,
    out,
    DINBDIN,
    E);
  output [7:0]DOUTADOUT;
  input CLK;
  input mem_reg_bram_0_0;
  input [0:0]mem_reg_bram_0_1;
  input [2:0]mem_reg_bram_0_2;
  input [2:0]out;
  input [7:0]DINBDIN;
  input [0:0]E;

  wire CLK;
  wire [7:0]DINBDIN;
  wire [7:0]DOUTADOUT;
  wire [0:0]E;
  wire mem_reg_bram_0_0;
  wire [0:0]mem_reg_bram_0_1;
  wire [2:0]mem_reg_bram_0_2;
  wire [2:0]out;
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
    mem_reg_bram_0
       (.ADDRARDADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,mem_reg_bram_0_2,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,out,1'b1,1'b1,1'b1,1'b1}),
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
        .CLKBWRCLK(mem_reg_bram_0_0),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DINBDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,DINBDIN}),
        .DINPADINP({1'b0,1'b0}),
        .DINPBDINP({1'b0,1'b0}),
        .DOUTADOUT({NLW_mem_reg_bram_0_DOUTADOUT_UNCONNECTED[15:8],DOUTADOUT}),
        .DOUTBDOUT(NLW_mem_reg_bram_0_DOUTBDOUT_UNCONNECTED[15:0]),
        .DOUTPADOUTP(NLW_mem_reg_bram_0_DOUTPADOUTP_UNCONNECTED[1:0]),
        .DOUTPBDOUTP(NLW_mem_reg_bram_0_DOUTPBDOUTP_UNCONNECTED[1:0]),
        .ENARDEN(mem_reg_bram_0_1),
        .ENBWREN(1'b1),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SLEEP(1'b0),
        .WEA({1'b1,1'b1}),
        .WEBWE({1'b0,1'b0,E,E}));
endmodule

module status_signal
   (E,
    out,
    full_OBUF,
    \rd_bin_reg[3]_0 ,
    \rd_bin_reg[2]_0 ,
    empty_OBUF,
    CLK,
    AR,
    \temp_reg[3] ,
    \data_out_reg[0] ,
    write_IBUF,
    read_IBUF);
  output [0:0]E;
  output [2:0]out;
  output full_OBUF;
  output [0:0]\rd_bin_reg[3]_0 ;
  output [2:0]\rd_bin_reg[2]_0 ;
  output empty_OBUF;
  input CLK;
  input [0:0]AR;
  input \temp_reg[3] ;
  input [0:0]\data_out_reg[0] ;
  input write_IBUF;
  input read_IBUF;

  wire [0:0]AR;
  wire CLK;
  wire [0:0]E;
  wire [0:0]\data_out_reg[0] ;
  wire empty_OBUF;
  wire full_OBUF;
  wire [2:0]out;
  wire [3:0]p_0_in;
  wire [3:0]p_0_in__0;
  wire p_1_in;
  wire [3:3]rd_bin_reg;
  wire [2:0]\rd_bin_reg[2]_0 ;
  wire [0:0]\rd_bin_reg[3]_0 ;
  wire [0:0]rd_gray;
  wire read_IBUF;
  wire \temp_reg[3] ;
  wire [0:0]wr_gray;
  wire write_IBUF;

  sync inst3
       (.AR(AR),
        .CLK(CLK),
        .D(wr_gray),
        .E(\rd_bin_reg[3]_0 ),
        .Q({p_1_in,out}),
        .empty_OBUF(empty_OBUF),
        .\rd_bin_reg[0] ({rd_bin_reg,\rd_bin_reg[2]_0 }),
        .read_IBUF(read_IBUF));
  sync_0 inst4
       (.D(rd_gray),
        .E(E),
        .Q({p_1_in,out}),
        .\data_out_reg[0]_0 (\data_out_reg[0] ),
        .full_OBUF(full_OBUF),
        .\temp_reg[3]_0 ({rd_bin_reg,\rd_bin_reg[2]_0 }),
        .\temp_reg[3]_1 (\temp_reg[3] ),
        .write_IBUF(write_IBUF));
  LUT1 #(
    .INIT(2'h1)) 
    \rd_bin[0]_i_1 
       (.I0(\rd_bin_reg[2]_0 [0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \rd_bin[2]_i_1 
       (.I0(\rd_bin_reg[2]_0 [2]),
        .I1(\rd_bin_reg[2]_0 [1]),
        .I2(\rd_bin_reg[2]_0 [0]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \rd_bin[3]_i_1 
       (.I0(rd_bin_reg),
        .I1(\rd_bin_reg[2]_0 [0]),
        .I2(\rd_bin_reg[2]_0 [1]),
        .I3(\rd_bin_reg[2]_0 [2]),
        .O(p_0_in__0[3]));
  FDCE #(
    .INIT(1'b0)) 
    \rd_bin_reg[0] 
       (.C(CLK),
        .CE(\rd_bin_reg[3]_0 ),
        .CLR(AR),
        .D(p_0_in__0[0]),
        .Q(\rd_bin_reg[2]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \rd_bin_reg[1] 
       (.C(CLK),
        .CE(\rd_bin_reg[3]_0 ),
        .CLR(AR),
        .D(rd_gray),
        .Q(\rd_bin_reg[2]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \rd_bin_reg[2] 
       (.C(CLK),
        .CE(\rd_bin_reg[3]_0 ),
        .CLR(AR),
        .D(p_0_in__0[2]),
        .Q(\rd_bin_reg[2]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \rd_bin_reg[3] 
       (.C(CLK),
        .CE(\rd_bin_reg[3]_0 ),
        .CLR(AR),
        .D(p_0_in__0[3]),
        .Q(rd_bin_reg));
  LUT1 #(
    .INIT(2'h1)) 
    \wr_bin[0]_i_1 
       (.I0(out[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \wr_bin[2]_i_1 
       (.I0(out[2]),
        .I1(out[1]),
        .I2(out[0]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \wr_bin[3]_i_1 
       (.I0(p_1_in),
        .I1(out[0]),
        .I2(out[1]),
        .I3(out[2]),
        .O(p_0_in[3]));
  FDCE #(
    .INIT(1'b0)) 
    \wr_bin_reg[0] 
       (.C(\temp_reg[3] ),
        .CE(E),
        .CLR(\data_out_reg[0] ),
        .D(p_0_in[0]),
        .Q(out[0]));
  FDCE #(
    .INIT(1'b0)) 
    \wr_bin_reg[1] 
       (.C(\temp_reg[3] ),
        .CE(E),
        .CLR(\data_out_reg[0] ),
        .D(wr_gray),
        .Q(out[1]));
  FDCE #(
    .INIT(1'b0)) 
    \wr_bin_reg[2] 
       (.C(\temp_reg[3] ),
        .CE(E),
        .CLR(\data_out_reg[0] ),
        .D(p_0_in[2]),
        .Q(out[2]));
  FDCE #(
    .INIT(1'b0)) 
    \wr_bin_reg[3] 
       (.C(\temp_reg[3] ),
        .CE(E),
        .CLR(\data_out_reg[0] ),
        .D(p_0_in[3]),
        .Q(p_1_in));
endmodule

module sync
   (D,
    E,
    empty_OBUF,
    Q,
    read_IBUF,
    \rd_bin_reg[0] ,
    CLK,
    AR);
  output [0:0]D;
  output [0:0]E;
  output empty_OBUF;
  input [3:0]Q;
  input read_IBUF;
  input [3:0]\rd_bin_reg[0] ;
  input CLK;
  input [0:0]AR;

  wire [0:0]AR;
  wire CLK;
  wire [0:0]D;
  wire [0:0]E;
  wire [3:0]Q;
  wire empty_OBUF;
  wire empty_OBUF_inst_i_2_n_0;
  wire [3:0]\rd_bin_reg[0] ;
  wire read_IBUF;
  wire [3:0]temp;
  wire [2:1]wr_gray;
  wire [3:0]wr_gray_sync;

  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(temp[0]),
        .Q(wr_gray_sync[0]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(temp[1]),
        .Q(wr_gray_sync[1]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(temp[2]),
        .Q(wr_gray_sync[2]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(temp[3]),
        .Q(wr_gray_sync[3]));
  LUT5 #(
    .INIT(32'h28000082)) 
    empty_OBUF_inst_i_1
       (.I0(empty_OBUF_inst_i_2_n_0),
        .I1(\rd_bin_reg[0] [2]),
        .I2(wr_gray_sync[2]),
        .I3(wr_gray_sync[3]),
        .I4(\rd_bin_reg[0] [3]),
        .O(empty_OBUF));
  LUT6 #(
    .INIT(64'h0069960096000069)) 
    empty_OBUF_inst_i_2
       (.I0(wr_gray_sync[1]),
        .I1(wr_gray_sync[2]),
        .I2(wr_gray_sync[3]),
        .I3(\rd_bin_reg[0] [1]),
        .I4(wr_gray_sync[0]),
        .I5(\rd_bin_reg[0] [0]),
        .O(empty_OBUF_inst_i_2_n_0));
  LUT6 #(
    .INIT(64'hA82A2AA8AAAAAAAA)) 
    mem_reg_bram_0_i_1
       (.I0(read_IBUF),
        .I1(\rd_bin_reg[0] [3]),
        .I2(wr_gray_sync[3]),
        .I3(wr_gray_sync[2]),
        .I4(\rd_bin_reg[0] [2]),
        .I5(empty_OBUF_inst_i_2_n_0),
        .O(E));
  LUT2 #(
    .INIT(4'h6)) 
    \temp[0]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(D));
  LUT2 #(
    .INIT(4'h6)) 
    \temp[1]_i_1 
       (.I0(Q[1]),
        .I1(Q[2]),
        .O(wr_gray[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \temp[2]_i_1 
       (.I0(Q[2]),
        .I1(Q[3]),
        .O(wr_gray[2]));
  FDCE #(
    .INIT(1'b0)) 
    \temp_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D),
        .Q(temp[0]));
  FDCE #(
    .INIT(1'b0)) 
    \temp_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(wr_gray[1]),
        .Q(temp[1]));
  FDCE #(
    .INIT(1'b0)) 
    \temp_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(wr_gray[2]),
        .Q(temp[2]));
  FDCE #(
    .INIT(1'b0)) 
    \temp_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(Q[3]),
        .Q(temp[3]));
endmodule

(* ORIG_REF_NAME = "sync" *) 
module sync_0
   (E,
    full_OBUF,
    D,
    write_IBUF,
    Q,
    \temp_reg[3]_0 ,
    \temp_reg[3]_1 ,
    \data_out_reg[0]_0 );
  output [0:0]E;
  output full_OBUF;
  output [0:0]D;
  input write_IBUF;
  input [3:0]Q;
  input [3:0]\temp_reg[3]_0 ;
  input \temp_reg[3]_1 ;
  input [0:0]\data_out_reg[0]_0 ;

  wire [0:0]D;
  wire [0:0]E;
  wire [3:0]Q;
  wire [0:0]\data_out_reg[0]_0 ;
  wire full_OBUF;
  wire full_OBUF_inst_i_2_n_0;
  wire [2:1]rd_gray;
  wire [3:0]rd_gray_sync;
  wire [3:0]\temp_reg[3]_0 ;
  wire \temp_reg[3]_1 ;
  wire \temp_reg_n_0_[0] ;
  wire \temp_reg_n_0_[1] ;
  wire \temp_reg_n_0_[2] ;
  wire \temp_reg_n_0_[3] ;
  wire write_IBUF;

  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[0] 
       (.C(\temp_reg[3]_1 ),
        .CE(1'b1),
        .CLR(\data_out_reg[0]_0 ),
        .D(\temp_reg_n_0_[0] ),
        .Q(rd_gray_sync[0]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[1] 
       (.C(\temp_reg[3]_1 ),
        .CE(1'b1),
        .CLR(\data_out_reg[0]_0 ),
        .D(\temp_reg_n_0_[1] ),
        .Q(rd_gray_sync[1]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[2] 
       (.C(\temp_reg[3]_1 ),
        .CE(1'b1),
        .CLR(\data_out_reg[0]_0 ),
        .D(\temp_reg_n_0_[2] ),
        .Q(rd_gray_sync[2]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[3] 
       (.C(\temp_reg[3]_1 ),
        .CE(1'b1),
        .CLR(\data_out_reg[0]_0 ),
        .D(\temp_reg_n_0_[3] ),
        .Q(rd_gray_sync[3]));
  LUT5 #(
    .INIT(32'h08202008)) 
    full_OBUF_inst_i_1
       (.I0(full_OBUF_inst_i_2_n_0),
        .I1(Q[3]),
        .I2(rd_gray_sync[3]),
        .I3(Q[2]),
        .I4(rd_gray_sync[2]),
        .O(full_OBUF));
  LUT6 #(
    .INIT(64'h0069960096000069)) 
    full_OBUF_inst_i_2
       (.I0(rd_gray_sync[1]),
        .I1(rd_gray_sync[2]),
        .I2(rd_gray_sync[3]),
        .I3(Q[1]),
        .I4(rd_gray_sync[0]),
        .I5(Q[0]),
        .O(full_OBUF_inst_i_2_n_0));
  LUT6 #(
    .INIT(64'hAA2882AAAAAAAAAA)) 
    mem_reg_bram_0_i_2
       (.I0(write_IBUF),
        .I1(rd_gray_sync[2]),
        .I2(Q[2]),
        .I3(rd_gray_sync[3]),
        .I4(Q[3]),
        .I5(full_OBUF_inst_i_2_n_0),
        .O(E));
  LUT2 #(
    .INIT(4'h6)) 
    \temp[0]_i_1__0 
       (.I0(\temp_reg[3]_0 [0]),
        .I1(\temp_reg[3]_0 [1]),
        .O(D));
  LUT2 #(
    .INIT(4'h6)) 
    \temp[1]_i_1__0 
       (.I0(\temp_reg[3]_0 [1]),
        .I1(\temp_reg[3]_0 [2]),
        .O(rd_gray[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \temp[2]_i_1__0 
       (.I0(\temp_reg[3]_0 [2]),
        .I1(\temp_reg[3]_0 [3]),
        .O(rd_gray[2]));
  FDCE #(
    .INIT(1'b0)) 
    \temp_reg[0] 
       (.C(\temp_reg[3]_1 ),
        .CE(1'b1),
        .CLR(\data_out_reg[0]_0 ),
        .D(D),
        .Q(\temp_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \temp_reg[1] 
       (.C(\temp_reg[3]_1 ),
        .CE(1'b1),
        .CLR(\data_out_reg[0]_0 ),
        .D(rd_gray[1]),
        .Q(\temp_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \temp_reg[2] 
       (.C(\temp_reg[3]_1 ),
        .CE(1'b1),
        .CLR(\data_out_reg[0]_0 ),
        .D(rd_gray[2]),
        .Q(\temp_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \temp_reg[3] 
       (.C(\temp_reg[3]_1 ),
        .CE(1'b1),
        .CLR(\data_out_reg[0]_0 ),
        .D(\temp_reg[3]_0 [3]),
        .Q(\temp_reg_n_0_[3] ));
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
