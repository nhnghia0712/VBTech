///////////////////////////////////////////////////////////////////////////
// Company: VB Tech
// Engineer: Nguyen Hoang Nghia
//
// Create Date: Wed, May 25, 2022	
// Design Name: Ethernet Packet Generator and Transmitter
// Module Name: transmitter.v
// Project Name: BIST Ethernet Packet
// Target Device: KU5P
// Tool Versions: 2019.2
// Description: Ethernet Packet Generator and Transmitter
//
// Dependencies:
//
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
//
/////////////////////////////////////////////////////////////////////////

module transmitter
	(
		clk_sys,
		run,
		enable,
		length,
		tx_num_packet,

		pkt_sof_out,
		pkt_eof_out,
		pkt_valid_out,
		pkt_data_out,
		pkt_chid_out,
		pkt_cnt_out
	);

/////////////////////////////////////////////////////////////////////////
// Parameter Declarations
parameter CHID_NUM  = 4 ;
parameter LENGTH_W  = 16;
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
localparam s5  = 3'd5 ;
localparam s6  = 3'd6 ;
localparam s7  = 3'd7 ;
/////////////////////////////////////////////////////////////////////////
// Port Declarations
input                 clk_sys      ;
input                 run          ;
input [ CHID_NUM-1:0] enable       ;
input [ LENGTH_W-1:0] length       ;
input [NUM_PKT_W-1:0] tx_num_packet;

/////////////////////////////////////////////////////////////////////////
// Output Declarations
output               pkt_sof_out  ;
output               pkt_eof_out  ;
output               pkt_valid_out;
output [(D_W*8)-1:0] pkt_data_out ;
output [PKT_CH_W-1:0] pkt_chid_out ;
output [LENGTH_W-1:0] pkt_cnt_out;
/////////////////////////////////////////////////////////////////////////
// Local Logic and Instantiation
reg [PKT_CH_W-1:0] pkt_chid_out ;

reg                pkt_sof_out_reg, pkt_sof_out_next;
reg                pkt_eof_out_reg, pkt_eof_out_next;
reg                pkt_valid_out_reg, pkt_valid_out_next;
reg [ (D_W*8)-1:0] pkt_data_out_reg, pkt_data_out_next;
reg [LENGTH_W-1:0] pkt_cnt_out_reg, pkt_cnt_out_next;

reg [         NUM_PKT_W-1:0] tx_num_packet_reg, tx_num_packet_next;
reg [((PAYLOAD_W+18)*8)-1:0] data_out_reg, data_out_next;
reg [((PAYLOAD_W+18)*8)-1:0] data_tmp_reg, data_tmp_next;
reg [          LENGTH_W-1:0] counter_reg, counter_next;
reg [          LENGTH_W-1:0] data_cnt_reg, data_cnt_next;
reg [          LENGTH_W-1:0] cnt_reg, cnt_next;

reg [              2:0] state_reg, state_next;
reg [(PAYLOAD_W*8)-1:0] payload_reg, payload_next;

reg [        7:0] data        [PAYLOAD_W+17:0];
reg [(D_W*8)-1:0] data_regfile[          47:0];

