///////////////////////////////////////////////////////////////////////////
// Company: VB Tech
// Engineer: Nguyen Hoang Nghia
//
// Create Date: Mon, May 9, 2022
// Design Name: 
// Module Name: top_ip.v
// Project Name: 
// Target Device: 
// Tool Versions: 
// Description: 
//
// Dependencies:
//
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
//
/////////////////////////////////////////////////////////////////////////

module top_ip
	(
		clk_sys,
		cpu_clk,
		cpu_cs,
		cpu_we,
		cpu_oe,
		cpu_adrr,
		cpu_din,

		cpu_dout
	);

/////////////////////////////////////////////////////////////////////////
// Parameter Declarations
parameter D_W      = 16;
parameter PKT_CH_W = 16;

/////////////////////////////////////////////////////////////////////////
// Port Declarations
input clk_sys;

input cpu_clk;
input cpu_cs ;
input cpu_we ;
input cpu_oe ;

input [15:0] cpu_adrr;
input [15:0] cpu_din ;
/////////////////////////////////////////////////////////////////////////
// Output Declarations
output [15:0] cpu_dout;
/////////////////////////////////////////////////////////////////////////
// Local Logic and Instantiation
wire run     ;
wire run_sync;

wire [3:0] enable          ;
wire [3:0] enable_gray     ;
wire [3:0] enable_gray_sync;
wire [3:0] enable_bin_sync ;

wire [15:0] length          ;
wire [15:0] length_gray     ;
wire [15:0] length_gray_sync;
wire [15:0] length_bin_sync ;

wire [15:0] tx_num_packet          ;
wire [15:0] tx_num_packet_gray     ;
wire [15:0] tx_num_packet_gray_sync;
wire [15:0] tx_num_packet_bin_sync ;

wire [3:0] error_status          ;
wire [3:0] error_status_gray     ;
wire [3:0] error_status_gray_sync;
wire [3:0] error_status_bin_sync ;

wire [15:0] rx_num_packet          ;
wire [15:0] rx_num_packet_gray     ;
wire [15:0] rx_num_packet_gray_sync;
wire [15:0] rx_num_packet_bin_sync ;

wire                pkt_sof_out  ;
wire                pkt_eof_out  ;
wire                pkt_valid_out;
wire [     D_W-1:0] pkt_data_out ;
wire [PKT_CH_W-1:0] pkt_chid_out ;
wire [         5:0] pkt_cnt_out  ;
wire [         3:0] pkt_alarm_out;


ctrl_stt_reg inst1 (
	.cpu_clk      (cpu_clk               ),
	.cpu_cs       (cpu_cs                ),
	.cpu_we       (cpu_we                ),
	.cpu_oe       (cpu_oe                ),
	.cpu_adrr     (cpu_adrr              ),
	.cpu_din      (cpu_din               ),
	
	
	.error_status (error_status_bin_sync ),
	.rx_num_packet(rx_num_packet_bin_sync),
	
	.cpu_dout     (cpu_dout              ),
	
	.run          (run                   ),
	.enable       (enable                ),
	.length       (length                ),
	.tx_num_packet(tx_num_packet         )
);

// Binary to Gray code
bin_to_gray #(4) inst3 (
	.data_in (enable     ),
	.data_out(enable_gray)
);

bin_to_gray #(16) inst4 (
	.data_in (length     ),
	.data_out(length_gray)
);

bin_to_gray #(16) inst5 (
	.data_in (tx_num_packet     ),
	.data_out(tx_num_packet_gray)
);

// Synchronous block with 2 Dff
sync #(1) inst6 (
	.clk     (clk_sys ),
	.data_in (run     ),
	.data_out(run_sync)
);

sync #(4) inst7 (
	.clk     (clk_sys         ),
	.data_in (enable_gray     ),
	.data_out(enable_gray_sync)
);

sync #(16) inst8 (
	.clk     (clk_sys         ),
	.data_in (length_gray     ),
	.data_out(length_gray_sync)
);

sync #(16) inst9 (
	.clk     (clk_sys                ),
	.data_in (tx_num_packet_gray     ),
	.data_out(tx_num_packet_gray_sync)
);

//Gray code to binary
gray_to_bin #(4) inst11 (
	.data_in (enable_gray_sync),
	.data_out(enable_bin_sync )
);

gray_to_bin #(16) inst12 (
	.data_in (length_gray_sync),
	.data_out(length_bin_sync )
);

gray_to_bin #(16) inst13 (
	.data_in (tx_num_packet_gray_sync),
	.data_out(tx_num_packet_bin_sync)
);

//Ethernet Packet Generator & Transmitter
transmitter inst14 (
	.clk_sys      (clk_sys               ),
	.run          (run_sync              ),
	.enable       (enable_bin_sync       ),
	.length       (length_bin_sync       ),
	.tx_num_packet(tx_num_packet_bin_sync),
	
	.pkt_sof_out  (pkt_sof_out           ),
	.pkt_eof_out  (pkt_eof_out           ),
	.pkt_valid_out(pkt_valid_out         ),
	.pkt_data_out (pkt_data_out          ),
	.pkt_chid_out (pkt_chid_out          ),
	.pkt_cnt_out  (pkt_cnt_out           ),
	.pkt_alarm_out(pkt_alarm_out         )
);

//Ethernet Packet Checker & Receiver
receiver inst15 (
	.clk_sys      (clk_sys      ),
	.pkt_sof_in   (pkt_sof_out  ),
	.pkt_eof_in   (pkt_eof_out  ),
	.pkt_valid_in (pkt_valid_out),
	.pkt_data_in  (pkt_data_out ),
	.pkt_chid_in  (pkt_chid_out ),
	.pkt_cnt_in   (pkt_cnt_out  ),
	.pkt_alarm_in (pkt_alarm_out),
	
	.rx_num_packet(rx_num_packet),
	.error_status (error_status )
);

// Binary to Gray code
bin_to_gray #(16) inst16 (
	.data_in (rx_num_packet     ),
	.data_out(rx_num_packet_gray)
);

bin_to_gray #(4) inst17 (
	.data_in (error_status     ),
	.data_out(error_status_gray)
);

// Synchronous block with 2 Dff
sync #(16) inst18 (
	.clk     (cpu_clk                ),
	.data_in (rx_num_packet_gray     ),
	.data_out(rx_num_packet_gray_sync)
);

sync #(4) inst19 (
	.clk     (cpu_clk               ),
	.data_in (error_status_gray     ),
	.data_out(error_status_gray_sync)
);

//Gray code to binary
gray_to_bin #(16) inst20 (
	.data_in (rx_num_packet_gray_sync),
	.data_out(rx_num_packet_bin_sync )
);

gray_to_bin #(4) inst21 (
	.data_in (error_status_gray_sync),
	.data_out(error_status_bin_sync )
);
endmodule