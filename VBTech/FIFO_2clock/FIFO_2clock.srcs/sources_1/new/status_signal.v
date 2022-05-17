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
	parameter POINTER_WIDTH = 4,
	parameter DATA_DEPTH    = 8
) (
	input                          wr_reset, rd_reset, wr_clk, rd_clk, write, read,
	output reg [POINTER_WIDTH-1:0] wr_ptr, rd_ptr,
	output                         full, empty
);

	assign full  = (wr_ptr == DATA_DEPTH) && (rd_ptr == 0) && (!wr_reset);
	assign empty = (rd_ptr == wr_ptr) || (rd_reset);

	always @(posedge wr_clk or posedge wr_reset) begin
		if(wr_reset)begin
			wr_ptr <= 0;
		end
		else begin
			case(write)
				1'b1 :
					begin
						wr_ptr <= (wr_ptr == DATA_DEPTH) ? DATA_DEPTH : wr_ptr + 1;
					end
				default :
					begin
						wr_ptr <= wr_ptr;
					end
			endcase
		end
	end

	always @(posedge rd_clk or posedge rd_reset ) begin
		if(rd_reset)begin
			rd_ptr <= 0;
		end
		else begin
			case(read)
				1'b1 :
					begin
						rd_ptr <= (rd_ptr == DATA_DEPTH) ? DATA_DEPTH : rd_ptr + 1;
					end
				default :
					begin
						rd_ptr <= rd_ptr;
					end
			endcase
		end
	end

endmodule