//  Present state logic
always@(posedge clk_sys)begin
	if(enable == 'd0)begin
		state_reg    <= s0;
		pkt_chid_out <= 'd0;

		pkt_sof_out_reg   <= 'b0;
		pkt_eof_out_reg   <= 'b0;
		pkt_valid_out_reg <= 'b0;
		pkt_data_out_reg  <= 'd0;
		pkt_cnt_out_reg   <= 'd0;

		payload_reg       <= 'd0;
		tx_num_packet_reg <= 'd0;
		data_out_reg      <= 'd0;
		data_tmp_reg      <= 'd0;

		counter_reg  <= 'd0;
		data_cnt_reg <= 'd1;
		cnt_reg      <= 'd0;
	end

	else if (enable[0])begin
		state_reg    <= state_next;
		pkt_chid_out <= 'd0;

		pkt_sof_out_reg   <= pkt_sof_out_next;
		pkt_eof_out_reg   <= pkt_eof_out_next;
		pkt_valid_out_reg <= pkt_valid_out_next;
		pkt_data_out_reg  <= pkt_data_out_next;
		pkt_cnt_out_reg   <= pkt_cnt_out_next;

		payload_reg       <= payload_next;
		tx_num_packet_reg <= tx_num_packet_next;
		data_out_reg      <= data_out_next;
		data_tmp_reg      <= data_tmp_next;

		counter_reg  <= counter_next;
		data_cnt_reg <= data_cnt_next;
		cnt_reg      <= cnt_next;
	end

	else if (enable[1])begin
		state_reg    <= state_next;
		pkt_chid_out <= 'd1;

		pkt_sof_out_reg   <= pkt_sof_out_next;
		pkt_eof_out_reg   <= pkt_eof_out_next;
		pkt_valid_out_reg <= pkt_valid_out_next;
		pkt_data_out_reg  <= pkt_data_out_next;
		pkt_cnt_out_reg   <= pkt_cnt_out_next;

		payload_reg       <= payload_next;
		tx_num_packet_reg <= tx_num_packet_next;
		data_out_reg      <= data_out_next;
		data_tmp_reg      <= data_tmp_next;

		counter_reg  <= counter_next;
		data_cnt_reg <= data_cnt_next;
		cnt_reg      <= cnt_next;
	end

	else if (enable[2])begin
		state_reg    <= state_next;
		pkt_chid_out <= 'd2;

		pkt_sof_out_reg   <= pkt_sof_out_next;
		pkt_eof_out_reg   <= pkt_eof_out_next;
		pkt_valid_out_reg <= pkt_valid_out_next;
		pkt_data_out_reg  <= pkt_data_out_next;
		pkt_cnt_out_reg   <= pkt_cnt_out_next;

		payload_reg       <= payload_next;
		tx_num_packet_reg <= tx_num_packet_next;
		data_out_reg      <= data_out_next;
		data_tmp_reg      <= data_tmp_next;

		counter_reg  <= counter_next;
		data_cnt_reg <= data_cnt_next;
		cnt_reg      <= cnt_next;
	end

	else if (enable[3])begin
		state_reg    <= state_next;
		pkt_chid_out <= 'd3;

		pkt_sof_out_reg   <= pkt_sof_out_next;
		pkt_eof_out_reg   <= pkt_eof_out_next;
		pkt_valid_out_reg <= pkt_valid_out_next;
		pkt_data_out_reg  <= pkt_data_out_next;
		pkt_cnt_out_reg   <= pkt_cnt_out_next;

		payload_reg       <= payload_next;
		tx_num_packet_reg <= tx_num_packet_next;
		data_out_reg      <= data_out_next;
		data_tmp_reg      <= data_tmp_next;

		counter_reg  <= counter_next;
		data_cnt_reg <= data_cnt_next;
		cnt_reg      <= cnt_next;
	end
end 

always@* begin
	state_next         = state_reg;
	pkt_sof_out_next   = pkt_sof_out_reg;
	pkt_eof_out_next   = pkt_eof_out_reg;
	pkt_valid_out_next = pkt_valid_out_reg;
	pkt_data_out_next  = pkt_data_out_reg;
	pkt_cnt_out_next   = pkt_cnt_out_reg;

	tx_num_packet_next = tx_num_packet_reg;

	payload_next  = payload_reg;
	data_out_next = data_out_reg;
	data_tmp_next = data_tmp_reg;

	counter_next = counter_reg;
	data_cnt_next = data_cnt_reg;
	cnt_next = cnt_reg;

	case(state_reg)
		s0 : begin: IDLE
			pkt_eof_out_next = 'b0;
			pkt_valid_out_next = 'b0;

			if(run)
				begin
					state_next = s1;
					tx_num_packet_next = tx_num_packet;
					data_cnt_next = 'd1;
				end
		end

		s1 : begin: RUN
			pkt_valid_out_next = 'b0;
			pkt_eof_out_next   = 'b0;
			state_next         = s2;
			pkt_cnt_out_next   = length;
			counter_next       = 'd1;
		end

		s2 : begin: GENERATE_PAYLOAD
			if(counter_reg <= (length-18))begin
				payload_next[8*(counter_reg-1)+:8] = data_cnt_reg;
				counter_next                       = counter_reg + 'b1;
				data_cnt_next = data_cnt_reg + 'b1;
			end
			else begin
				state_next   = s3;
				counter_next = 'd0;
			end
		end

		s3 : begin: MERGE_DATA_INTO_PACKET
			data_out_next = {payload_reg[(PAYLOAD_W*8)-1:0],TYPE[15:0],VLAN[31:0],SA[47:0],DA[47:0]};
			state_next    = s4;
		end

		s4 : begin: SORT_DATA_PACKET_1
			if(counter_reg <= length - 1)begin
				data[counter_reg] = data_out_reg[counter_reg*8 +: 8];
				counter_next      = counter_reg + 'b1;
			end
			else begin
				state_next   = s5;
				counter_next = length - 1;
			end
		end

		s5 : begin: SORT_DATA_PACKET_2
			if(cnt_reg <= length)begin
				data_tmp_next[(cnt_reg*8) +: 8] = data [counter_reg];
				counter_next      = counter_reg - 'b1;
				cnt_next     = cnt_reg + 1'b1;
			end
			else begin
				state_next   = s6;
				counter_next = 0;
			end
		end

		s6 :  begin: SORT_DATA_PACKET_3
			if(counter_reg <= (length/32) - 1)begin
				data_regfile [counter_reg] = data_tmp_reg[counter_reg*D_W*8 +: D_W*8];
				counter_next      = counter_reg + 'b1;
			end
			else begin
				state_next   = s7;
				counter_next = (length/32) - 1;
			end
		end
		s7 : begin: EXPORT_PACKET
			pkt_data_out_next  = data_regfile[counter_reg];

			pkt_valid_out_next = 'b1;

			if (counter_reg == (length/32)-1) begin
				pkt_sof_out_next = 'b1;
			end
			else begin
				pkt_sof_out_next = 'b0;
			end

			if (pkt_cnt_out_reg >= D_W) begin
				pkt_cnt_out_next      = pkt_cnt_out_reg - D_W;
			end
			else begin
				pkt_cnt_out_next      = 'd0;
			end

			if (counter_reg == 0) begin
				if(tx_num_packet_reg == 1)begin
					counter_next = 'd0;
					state_next   = s0;
				end
				else if(tx_num_packet_reg > 0)begin
					tx_num_packet_next = tx_num_packet_reg - 'b1;
					counter_next       = 'd0;
					cnt_next       = 'd0;
					state_next         = s1;
				end
				pkt_eof_out_next = 'b1;
			end else begin
				counter_next     = counter_reg - 1'b1;
				pkt_eof_out_next = 'b0;
			end

		end

	endcase
end
    
//  Output logic
	assign pkt_valid_out = pkt_valid_out_reg;
	assign pkt_sof_out   = pkt_sof_out_reg;
	assign pkt_data_out  = pkt_data_out_reg;
	assign pkt_eof_out   = pkt_eof_out_reg;
	assign pkt_cnt_out   = pkt_cnt_out_reg;

// Debug
// always @(pkt_data_out) begin
// 	$display("\npkt_data_out=%h",pkt_data_out);
// end

// always @(payload_reg) begin
// 	$display("\npayload_reg=%h",payload_reg);
// end
endmodule