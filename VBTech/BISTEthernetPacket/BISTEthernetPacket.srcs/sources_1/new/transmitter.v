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
		header_p1722,
		header_iec,
		samples,
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
parameter PKT_CH_W = 16;

parameter PREAMBLE_W     = 64 ;
parameter ADDR_W         = 48 ;
parameter TYPE_W         = 16 ;
parameter TAG_CRC_W      = 32 ;
parameter P1722_HEADER_W = 192;
parameter IEC_HEADER_W   = 64 ;
parameter DATA_W         = 8  ;

parameter N = 110;
parameter SAMPLES_W = DATA_W * N;
//  FSM state encoding
localparam s0  = 4'd0 ;
localparam s1  = 4'd1 ;
localparam s2  = 4'd2 ;
localparam s3  = 4'd3 ;
localparam s4  = 4'd4 ;
localparam s5  = 4'd5 ;
localparam s6  = 4'd6 ;
localparam s7  = 4'd7 ;
localparam s8  = 4'd8 ;
localparam s9  = 4'd9 ;
localparam s10 = 4'd10;
/////////////////////////////////////////////////////////////////////////
// Port Declarations
input                      clk_sys     ;
input                      reset       ;
input                      run         ;
input [        ADDR_W-1:0] dest_addr   ;
input [        ADDR_W-1:0] srcs_addr   ;
input [     TAG_CRC_W-1:0] vlan_tag    ;
input [        TYPE_W-1:0] ether_type  ;
input [P1722_HEADER_W-1:0] header_p1722;
input [  IEC_HEADER_W-1:0] header_iec  ;
input [        DATA_W-1:0] samples     ;
input [     TAG_CRC_W-1:0] crc         ;
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
reg [5:0] pkt_cnt_out;

reg [ 3:0] state_reg      ;
reg [10:0] counterB_reg   ;
reg [ 5:0] counterA_reg   ;
reg        preambleBit_reg;

reg       pkt_sof_out_reg  ;
reg       pkt_eof_out_reg  ;
reg       pkt_valid_out_reg;
reg       pkt_data_out_reg ;
reg [3:0] pkt_alarm_out_reg;
///////////////////////////////////////////////////////////////////////
reg [ 3:0] state_next      ;
reg [10:0] counterB_next   ;
reg [ 5:0] counterA_next   ;
reg        preambleBit_next;

reg       pkt_sof_out_next  ;
reg       pkt_eof_out_next  ;
reg       pkt_valid_out_next;
reg       pkt_data_out_next ;
reg [3:0] pkt_alarm_out_next;
//  Present state logic
always@(posedge clk_sys) begin
	if(reset) begin
		state_reg         <= s0;
		pkt_sof_out_reg   <= 0;
		pkt_eof_out_reg   <= 0;
		pkt_valid_out_reg <= 0;
		pkt_data_out_reg  <= 0;
		pkt_alarm_out_reg <= 0;

		counterA_reg    <= PREAMBLE_W-2;
		counterB_reg    <= 0;
		preambleBit_reg <= 1'b1;
		temp            <= 0;
	end
	else begin
		state_reg         <= state_next;
		pkt_sof_out_reg   <= pkt_sof_out_next;
		pkt_eof_out_reg   <= pkt_eof_out_next;
		pkt_valid_out_reg <= pkt_valid_out_next;
		pkt_data_out_reg  <= pkt_data_out_next;
		pkt_alarm_out_reg <= pkt_alarm_out_next;

		counterA_reg    <= counterA_next;
		counterB_reg    <= counterB_next;
		preambleBit_reg <= preambleBit_next;
	end
