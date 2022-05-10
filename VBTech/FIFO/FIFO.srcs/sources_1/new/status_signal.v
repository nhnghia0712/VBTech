module status_signal
#(
    parameter DATA_DEPTH = 8
)
(
    input Reset, Clk, Read, Write, 

    output reg [(DATA_DEPTH/4):0] rd_ptr,wr_ptr,
    output Full, Empty
);

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

always @(posedge Clk ) begin: Pointer
    if(Reset) begin
        wr_ptr <= 0;
        rd_ptr <= 0;
    end
    else begin
        wr_ptr <= ((Write && !Full) || (Write && Read)) ? wr_ptr+1 : wr_ptr;
        rd_ptr <= ((Read && !Empty) || (Write && Read)) ? rd_ptr+1 : rd_ptr;
    end
end

endmodule