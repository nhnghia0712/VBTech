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
assign d_out[3] = d_in[15] | d_in[14] | d_in[13] | d_in[12] | d_in[11] | d_in[10] | d_in[9] | d_in[8];
assign d_out[2] = d_in[7] | d_in[6] | d_in[5] | d_in[4];
assign d_out[1] = d_in[15] | d_in[14] | d_in[11] | d_in[10] | d_in[7] | d_in[6] | d_in[3] | d_in[2];
assign d_out[0] = d_in[15] | d_in[13] | d_in[11] | d_in[9] | d_in[7] | d_in[5] | d_in[3] | d_in[1];

endmodule
