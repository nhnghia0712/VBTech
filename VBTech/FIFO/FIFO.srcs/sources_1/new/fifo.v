module fifo 
#(
    parameter DATA_WIDTH = 8,
    parameter DATA_DEPTH = 8
)
(
    input Reset, Clk, Read, Write,
    input [DATA_WIDTH - 1:0] Data_In,

    output [DATA_WIDTH - 1:0] Data_Out,
    output Full, Empty
);
wire [(DATA_DEPTH/4):0] rd_ptr, wr_ptr;

//FULL and Empty signal
reg [(DATA_DEPTH/4)+1:0] fifo_cnt;
assign Full = (fifo_cnt == 8);
assign Empty = (fifo_cnt == 0);
always @(posedge Clk ) begin
    if(Reset)  fifo_cnt <= 0;
    else begin
        case({Write,Read})
        2'b00: fifo_cnt <= fifo_cnt;
        2'b01: fifo_cnt <= (fifo_cnt == 0) ? 0:fifo_cnt + 1;
        2'b10: fifo_cnt <= (fifo_cnt == 8) ? 8:fifo_cnt + 1;
        2'b11: fifo_cnt <= fifo_cnt;
        default: fifo_cnt <= fifo_cnt;
        endcase
    end
end
//

status_signal #(DATA_DEPTH) inst1 (Reset, Clk, Read, Write, Full, Empty, rd_ptr, wr_ptr);
ram #(DATA_WIDTH, DATA_DEPTH) inst2 (wr_ptr, rd_ptr, Data_In, Clk, Write, Read, Full, Empty, Data_Out);

endmodule