///////////////////////////////////////////////////////////////////////////
// Company: VB Tech
// Engineer: Nguyen Hoang Nghia
//
// Create Date: Sat, May 21, 2022
// Design Name: Encoder 16 to 1
// Module Name: encoder_16to1.v
// Project Name: BIST Ethernet Packet
// Target Device: KU5P
// Tool Versions: 2019.2
// Description: Encoder 16 to 1
//
// Dependencies:
//
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
//
/////////////////////////////////////////////////////////////////////////
module encoder_16to1
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
output d_out;

/////////////////////////////////////////////////////////////////////////
// Local Logic and Instantiation
wire [3:0] out16to4;
wire [1:0] out4to2;

encoder_16to4 inst1 (
	.d_out(out16to4),
	.d_in(d_in)
	);

encoder_4to2 inst2 (
	.d_out(out4to2),
	.d_in(out16to4)
	);

encoder_2to1 ins3 (
	.d_out(d_out),
	.d_in(out4to2)
	);

endmodule