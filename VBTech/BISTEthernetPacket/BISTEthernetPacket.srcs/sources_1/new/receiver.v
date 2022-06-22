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
		rx_num_packet,
		done

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
localparam s0 = 3'd0;
localparam s1 = 3'd1;
localparam s2 = 3'd2;
localparam s3 = 3'd3;
localparam s4 = 3'd4;
localparam s5 = 3'd5;
localparam s6 = 3'd6;
/////////////////////////////////////////////////////////////////////////
// Port Declarations
input                clk_sys     ;
input                pkt_sof_in  ;
input                pkt_eof_in  ;
input                pkt_valid_in;
input [ (D_W*8)-1:0] pkt_data_in ;
input [PKT_CH_W-1:0] pkt_chid_in ;
input [LENGTH_W-1:0] pkt_cnt_in  ;

input                 run          ;
input [ CHID_NUM-1:0] enable       ;
input [ LENGTH_W-1:0] length       ;
input [NUM_PKT_W-1:0] tx_num_packet;
/////////////////////////////////////////////////////////////////////////
// Output Declarations
output [ CHID_NUM-1:0] error_data_status  ;
output [ CHID_NUM-1:0] error_length_status;
output [NUM_PKT_W-1:0] rx_num_packet      ;
output                 done               ;
/////////////////////////////////////////////////////////////////////////
reg done       ;

reg [2:0] state_reg, state_next;

reg [LENGTH_W-1:0] length_reg, length_next;

reg [CHID_NUM-1:0] error_length_status_reg, error_length_status_next;
reg [CHID_NUM-1:0] error_data_status_reg, error_data_status_next;

reg [NUM_PKT_W-1:0] rx_num_packet_reg, rx_num_packet_next;

reg [     (PAYLOAD_W*8)-1:0] payload_reg, payload_next;
reg [((PAYLOAD_W+18)*8)-1:0] data_out_reg, data_out_next;
reg [     (PAYLOAD_W*8)-1:0] data_tmp_reg, data_tmp_next;

reg [LENGTH_W-1:0] counter_reg, counter_next;
reg [LENGTH_W-1:0] cnt_reg, cnt_next;
reg [LENGTH_W-1:0] incre_reg, incre_next;

reg [LENGTH_W-1:0] frame_num;


reg [7:0] data[PAYLOAD_W+17:0];

