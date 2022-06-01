///////////////////////////////////////////////////////////////////////////
// Company: VB Tech
// Engineer: Nguyen Hoang Nghia
//
// Create Date: Wed, May 25, 2022	
// Design Name: 
// Module Name: receiver.v
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

module receiver
	(
		clk_sys,
		pkt_sof_in,
		pkt_eof_in,
		pkt_valid_in,
		pkt_data_in,
		pkt_chid_in,
		pkt_cnt_in,
		pkt_alarm_in,

		rx_num_packet,
		error_status
	);

/////////////////////////////////////////////////////////////////////////
// Parameter Declarations
parameter D_W = 16;
parameter PKT_CH_W = 16;

/////////////////////////////////////////////////////////////////////////
// Port Declarations
input                clk_sys     ;
input                pkt_sof_in  ;
input                pkt_eof_in  ;
input                pkt_valid_in;
input [     D_W-1:0] pkt_data_in ;
input [PKT_CH_W-1:0] pkt_chid_in ;
input [         5:0] pkt_cnt_in  ;
input [         3:0] pkt_alarm_in;
/////////////////////////////////////////////////////////////////////////
// Output Declarations
output [ 3:0] error_status ;
output [15:0] rx_num_packet;
/////////////////////////////////////////////////////////////////////////
// Local Logic and Instantiation

endmodule