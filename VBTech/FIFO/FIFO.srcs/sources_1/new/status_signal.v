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
    parameter POINTER_WIDTH = 3
) (
    input                          reset, clk, write, read,
    output [POINTER_WIDTH-1:0] wr_ptr, rd_ptr,
    output                         full, empty
);

    reg [POINTER_WIDTH:0] wr_tmp, rd_tmp;

    assign wr_ptr = wr_tmp[POINTER_WIDTH-1:0];
    assign rd_ptr = rd_tmp[POINTER_WIDTH-1:0];

    assign full  = (wr_tmp[POINTER_WIDTH] != rd_tmp[POINTER_WIDTH]) && (wr_tmp[POINTER_WIDTH-1:0] == rd_tmp[POINTER_WIDTH-1:0]);
    assign empty = (wr_tmp == rd_tmp);

    always @(posedge clk ) begin
        if(reset)begin
            wr_tmp <= 0;
            rd_tmp <= 0;
        end
        else begin
            case({write&&!full,read&&!empty})
                2'b00 :
                    begin
                        wr_tmp <= wr_tmp;
                        rd_tmp <= rd_tmp;
                    end
                2'b01 :
                    begin
                        rd_tmp <= rd_tmp + 1;
                    end
                2'b10 :
                    begin
                        wr_tmp <= wr_tmp + 1;
                    end
                2'b11 :
                    begin
                        wr_tmp <= wr_tmp;
                        rd_tmp <= rd_tmp;
                    end
                default :
                    begin
                        wr_tmp <= wr_tmp;
                        rd_tmp <= rd_tmp;
                    end
            endcase
        end
    end

endmodule