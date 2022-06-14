`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 05/31/2022 03:55:32 PM
// Design Name: Test Bench For Ethernet Packet Generator and Transmitter
// Module Name: tb_transmitter
// Project Name: BIST Ethernet Packet
// Target Devices: KU5P
// Tool Versions: 2019.2
// Description: Test Bench
//
// Dependencies:
//
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
//
//////////////////////////////////////////////////////////////////////////////////


module tb_transmitter ();

	parameter N = 0.1;

	parameter CHID_NUM  = 4 ;
	parameter LENGTH_W  = 16;
	parameter NUM_PKT_W = 16;

	parameter D_W      = 32;
	parameter PKT_CH_W = 2 ;

	reg                 clk_sys      ;
	reg                 run          ;
	reg [ CHID_NUM-1:0] enable       ;
	reg [ LENGTH_W-1:0] length       ;
	reg [NUM_PKT_W-1:0] tx_num_packet;

	wire                pkt_sof_out  ;
	wire                pkt_eof_out  ;
	wire                pkt_valid_out;
	wire [ (D_W*8)-1:0] pkt_data_out ;
	wire [PKT_CH_W-1:0] pkt_chid_out ;
	wire [LENGTH_W-1:0] pkt_cnt_out  ;

	reg [(D_W*8)-1:0] data_out;

	transmitter inst14 (
		.clk_sys      (clk_sys      ),
		.run          (run          ),
		.enable       (enable       ),
		.length       (length       ),
		.tx_num_packet(tx_num_packet),
		
		.pkt_sof_out  (pkt_sof_out  ),
		.pkt_eof_out  (pkt_eof_out  ),
		.pkt_valid_out(pkt_valid_out),
		.pkt_data_out (pkt_data_out ),
		.pkt_chid_out (pkt_chid_out ),
		.pkt_cnt_out  (pkt_cnt_out  )
	);

	initial begin
		//test case 1
		clk_sys = 0;
		run = 0;
		enable = 0;
		length = 0;
		tx_num_packet = 0;
		data_out = $fopen("D:/GitHub/VBTech/VBTech/BISTEthernetPacket/txt_file/transmitter_out.txt", "wire");
		#(N*5)
			enable = 'd1;
		run = 'b1;
		length = 'd128;
		tx_num_packet= 'd5;
		#(N*4)
			run=0;
		#(N*3816)
			enable = 0;
		#(N*4)

		// test case 2
		enable = 'd1;
		run = 'b1;
		length = 'd64;
		tx_num_packet= 'd4;
		#(N*4)
		run=0;
		#(N*1498)
		// enable = 0;
		// #(N*4)
		// // test case 3
		// run = 'b1;
		// enable = 'd1;
		// length = 'd1518;
		// tx_num_packet= 'd2;
		// #(N*4)
		// run=0;
		// #(N*6402)
			$finish;
	end

	always  #N  clk_sys   =   ~clk_sys;

	always @(posedge clk_sys) begin
		if(pkt_valid_out)begin
			$fdisplay(data_out,"%b",pkt_data_out);
		end
	end

	always @(pkt_sof_out, pkt_eof_out, pkt_valid_out, pkt_data_out, pkt_chid_out,pkt_cnt_out) begin
		$display("\npkt_sof_out=%h",pkt_sof_out);
		$display("pkt_eof_out=%h",pkt_eof_out);
		$display("pkt_valid_out=%h",pkt_valid_out);
		$display("pkt_data_out=%h",pkt_data_out);
		$display("pkt_chid_out=%d",pkt_chid_out);
		$display("pkt_cnt_out=%d",pkt_cnt_out);
	end

endmodule
