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

status_signal #(DATA_DEPTH) inst1 (Reset, Clk, Read, Write, rd_ptr, wr_ptr, Full, Empty);
ram #(DATA_WIDTH, DATA_DEPTH) inst2 (wr_ptr, rd_ptr, Data_In, Clk, Write, Read, Full, Empty, Data_Out);

endmodule