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
// Description: Synchronous, Depth=8, Synthesizable, freq= 350MHz, RAM-based, not register-based
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
    parameter POINTER_WIDTH = 4
) (
    input                          reset, clk, write, read,
    output reg [POINTER_WIDTH-1:0] wr_ptr, rd_ptr,
    output                         full, empty
);

    assign full  = (wr_ptr == DATA_DEPTH) && (rd_ptr == 0) && (!reset);
    assign empty = (rd_ptr == wr_ptr) || (reset);

    always @(posedge clk ) begin
        if(reset)begin
            wr_ptr <= 0;
            rd_ptr <= 0;
        end
        else begin
            case({write,read})
                2'b00 :
                    begin
                        wr_ptr <= wr_ptr;
                        rd_ptr <= rd_ptr;
                    end
                2'b01 :
                    begin
                        rd_ptr <= (rd_ptr == DATA_DEPTH) ? DATA_DEPTH : rd_ptr + 1;
                    end
                2'b10 :
                    begin
                        wr_ptr <= (wr_ptr == DATA_DEPTH) ? DATA_DEPTH : wr_ptr + 1;
                    end
                2'b11 :
                    begin
                        wr_ptr <= wr_ptr;
                        rd_ptr <= rd_ptr;
                    end
                default :
                    begin
                        wr_ptr <= wr_ptr;
                        rd_ptr <= rd_ptr;
                    end
            endcase
        end
    end

endmodule