end
//  Next state logic
always@(*) begin
	state_next         = state_reg;
	pkt_sof_out_next   = pkt_sof_out_reg;
	pkt_eof_out_next   = pkt_eof_out_reg;
	pkt_valid_out_next = pkt_valid_out_reg;
	pkt_data_out_next  = pkt_data_out_reg;
	pkt_alarm_out_next = pkt_alarm_out_reg;

	counterA_next    = counterA_reg;
	counterB_next    = counterB_reg;
	preambleBit_next = preambleBit_reg;

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

			if(counterA_reg == 6'd0)
				begin
					pkt_data_out_next = 1;
					counterA_next     = ADDR_W-1;
					preambleBit_next  = 1'b1;
					state_next        = s2;
				end
			else
				begin
					counterA_next    = counterA_reg - 1;
					preambleBit_next = ~preambleBit_reg;
				end
		end

		s2 : begin:  Destination_Address
			pkt_data_out_next = dest_addr[counterA_reg];

			if(counterA_reg == 0)
				begin
					counterA_next = ADDR_W-1;
					state_next    = s3;
				end
			else
				counterA_next = counterA_reg - 1;
		end

		s3 : begin:  Source_Address
			pkt_data_out_next = srcs_addr[counterA_reg];

			if(counterA_reg == 0)
				begin
					counterA_next = TAG_CRC_W-1;
					state_next    = s4;
				end
			else
				counterA_next = counterA_reg - 1;
		end

		s4 : begin:  Vlan_Tag
			pkt_data_out_next = vlan_tag[counterA_reg];

			if(counterA_reg == 0)
				begin
					counterA_next = TYPE_W-1;
					state_next    = s5;
				end
			else
				begin
					counterA_next = counterA_reg - 1;
				end
		end

		s5 : begin:  Ethernet_Type
			pkt_data_out_next = ether_type[counterA_reg];

			if(counterA_reg == 0)
				begin
					counterA_next = P1722_HEADER_W-1;
					state_next    = s6;
				end
			else
				begin
					counterA_next = counterA_reg - 1;
				end
		end

		s6 : begin:  Header_IEEE_P1722_Packet
			pkt_data_out_next = header_p1722[counterA_reg];

			if(counterA_reg == 0)
				begin
					counterA_next = IEC_HEADER_W-1;
					state_next    = s7;
				end
			else
				begin
					counterA_next = counterA_reg - 1;
				end
		end

		s7 : begin:  IEC_61883_Header
			pkt_data_out_next = header_iec[counterA_reg];

			if(counterA_reg == 0)
				begin
					counterA_next = DATA_W-1;
					state_next    = s8;
				end
			else
				begin
					counterA_next = counterA_reg - 1;
				end
		end
		s8 : begin:  Samples
			pkt_data_out_next = samples[counterA_reg];
			if(counterA_reg == 0)
				begin
					counterA_next = DATA_W-1;
				end
			else
				begin
					counterA_next = counterA_reg - 1'b1;
				end

			if(counterB_reg == SAMPLES_W-1)
				begin
					counterA_next = TAG_CRC_W-1;
					state_next    = s9;
				end
			else
				begin
					counterB_next = counterB_reg + 1'b1;
				end
		end

		s9 : begin:  CRC
			pkt_data_out_next = crc[counterA_reg];

			if(counterA_reg == 0)
				begin
					state_next         = s10;
					counterA_next      = PREAMBLE_W-2;
					counterB_next      = 10'd0;
					pkt_eof_out_next   = 1'b1;
				end
			else
				counterA_next = counterA_reg - 1;
		end
		s10 : begin: EndState
			pkt_data_out_next = 1'bx;
			state_next       = s0;
			pkt_eof_out_next = 1'b0;
			pkt_valid_out_next = 1'b0;
		end
	endcase
end

//  Output logic
assign  pkt_sof_out =   pkt_sof_out_reg;
assign  pkt_eof_out =   pkt_eof_out_reg;
assign  pkt_valid_out =   pkt_valid_out_reg;
assign  pkt_data_out      =   pkt_data_out_reg;
assign  pkt_chid_out      =   'd1;
assign  pkt_alarm_out =   pkt_alarm_out_reg;

reg [5:0] temp;

always @(posedge clk_sys) begin
	if(pkt_eof_out_next) begin
		temp <= temp + 1;
		pkt_cnt_out <= temp;
	end 
	else begin
		pkt_cnt_out <= 'dx;
	end
end
endmodule