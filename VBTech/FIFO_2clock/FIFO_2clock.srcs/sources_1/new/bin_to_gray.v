///////////////////////////////////////////////////////////////////////////
// Company: VB Tech
// Engineer: Nguyen Hoang Nghia
//
// Create Date: Fri, May 20, 2022
// Design Name: Binary to Gray code Converter
// Module Name: bin_to_gray.v
// Project Name: FIFO
// Target Device: KU5P
// Tool Versions: 2019.2
// Description: 
//
// Dependencies:
//
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
//
/////////////////////////////////////////////////////////////////////////

module bin_to_gray#(
	 parameter DATA_WIDTH = 4
	 )
(
	input   [DATA_WIDTH-1:0] data_in,
	output [DATA_WIDTH-1:0] data_out

);



assign data_out[DATA_WIDTH-1] = data_in[DATA_WIDTH-1];
assign data_out[DATA_WIDTH-2] = data_in[DATA_WIDTH-1] ^ data_in[DATA_WIDTH-2];
assign data_out[DATA_WIDTH-3] = data_in[DATA_WIDTH-2] ^ data_in[DATA_WIDTH-3];
assign data_out[DATA_WIDTH-4] = data_in[DATA_WIDTH-3] ^ data_in[DATA_WIDTH-4];
endmodule