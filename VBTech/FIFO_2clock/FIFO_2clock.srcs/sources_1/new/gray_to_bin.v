///////////////////////////////////////////////////////////////////////////
// Company: VB Tech
// Engineer: Nguyen Hoang Nghia
//
// Create Date: Fri, May 20, 2022
// Design Name: 
// Module Name: gray_to_bin.v
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

module gray_to_bin#(
	parameter  DATA_WIDTH = 4
	)(
	input   [DATA_WIDTH-1:0] data_in,
	output [DATA_WIDTH-1:0] data_out
);

/////////////////////////////////////////////////////////////////////////
// Parameter Declarations

assign data_out[DATA_WIDTH-1] = data_in[DATA_WIDTH-1];
assign data_out[DATA_WIDTH-2] = data_in[DATA_WIDTH-1] ^ data_in[DATA_WIDTH-2];
assign data_out[DATA_WIDTH-3] = data_in[DATA_WIDTH-1] ^ data_in[DATA_WIDTH-2] ^ data_in[DATA_WIDTH-3];
assign data_out[DATA_WIDTH-4] = data_in[DATA_WIDTH-1] ^ data_in[DATA_WIDTH-2] ^ data_in[DATA_WIDTH-3] ^ data_in[DATA_WIDTH-4];
endmodule