always@(posedge clk_sys)begin
	if(enable == 'd0)begin
		state_reg <= s0;

		length_reg        <= 'd0;
		rx_num_packet_reg <= 'd0;

		error_length_status_reg <= 'd0;
		error_data_status_reg   <= 'd0;

		payload_reg       <= 'd0;
		data_out_reg      <= 'd0;
		data_tmp_reg      <= 'd0;

		counter_reg  <= 'd0;
		cnt_reg      <= 'd0;
		incre_reg      <= 'd0;
	end

	else begin
		state_reg <= state_next;

		length_reg        <= length_next;
		rx_num_packet_reg <= rx_num_packet_next;

		error_length_status_reg <= error_length_status_next;
		error_data_status_reg   <= error_data_status_next;

		payload_reg       <= payload_next;
		data_out_reg      <= data_out_next;
		data_tmp_reg      <= data_tmp_next;

		counter_reg  <= counter_next;
		cnt_reg      <= cnt_next;
		incre_reg      <= incre_next;
	end
end 

always@* begin
	state_next         = state_reg;
	length_next        = length_reg;
	rx_num_packet_next = rx_num_packet_reg;

	error_length_status_next = error_length_status_reg;
	error_data_status_next   = error_data_status_reg;

	payload_next  = payload_reg;
	data_out_next = data_out_reg;
	data_tmp_next = data_tmp_reg;

	counter_next = counter_reg;
	cnt_next     = cnt_reg;
	incre_next   = incre_reg;

	case(state_reg)
		s0 : begin: RUN
			if(run) begin
					state_next = s1;
					done       = 'b0;
					frame_num  = (length % D_W == 0) ? length / D_W - 1: length / D_W;
				end

		end

		s1 : begin: GENERATE_PAYLOAD_1
			if(counter_reg <= (length-19))begin
				payload_next[counter_reg*8+:8] = counter_reg + 'b1;
				counter_next                   = counter_reg + 'b1;
			end
			else begin
				state_next   = s2;
				counter_next = 'd0;
			end
		end

		s2 : begin: GENERATE_PAYLOAD_2
			if(counter_reg <= length - 19)begin
				data[counter_reg] = payload_reg[counter_reg*8 +: 8] + incre_reg;
				counter_next      = counter_reg + 'b1;
			end
			else begin
				state_next   = s3;
				counter_next = length - 19;
			end
		end

		s3 : begin: SORT_DATA_PACKET
			if(cnt_reg <= length - 19)begin
				data_tmp_next[(cnt_reg*8)+:8] = data [counter_reg];
				counter_next                  = counter_reg - 'b1;
				cnt_next                      = cnt_reg + 1'b1;
			end
			else begin
				data_out_next = {DA[47:0],SA[47:0],VLAN[31:0],TYPE[15:0],data_tmp_reg << ((PAYLOAD_W - length + 18) * 8)};
				state_next    = s4;
				counter_next = 'd0;
				cnt_next     = 'd0;
			end
		end

		s4 : begin: COMPARE_DATA_PACKET_AND_CALCULATE_RX_NUM
			if (pkt_sof_in || pkt_valid_in && !pkt_eof_in) begin
				length_next   = length_reg +  pkt_cnt_in;
				data_out_next = data_out_reg << D_W*8;

				if ( pkt_data_in == data_out_reg[ ( (PAYLOAD_W+18)*8)-1 : ((PAYLOAD_W+18-D_W)*8) ] ) begin
					error_data_status_next[pkt_chid_in] = 'b0;
					$display( "\nDATA_FROM_TX=%h == DATA_SAMPLE=%h",pkt_data_in, data_out_reg[ ( (PAYLOAD_W+18)*8)-1 : ((PAYLOAD_W+18-D_W)*8) ]);
					$display( "Pass");
				end
				else begin
					error_data_status_next[pkt_chid_in] = 'b1;
					$display( "\nDATA_FROM_TX=%h != DATA_SAMPLE=%h",pkt_data_in, data_out_reg[ ( (PAYLOAD_W+18)*8)-1 : ((PAYLOAD_W+18-D_W)*8) ]);
					$display( "Error");
				end
			end

			else if (!pkt_sof_in && pkt_eof_in && pkt_valid_in) begin
				length_next        = length_reg +  pkt_cnt_in;
				state_next         = s5;
				rx_num_packet_next = rx_num_packet_reg + 'b1;
				data_out_next      = data_out_reg << D_W*8;

				if ( pkt_data_in == data_out_reg[ ( (PAYLOAD_W+18)*8)-1 : ((PAYLOAD_W+18-D_W)*8) ]) begin
					error_data_status_next[pkt_chid_in] = 'b0;
					$display( "\nDATA_FROM_TX=%h == DATA_SAMPLE=%h",pkt_data_in, data_out_reg[ ( (PAYLOAD_W+18)*8)-1 : ((PAYLOAD_W+18-D_W)*8) ] );
					$display( "Pass");
				end
				else begin
					error_data_status_next[pkt_chid_in] = 'b1;
					$display( "\nDATA_FROM_TX=%h != DATA_SAMPLE=%h",pkt_data_in, data_out_reg[ ( (PAYLOAD_W+18)*8)-1 : ((PAYLOAD_W+18-D_W)*8) ] );
					$display( "Error");
				end
			end
		end

		s5 : begin: COMPARE_PACKET_LENGTH
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

			if(rx_num_packet_reg >= tx_num_packet)begin
				state_next = s0;
				done       = 'b1;
			end
			else begin
				state_next   = s2;
				length_next  = 'd0;
				incre_next   = incre_reg + length - 18;
				counter_next = 'd0;
				cnt_next     = 'd0;
			end
		end
	endcase
end

//  Output logic
	assign error_length_status = error_length_status_reg;
	assign error_data_status   = error_data_status_reg;
	assign rx_num_packet       = rx_num_packet_reg;

// Debug
// always @(data_out_reg) begin
// 	$display( "\ndata_out_reg=%h",data_out_reg ); 
// end
endmodule