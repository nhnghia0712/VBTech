///////////////////////////////////////////////////////////////////////////
// Company: VB Tech
// Engineer: Nguyen Hoang Nghia
//
// Create Date: Sat, May 21, 2022
// Design Name: Encoder 16 to 4
// Module Name: encoder_16to4.v
// Project Name: BIST Ethernet Packet
// Target Device: KU5P
// Tool Versions: 2019.2
// Description: Encoder 16 to 4
//
// Dependencies:
//
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
//
/////////////////////////////////////////////////////////////////////////
module encoder_16to4
	(
		d_out, 
		d_in
	);

/////////////////////////////////////////////////////////////////////////
// Parameter Declarations

/////////////////////////////////////////////////////////////////////////
// Port Declarations
input [15:0]   d_in;
/////////////////////////////////////////////////////////////////////////
// Output Declarations
output [3:0] d_out;

/////////////////////////////////////////////////////////////////////////
// Local Logic and Instantiation
wire [7:0] out4to2;

// encoder_4to2 inst1 (
// 	.d_out(out4to2[7:6]),
// 	.d_in(d_in[15:12])
// 	);
// encoder_4to2 inst2 (
// 	.d_out(out4to2[5:4]),
// 	.d_in(d_in[11:8])
// 	);
// encoder_4to2 inst3 (
// 	.d_out(out4to2[3:2]),
// 	.d_in(d_in[7:4])
// 	);
// encoder_4to2 inst4 (
// 	.d_out(out4to2[1:0]),
// 	.d_in(d_in[3:0])
// 	);

encoder_4to2 inst1[3:0] (
	.d_out(out4to2),
	.d_in(d_in)
	);

 encoder_4to2 inst2[1:0] (
	.d_out(d_out),
	.d_in(out4to2)
	);
// encoder_4to2 inst5 (
// 	.d_out(d_out[3:2]),
// 	.d_in(out4to2[7:4])
// 	);

// encoder_4to2 inst6 (
// 	.d_out(d_out[1:0]),
// 	.d_in(out4to2[3:0])
// 	);

endmodule