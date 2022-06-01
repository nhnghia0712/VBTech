///////////////////////////////////////////////////////////////////////////
// Company: VB Tech
// Engineer: Nguyen Hoang Nghia
//
// Create Date: Fri, May 20, 2022
// Design Name: Gray code to Binary Converter
// Module Name: gray_to_bin.v
// Project Name: BIST Ethernet Packet
// Target Device: KU5P
// Tool Versions:2019.2
// Description: Gray code to Binary Converter
//
// Dependencies:
//
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
//
/////////////////////////////////////////////////////////////////////////

module gray_to_bin #(parameter  DATA_WIDTH = 4) (
	input  [DATA_WIDTH-1:0] data_in ,
	output [DATA_WIDTH-1:0] data_out
);

/////////////////////////////////////////////////////////////////////////
// Parameter Declarations

// assign data_out[DATA_WIDTH-1] = data_in[DATA_WIDTH-1];
// assign data_out[DATA_WIDTH-2] = data_in[DATA_WIDTH-1] ^ data_in[DATA_WIDTH-2];
// assign data_out[DATA_WIDTH-3] = data_in[DATA_WIDTH-1] ^ data_in[DATA_WIDTH-2] ^ data_in[DATA_WIDTH-3];
// assign data_out[DATA_WIDTH-4] = data_in[DATA_WIDTH-1] ^ data_in[DATA_WIDTH-2] ^ data_in[DATA_WIDTH-3] ^ data_in[DATA_WIDTH-4];

function [DATA_WIDTH-1:0] gray2binary;
	integer i;
	input [DATA_WIDTH-1:0] value_in;
	begin
		gray2binary[DATA_WIDTH-1] = value_in[DATA_WIDTH-1];
		for (i = DATA_WIDTH-1; i > 0; i = i - 1)
			gray2binary[i - 1] = gray2binary[i] ^ value_in[i - 1];
	end
endfunction

	assign data_out = gray2binary(data_in);
endmodule