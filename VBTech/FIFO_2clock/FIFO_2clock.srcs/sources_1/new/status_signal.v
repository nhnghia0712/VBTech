///////////////////////////////////////////////////////////////////////////
// Company: VB Tech
// Engineer: Nguyen Hoang Nghia
//
// Create Date: Mon, May 13, 2022
// Design Name: Status Signal
// Module Name: status_signal.v
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

module status_signal #(
	parameter DATA_DEPTH    = 8,
	parameter POINTER_WIDTH = 3
) (
	input                      wr_reset, rd_reset, wr_clk, rd_clk, write, read,
	output [POINTER_WIDTH-1:0] wr_ptr, rd_ptr,
	output                     full, empty
);

	reg  [POINTER_WIDTH:0] wr_bin, rd_bin;
	wire [POINTER_WIDTH:0] wr_gray, rd_gray, wr_gray_sync, rd_gray_sync, wr_bin_sync, rd_bin_sync;

	always @(posedge wr_clk or posedge wr_reset) begin
		if(wr_reset)begin
			wr_bin <= 0;
		end
		else begin
			case(write&&!full)
				1'b1 :
					begin
						wr_bin <= wr_bin + 1;
					end
				default :
					begin
						wr_bin <= wr_bin;
					end
			endcase
		end
	end

	always @(posedge rd_clk or posedge rd_reset ) begin
		if(rd_reset)begin
			rd_bin <= 0;
		end
		else begin
			case(read&&!empty)
				1'b1 :
					begin
						rd_bin <= rd_bin + 1;
					end
				default :
					begin
						rd_bin <= rd_bin;
					end
			endcase
		end
	end

	bin_to_gray inst1 (
		.data_in (wr_bin ),
		.data_out(wr_gray)
	);

	bin_to_gray inst2 (
		.data_in (rd_bin ),
		.data_out(rd_gray)
	);

	sync inst3 (
		.reset   (rd_reset    ),
		.clk     (rd_clk      ),
		.data_in (wr_gray     ),
		.data_out(wr_gray_sync)
	);

	sync inst4 (
		.reset   (wr_reset    ),
		.clk     (wr_clk      ),
		.data_in (rd_gray     ),
		.data_out(rd_gray_sync)
	);

	gray_to_bin inst5 (
		.data_in (wr_gray_sync),
		.data_out(wr_bin_sync )
	);

	gray_to_bin inst6 (
		.data_in (rd_gray_sync),
		.data_out(rd_bin_sync )
	);

	assign wr_ptr = wr_bin[POINTER_WIDTH-1:0];
	assign rd_ptr = rd_bin[POINTER_WIDTH-1:0];

	assign full  = (wr_bin[POINTER_WIDTH] != rd_bin_sync[POINTER_WIDTH]) && (wr_bin[POINTER_WIDTH-1:0] == rd_bin_sync[POINTER_WIDTH-1:0]);
	assign empty = (wr_bin_sync == rd_bin);

endmodule