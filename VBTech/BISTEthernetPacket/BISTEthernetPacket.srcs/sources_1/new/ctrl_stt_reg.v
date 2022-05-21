///////////////////////////////////////////////////////////////////////////
// Company: VB Tech
// Engineer: Nguyen Hoang Nghia
//
// Create Date: Sat, May 21, 2022
// Design Name: Control And Status Register
// Module Name: ctrl_stt_reg
// Project Name: BIST Ethernet Packet
// Target Device: KU5P
// Tool Versions: 2019.2
// Description: Control And Status Register
//
// Dependencies:
//
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
//
/////////////////////////////////////////////////////////////////////////

module ctrl_stt_reg
	(
		cpu_clk,
		cpu_cs,
		cpu_we,
		cpu_oe,
		cpu_adrr,
		cpu_din,


		error_status,
		rx_num_packet,

		cpu_dout,
		
		run,
		enable,
		length,
		tx_num_packet
	);

/////////////////////////////////////////////////////////////////////////
// Parameter Declarations

/////////////////////////////////////////////////////////////////////////
// Port Declarations
input cpu_clk;
input cpu_cs ;
input cpu_we ;
input cpu_oe ;

input [15:0] cpu_adrr     ;
input [15:0] cpu_din      ;
input [15:0] rx_num_packet;

input [3:0] error_status;
/////////////////////////////////////////////////////////////////////////
// Output Declarations
output [15:0] cpu_dout;

output        run          ;
output [ 3:0] enable       ;
output [15:0] length       ;
output [15:0] tx_num_packet;
/////////////////////////////////////////////////////////////////////////
// Local Logic and Instantiation
reg [15:0] cpu_dout;

wire        run          ;
wire [ 3:0] enable       ;
reg  [15:0] length       ;
reg  [15:0] tx_num_packet;

reg [15:0] regfile[5:0];

reg  [15:0] temp_run         ;
reg  [15:0] temp_enable      ;
wire [15:0] temp_error_status;

decoder_4to16 inst1 (
	.d_out(temp_error_status),
	.d_in (error_status     )
);


always @(posedge cpu_clk) begin
	if(cpu_we && !cpu_cs) begin
		regfile[4]        <= rx_num_packet;
		regfile[5]        <= temp_error_status;		
		if(cpu_adrr<4) begin
			regfile[cpu_adrr] <= cpu_din;
		end
	end
end

always @(posedge cpu_clk) begin
	if(cpu_oe && !cpu_cs) begin
		cpu_dout <= regfile[cpu_adrr];

		temp_run      <= regfile[0];
		temp_enable   <= regfile[1];
		length        <= regfile[2];
		tx_num_packet <= regfile[3];
	end
end

encoder_16to1 ins2 (
	.d_out(run     ),
	.d_in (temp_run)
);

encoder_16to4 ins3 (
	.d_out(enable     ),
	.d_in (temp_enable)
);
endmodule