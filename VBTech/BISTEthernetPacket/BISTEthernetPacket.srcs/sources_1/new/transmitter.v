///////////////////////////////////////////////////////////////////////////
// Company: VB Tech
// Engineer: Nguyen Hoang Nghia
//
// Create Date: Wed, May 25, 2022	
// Design Name: 
// Module Name: transmitter.v
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

module transmitter
	(
		clk_sys,
		reset,
		run,
		dest_addr,
		srcs_addr,
		vlan_tag,
		ether_type,
		data_steam,
		crc,

		pkt_sof_out,
		pkt_eof_out,
		pkt_valid_out,
		pkt_data_out,
		pkt_chid_out,
		pkt_cnt_out,
		pkt_alarm_out
	);

/////////////////////////////////////////////////////////////////////////
// Parameter Declarations
parameter D_W = 16;
parameter PKT_CH_W = 16;

//  FSM state encoding
localparam s0 = 3'd0;
localparam s1 = 3'd1;
localparam s2 = 3'd2;
localparam s3 = 3'd3;
localparam s4 = 3'd4;
localparam s5 = 3'd5;
localparam s6 = 3'd6;
localparam s7 = 3'd7;
/////////////////////////////////////////////////////////////////////////
// Port Declarations
input        clk_sys   ;
input        reset     ;
input        run       ;
input [47:0] dest_addr ;
input [47:0] srcs_addr ;
input [31:0] vlan_tag  ;
input [15:0] ether_type;
input [15:0] data_steam;
input [31:0] crc       ;
/////////////////////////////////////////////////////////////////////////
// Output Declarations
output                pkt_sof_out  ;
output                pkt_eof_out  ;
output                pkt_valid_out;
output                pkt_data_out ;
output [PKT_CH_W-1:0] pkt_chid_out ;
output [         5:0] pkt_cnt_out  ;
output [         3:0] pkt_alarm_out;
/////////////////////////////////////////////////////////////////////////
// Local Logic and Instantiation
reg [ 2:0] state_reg               ;
reg [ 9:0] data_cnt_out_reg = 10'd0;
reg [15:0] data_steam_reg          ;
reg        preambleBit_reg         ;

reg                pkt_sof_out_reg  ;
reg                pkt_eof_out_reg  ;
reg                pkt_valid_out_reg;
reg                pkt_data_out_reg ;
reg [PKT_CH_W-1:0] pkt_chid_out_reg ;
reg [         5:0] pkt_cnt_out_reg  ;
reg [         3:0] pkt_alarm_out_reg;
///////////////////////////////////////////////////////////////////////
reg [ 2:0] state_next       ;
reg [ 9:0] data_cnt_out_next;
reg [15:0] data_steam_next  ;
reg        preambleBit_next ;

reg                pkt_sof_out_next  ;
reg                pkt_eof_out_next  ;
reg                pkt_valid_out_next;
reg                pkt_data_out_next ;
reg [PKT_CH_W-1:0] pkt_chid_out_next ;
reg [         5:0] pkt_cnt_out_next  ;
reg [         3:0] pkt_alarm_out_next;
//  Present state logic
always@(posedge clk_sys) begin
	if(reset) begin
		state_reg         <= s0;
		pkt_sof_out_reg   <= 0;
		pkt_eof_out_reg   <= 0;
		pkt_valid_out_reg <= 0;
		pkt_data_out_reg  <= 0;
		pkt_chid_out_reg  <= 0;
		pkt_cnt_out_reg   <= 0;
		pkt_alarm_out_reg <= 0;

		data_cnt_out_reg <= 0;
		data_steam_reg   <= 0;
		preambleBit_reg  <= 1'b1;
	end
	else begin
		state_reg         <= state_next;
		pkt_sof_out_reg   <= pkt_sof_out_next;
		pkt_eof_out_reg   <= pkt_eof_out_next;
		pkt_valid_out_reg <= pkt_valid_out_next;
		pkt_data_out_reg  <= pkt_data_out_next;
		pkt_chid_out_reg  <= pkt_chid_out_next;
		pkt_cnt_out_reg   <= pkt_cnt_out_next;
		pkt_alarm_out_reg <= pkt_alarm_out_next;

		data_cnt_out_reg <= data_cnt_out_next;
		data_steam_reg   <= data_steam_next;
		preambleBit_reg  <= preambleBit_next;
	end
