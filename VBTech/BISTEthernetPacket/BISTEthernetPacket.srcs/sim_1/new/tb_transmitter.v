`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/31/2022 03:55:32 PM
// Design Name: 
// Module Name: tb_transmitter
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module tb_transmitter();

parameter PKT_CH_W = 16;

reg        clk_sys   ;
reg        reset     ;
reg        run       ;
reg [47:0] dest_addr ;
reg [47:0] srcs_addr ;
reg [31:0] vlan_tag  ;
reg [15:0] ether_type;
reg [15:0] data_steam;
reg [31:0] crc       ;

wire                pkt_sof_out  ;
wire                pkt_eof_out  ;
wire                pkt_valid_out;
wire                pkt_data_out ;
wire [PKT_CH_W-1:0] pkt_chid_out ;
wire [         5:0] pkt_cnt_out  ;
wire [         3:0] pkt_alarm_out;

transmitter inst14 (
	.clk_sys      (clk_sys      ),
	.reset        (reset        ),
	.run          (run          ),
	.dest_addr    (dest_addr    ),
	.srcs_addr    (srcs_addr    ),
	.vlan_tag     (vlan_tag     ),
	.ether_type   (ether_type   ),
	.data_steam   (data_steam   ),
	.crc          (crc          ),
	
	.pkt_sof_out  (pkt_sof_out  ),
	.pkt_eof_out  (pkt_eof_out  ),
	.pkt_valid_out(pkt_valid_out),
	.pkt_data_out (pkt_data_out ),
	.pkt_chid_out (pkt_chid_out ),
	.pkt_cnt_out  (pkt_cnt_out  ),
	.pkt_alarm_out(pkt_alarm_out)
);

initial begin
	clk_sys = 0;
	reset = 0;
	run = 0;
	dest_addr = 0;
	srcs_addr = 0;
	vlan_tag = 0;
	ether_type = 0;
	data_steam = 0;
	crc = 0;
	#2
		reset = 1;
	#2
		reset = 0;
	#4
		run = 1;
	dest_addr = $urandom;
	srcs_addr= $urandom;
	vlan_tag = $urandom;
	ether_type = $urandom;
	data_steam = $urandom;
	crc = $urandom;
	#20
		run = 0;
	#1000000
		$finish;
end

 always  #0.4  clk_sys   =   ~clk_sys;
endmodule
