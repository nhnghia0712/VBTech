///////////////////////////////////////////////////////////////////////////
// Company: VB Tech
// Engineer: Nguyen Hoang Nghia
//
// Create Date: Sat, May 21, 2022
// Design Name: Decoder 4 to 16
// Module Name: decoder_4to16.v
// Project Name: BIST Ethernet Packet
// Target Device: KU5P
// Tool Versions: 2019.2
// Description: Decoder 4 to 16
//
// Dependencies:
//
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
//
/////////////////////////////////////////////////////////////////////////

module decoder_4to16
	(
		d_out, 
		d_in
	);

/////////////////////////////////////////////////////////////////////////
// Parameter Declarations
parameter tmp = 16'b0000_0000_0000_0001;
/////////////////////////////////////////////////////////////////////////
// Port Declarations
input [3:0]   d_in;
/////////////////////////////////////////////////////////////////////////
// Output Declarations
output [15:0] d_out;
/////////////////////////////////////////////////////////////////////////
// Local Logic and Instantiation
assign d_out = (d_in == 4'b0000) ? tmp   :
               (d_in == 4'b0001) ? tmp<<1:
               (d_in == 4'b0010) ? tmp<<2:
               (d_in == 4'b0011) ? tmp<<3:
               (d_in == 4'b0100) ? tmp<<4:
               (d_in == 4'b0101) ? tmp<<5:
               (d_in == 4'b0110) ? tmp<<6:
               (d_in == 4'b0111) ? tmp<<7:
               (d_in == 4'b1000) ? tmp<<8:
               (d_in == 4'b1001) ? tmp<<9:
               (d_in == 4'b1010) ? tmp<<10:
               (d_in == 4'b1011) ? tmp<<11:
               (d_in == 4'b1100) ? tmp<<12:
               (d_in == 4'b1101) ? tmp<<13:
               (d_in == 4'b1110) ? tmp<<14:
               (d_in == 4'b1111) ? tmp<<15: 16'bxxxx_xxxx_xxxx_xxxx;
endmodule