end
//  Next state logic
always@(posedge clk_sys) begin
	state_next         = state_reg;
	pkt_sof_out_next   = pkt_sof_out_reg;
	pkt_eof_out_next   = pkt_eof_out_reg;
	pkt_valid_out_next = pkt_valid_out_reg;
	pkt_data_out_next  = pkt_data_out_reg;
	pkt_chid_out_next  = pkt_chid_out_reg;
	pkt_cnt_out_next   = pkt_cnt_out_reg;
	pkt_alarm_out_next = pkt_alarm_out_reg;

	data_cnt_out_next = data_cnt_out_reg;
	data_steam_next   = data_steam_reg;
	preambleBit_next  = preambleBit_reg;

	case(state_reg)
		s0 : begin
			if(run)
				begin
					pkt_valid_out_next = 1'b1;
					pkt_data_out_next  = preambleBit_reg;
					state_next         = s1;
					pkt_sof_out_next   = 1'b1;

				end
		end


		s1 : begin:  Preamble_and_SFD
			pkt_data_out_next = ~preambleBit_reg;
			pkt_sof_out_next  = 1'b0;

			if(pkt_cnt_out_reg == 6'd63)
				begin
					pkt_data_out_next = 1;
					pkt_cnt_out_next  = 6'd0;
					preambleBit_next  = 1'b1;
					state_next        = s2;
				end
			else
				begin
					preambleBit_next = ~preambleBit_reg;
					pkt_cnt_out_next = pkt_cnt_out_reg + 1;
				end
		end

		s2 : begin:  Destination_Address
			pkt_data_out_next = dest_addr[pkt_cnt_out_reg];

			if(pkt_cnt_out_reg == 6'd47)
				begin
					pkt_cnt_out_next = 6'd0;
					state_next       = s3;
				end
			else
				pkt_cnt_out_next = pkt_cnt_out_reg + 1;
		end

		s3 : begin:  Source_Address
			pkt_data_out_next = srcs_addr[pkt_cnt_out_reg];

			if(pkt_cnt_out_reg == 6'd47)
				begin
					pkt_cnt_out_next = 6'd0;
					state_next       = s4;
				end
			else
				pkt_cnt_out_next = pkt_cnt_out_reg + 1;
		end

		s4 : begin:  Vlan_Tag
			pkt_data_out_next = vlan_tag[pkt_cnt_out_reg];

			if(pkt_cnt_out_reg == 6'd31)
				begin
					pkt_cnt_out_next = 6'd0;
					state_next       = s5;
				end
			else
				begin
					pkt_cnt_out_next = pkt_cnt_out_reg + 1;
				end
		end

		s5 : begin:  Ethernet_Type
			pkt_data_out_next = ether_type[pkt_cnt_out_reg];

			if(pkt_cnt_out_reg == 6'd15)
				begin
					pkt_cnt_out_next = 6'd0;
					state_next       = s6;
				end
			else
				begin
					pkt_cnt_out_next = pkt_cnt_out_reg + 1;
				end
		end

		s6 : begin:  Data_Stream
			if(pkt_cnt_out_next <  6'd15)
				begin
					pkt_data_out_next = data_steam[pkt_cnt_out_reg];
					data_steam_next   = data_steam;
					pkt_cnt_out_next  = pkt_cnt_out_reg + 1'b1;
				end
			else
				begin
					pkt_data_out_next = data_steam_reg[pkt_cnt_out_reg];
					pkt_cnt_out_next  = 6'd0;
				end

			if(data_cnt_out_reg == 10'd879)
				begin
					data_cnt_out_next = 6'd0;
					state_next        = s7;
				end
			else
				begin
					data_cnt_out_next = data_cnt_out_reg + 1'b1;
				end
		end

		s7 : begin:  CRC
			pkt_data_out_next  = crc[pkt_cnt_out_reg];
			pkt_eof_out_next   = 1'b1;
			pkt_valid_out_next = 1'b0;

			if(pkt_cnt_out_reg == 6'd31)
				begin
					state_next = s0;
				end
			else
				pkt_cnt_out_next = pkt_cnt_out_reg + 1;
		end
	endcase
end
    
//  Output logic
assign  pkt_sof_out =   pkt_sof_out_reg;
assign  pkt_eof_out =   pkt_eof_out_reg;
assign  pkt_valid_out =   pkt_valid_out_reg;
assign  pkt_data_out      =   pkt_data_out_reg;
assign  pkt_chid_out      =   pkt_chid_out_reg;
assign  pkt_cnt_out =   pkt_cnt_out_reg;
assign  pkt_alarm_out =   pkt_alarm_out_reg;
    
endmodule