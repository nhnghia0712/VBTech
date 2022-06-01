///////////////////////////////////////////////////////////////////////////
// Company: VB Tech
// Engineer: Nguyen Hoang Nghia
//
// Create Date: Fri, May 20, 2022
// Design Name: Binary to Gray code Converter
// Module Name: bin_to_gray.v
// Project Name: BIST Ethernet Packet
// Target Device: KU5P
// Tool Versions: 2019.2
// Description: Binary to Gray code Converter
//
// Dependencies:
//
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
//
/////////////////////////////////////////////////////////////////////////

module bin_to_gray #(parameter DATA_WIDTH = 4) (
	input  [DATA_WIDTH-1:0] data_in ,
	output [DATA_WIDTH-1:0] data_out
);

// assign data_out[DATA_WIDTH-1] = data_in[DATA_WIDTH-1];
// assign data_out[DATA_WIDTH-2] = data_in[DATA_WIDTH-1] ^ data_in[DATA_WIDTH-2];
// assign data_out[DATA_WIDTH-3] = data_in[DATA_WIDTH-2] ^ data_in[DATA_WIDTH-3];
// assign data_out[DATA_WIDTH-4] = data_in[DATA_WIDTH-3] ^ data_in[DATA_WIDTH-4];

function [DATA_WIDTH-1:0] binary2gray;
	integer i;
	input [DATA_WIDTH-1:0] value_in;
	begin
		binary2gray[DATA_WIDTH-1] = value_in[DATA_WIDTH-1];
		for (i = DATA_WIDTH-1; i > 0; i = i - 1)
			binary2gray[i - 1] = value_in[i] ^ value_in[i - 1];
	end
endfunction

	assign data_out = binary2gray(data_in);

endmodule