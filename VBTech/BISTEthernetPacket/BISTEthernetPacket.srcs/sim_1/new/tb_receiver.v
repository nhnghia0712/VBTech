`timescale 1ns / 1ps
///////////////////////////////////////////////////////////////////////////
// Company: VB Tech
// Engineer: Nguyen Hoang Nghia
//
// Create Date: Thu, May 26, 2022
// Design Name: Test Bench For Ethernet Packet Checker and Receiver
// Module Name: tb_receiver.v
// Project Name: BIST Ethernet Packet
// Target Device: KU5P
// Tool Versions: 2019.2
// Description: Test Bench
//
// Dependencies:
//
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
//
/////////////////////////////////////////////////////////////////////////
module tb_receiver();

parameter N            = 0.1;

parameter CHID_NUM     = 4  ;
parameter LENGTH_W     = 16 ;
parameter NUM_PKT_W = 16 ;

parameter D_W          = 32 ;
parameter PKT_CH_W     = 2  ;

reg                 clk_sys      ;
reg                 run          ;
reg [ CHID_NUM-1:0] enable       ;
reg [ LENGTH_W-1:0] length       ;
reg [NUM_PKT_W-1:0] tx_num_packet;

wire                pkt_sof_in  ;
wire                pkt_eof_in  ;
wire                pkt_valid_in;
wire [ (D_W*8)-1:0] pkt_data_in ;
wire [PKT_CH_W-1:0] pkt_chid_in ;
wire [LENGTH_W-1:0] pkt_cnt_in  ;

//reg [ (D_W*8)-1:0] data_out;

wire [NUM_PKT_W-1:0] rx_num_packet      ;
wire [ CHID_NUM-1:0] error_data_status  ;
wire [ CHID_NUM-1:0] error_length_status;
wire                 done               ;

receiver DUT (
	.clk_sys            (clk_sys            ),
	.run                (run                ),
	.enable             (enable             ),
	.length             (length             ),
	.tx_num_packet      (tx_num_packet      ),
	
	.pkt_sof_in         (pkt_sof_in         ),
	.pkt_eof_in         (pkt_eof_in         ),
	.pkt_valid_in       (pkt_valid_in       ),
	.pkt_data_in        (pkt_data_in        ),
	.pkt_chid_in        (pkt_chid_in        ),
	.pkt_cnt_in         (pkt_cnt_in         ),
	
	.rx_num_packet      (rx_num_packet      ),
	.error_data_status  (error_data_status  ),
	.error_length_status(error_length_status),
	.done               (done               )
);

transmitter inst (
	.clk_sys      (clk_sys     ),
	.run          (run         ),
	.enable       (enable      ),
	.length       ('d128      ),
	.tx_num_packet('d5         ),
	
	.pkt_sof_out  (pkt_sof_in  ),
	.pkt_eof_out  (pkt_eof_in  ),
	.pkt_valid_out(pkt_valid_in),
	.pkt_data_out (pkt_data_in ),
	.pkt_chid_out (pkt_chid_in ),
	.pkt_cnt_out  (pkt_cnt_in  )
);
initial begin
	//test case 1
	clk_sys = 0;
	run = 0;
	enable = 0;
	length = 0;
	tx_num_packet = 0;

	//data_out = $fopen("D:/GitHub/VBTech/VBTech/BISTEthernetPacket/txt_file/transmitter_out.txt", "wire");
	#(N*5)
	enable = 'd1;
	run = 'b1;
	length = 'd128;
	tx_num_packet= 'd5;
	#(N*4)
	run=0;
	#(N*4000)

	enable = 0;
	#(N*4)
	// test case 2
	enable = 'd1;
	run = 'b1;
	length = 'd160;
	tx_num_packet= 'd5;
	#(N*4)
	run=0;
	#(N*4000)

	// // test case 3
	// run = 'b1;
	// length = $urandom_range(64,1518);
	// tx_num_packet= length/32;
	// #(N*4)
	// run=0;
	// #(N*4000)
		$finish;
end

always  #N  clk_sys   =   ~clk_sys;

// always @(posedge clk_sys) begin
//   if(pkt_valid_out)begin
//     $fdisplay(data_out,"%b",pkt_data_out);
//   end
// end

// always @(pkt_sof_out, pkt_eof_out, pkt_valid_out, pkt_data_out, pkt_chid_out,pkt_cnt_out) begin
// 	$display("\npkt_sof_out=%h",pkt_sof_out);
// 	$display("pkt_eof_out=%h",pkt_eof_out);
// 	$display("pkt_valid_out=%h",pkt_valid_out);
// 	$display("pkt_data_out=%h",pkt_data_out);
// 	$display("pkt_chid_out=%h",pkt_chid_out);
// 	$display("pkt_cnt_out=%h",pkt_cnt_out);
// end

endmodule
