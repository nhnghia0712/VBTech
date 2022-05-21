///////////////////////////////////////////////////////////////////////////
// Company: VB Tech
// Engineer: Nguyen Hoang Nghia
//
// Create Date: Mon, May 13, 2022
// Design Name: FIFO
// Module Name: fifo.v
// Project Name: FIFO
// Target Device: KU5P
// Tool Versions: 2019.2
// Description: Asynchronous, Depth=8, 2 clock domain. Synthesizable, write freq= 350MHz, read freq = 300MHz, RAM-based, not register-based
//
// Dependencies:
//
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
//
/////////////////////////////////////////////////////////////////////////

module fifo #(
	parameter DATA_WIDTH    = 8,
	parameter DATA_DEPTH    = 8,
	parameter POINTER_WIDTH = 3
) (
	input                   wr_reset, rd_reset, wr_clk, rd_clk, write, read,
	input  [DATA_WIDTH-1:0] data_in ,
	output [DATA_WIDTH-1:0] data_out,
	output                  full, empty
);

	wire [POINTER_WIDTH-1:0] wr_ptr, rd_ptr;

	status_signal #(DATA_DEPTH,POINTER_WIDTH) inst1 (
		wr_reset,
		rd_reset,
		wr_clk,
		rd_clk,
		write,
		read,
		wr_ptr,
		rd_ptr,
		full,
		empty
	);

	ram #(DATA_WIDTH,DATA_DEPTH,POINTER_WIDTH) inst2 (
		wr_clk,
		rd_clk,
		write,
		read,
		full,
		empty,
		wr_ptr,
		rd_ptr,
		data_in,
		data_out
	);

endmodule