///////////////////////////////////////////////////////////////////////////
// Company: VB Tech
// Engineer: Nguyen Hoang Nghia
//
// Create Date: Wed, May 25, 2022	
// Design Name: Ethernet Packet Checker and Receiver
// Module Name: receiver.v
// Project Name: BIST Ethernet Packet
// Target Device: KU5P
// Tool Versions: 2019.2
// Description: Ethernet Packet Checker and Receiver
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
		run,   
		enable,  
		length,     
		tx_num_packet,

		pkt_sof_in,
		pkt_eof_in,
		pkt_valid_in,
		pkt_data_in,
		pkt_chid_in,
		pkt_cnt_in,

		error_data_status,
		error_length_status,
		rx_num_packet

	);

/////////////////////////////////////////////////////////////////////////
// Parameter Declarations
parameter CHID_NUM     = 4 ;
parameter LENGTH_W     = 16;
parameter NUM_PKT_W = 16;

parameter D_W      = 32;
parameter PKT_CH_W = 2 ;

parameter PAYLOAD_W = 1500;

parameter DA   = 'hAA_AA_AA_AA_AA_AA;
parameter SA   = 'h55_55_55_55_55_55;
parameter VLAN = 'h11_11_11_11   ;
parameter TYPE = 'h22_22         ;

//  FSM state encoding
localparam s0  = 3'd0 ;
localparam s1  = 3'd1 ;
localparam s2  = 3'd2 ;
localparam s3  = 3'd3 ;
localparam s4  = 3'd4 ;
/////////////////////////////////////////////////////////////////////////
// Port Declarations
input                clk_sys     ;
input                pkt_sof_in  ;
input                pkt_eof_in  ;
input                pkt_valid_in;
input [ (D_W*8)-1:0] pkt_data_in ;
input [PKT_CH_W-1:0] pkt_chid_in ;
input [LENGTH_W-1:0] pkt_cnt_in  ;

input                    run          ;
input [    CHID_NUM-1:0] enable       ;
input [    LENGTH_W-1:0] length       ;
input [NUM_PKT_W-1:0] tx_num_packet;
/////////////////////////////////////////////////////////////////////////
// Output Declarations
output [ CHID_NUM-1:0] error_data_status      ;
output [ CHID_NUM-1:0] error_length_status    ;
output [NUM_PKT_W-1:0] rx_num_packet          ;
/////////////////////////////////////////////////////////////////////////
reg [2:0] state_reg, state_next;

reg [LENGTH_W-1:0] length_reg, length_next;

reg [ (D_W*8)-1:0] pkt_data_in_reg, pkt_data_in_next;
reg [LENGTH_W-1:0] pkt_cnt_in_reg, pkt_cnt_in_next;

reg [CHID_NUM-1:0] error_length_status_reg, error_length_status_next;
reg [CHID_NUM-1:0] error_data_status_reg, error_data_status_next;

reg [NUM_PKT_W-1:0] rx_num_packet_reg, rx_num_packet_next;
reg [NUM_PKT_W-1:0] tx_num_packet_reg, tx_num_packet_next;

reg [(D_W*8)-1:0] data[47:0];

reg [15:0] counter_reg, counter_next;

always@(posedge clk_sys)begin
	if(enable == 'd0)begin
		state_reg <= s0;

		length_reg <= 'd0;
		tx_num_packet_reg <= 'd0;
		rx_num_packet_reg <= 'd1;

		pkt_data_in_reg <= 'd0;
		pkt_cnt_in_reg  <= 'd0;

		error_length_status_reg <= 'd0;
		error_data_status_reg   <= 'd0;

		counter_reg <= 'd0;
	end

	else begin
		state_reg <= state_next;

		length_reg <= length_next;
		tx_num_packet_reg <= tx_num_packet_next;
		rx_num_packet_reg <= rx_num_packet_next;

		pkt_data_in_reg <= pkt_data_in_next;
		pkt_cnt_in_reg  <= pkt_cnt_in_next;

		error_length_status_reg <= error_length_status_next;
		error_data_status_reg   <= error_data_status_next;

		counter_reg <= counter_next;
	end
end 

always@* begin
	state_next   = state_reg;
	counter_next = counter_reg;
	length_next  = length_reg;
	tx_num_packet_next = tx_num_packet_reg;
	rx_num_packet_next = rx_num_packet_reg;

	pkt_data_in_next = pkt_data_in_reg;
	pkt_cnt_in_next  = pkt_cnt_in_reg;

	error_length_status_next = error_length_status_reg;
	error_data_status_next   = error_data_status_reg;

	case(state_reg)
		s0 : begin: IDLE
			if(run)
				begin
					state_next   = s1;
					tx_num_packet_next = tx_num_packet;
				end
		end

		s1 : begin: RUN
			if (pkt_sof_in && pkt_valid_in) begin
				pkt_data_in_next <= pkt_data_in;
				pkt_cnt_in_next  <= pkt_cnt_in;
				state_next       <= s2;
				counter_next <= 'd0;
				length_next = length_reg +  D_W;
			end
		end

		s2 : begin: STORE_DATA_PACKET_TO_COMPARE
			if(counter_reg <= (length/32) - 1)begin
				data[counter_reg] = pkt_data_in_reg[counter_reg*D_W*8 +: D_W*8];
				counter_next = counter_reg + 'b1;
			end

			if(pkt_eof_in)begin
				counter_next = 'd0;
				state_next   = s3;
				length_next = length_reg;
			end
			else begin
				length_next = length_reg +  D_W;
			end
		end

		s3 : begin: COMPARE_DATA_PACKET
			if ( (data[0][(D_W*8)-1:(D_W-18)*8]) == {DA[47:0],SA[47:0],VLAN[31:0],TYPE[15:0]}) begin
				error_data_status_next[pkt_chid_in] = 'b0;
				$display( "\nDATA_FROM_TX=%h == DATA_SAMPLE=%h",(data[0][(D_W*8)-1:(D_W-18)*8]), {DA[47:0],SA[47:0],VLAN[31:0],TYPE[15:0]}); 
				$display( "Pass"); 
			end
			else begin
				error_data_status_next[pkt_chid_in] = 'b1;
				$display( "\nDATA_FROM_TX=%h != DATA_SAMPLE=%h",(data[0][(D_W*8)-1:(D_W-18)*8]), {DA[47:0],SA[47:0],VLAN[31:0],TYPE[15:0]}); 				
				$display( "Error"); 
			end

				counter_next = 'd0;
				state_next   = s4;
				length_next = length_reg +  D_W;
		end

		s4 : begin: COMPARE_PACKET_LENGTH_AND_CALCULATE_RX_NUM
			if(tx_num_packet_reg == 'd0)begin
					counter_next = 'd0;
					state_next   = s0;
				end
				else if(tx_num_packet_reg > 1)begin
					tx_num_packet_next = tx_num_packet_reg - 'b1;
					rx_num_packet_next = rx_num_packet_reg + 'b1;
					counter_next       = 'd0;
					state_next         = s1;
					length_next = 'd0;
				end
			if (length_reg == length) begin
				error_length_status_next[pkt_chid_in] = 'b0;
				$display( "\nLENGTH_FROM_TX=%d == LENGTH_USER=%d",length_reg, length); 
				$display( "Pass");
			end
			else begin
				error_length_status_next[pkt_chid_in] = 'b1;
				$display( "\nLENGTH FROM_TX=%d != LENGTH_USER=%d",length_reg, length); 
				$display( "Error");
			end
		end
	endcase
end

//  Output logic
	assign error_length_status = error_length_status_reg;
	assign error_data_status   = error_data_status_reg;
	assign rx_num_packet       = rx_num_packet_reg;

// Debug
always @(rx_num_packet) begin
	$display( "\nrx_num_packet=%d",rx_num_packet ); 
end
endmodule