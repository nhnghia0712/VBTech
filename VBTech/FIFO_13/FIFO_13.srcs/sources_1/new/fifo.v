module fifo 
#(
    parameter DATA_WIDTH = 8,
    parameter DATA_DEPTH = 13
)
(
    input RESET, CLK, WRITE, READ,
    input [DATA_WIDTH - 1:0] DATA_IN,

    output [DATA_WIDTH - 1:0] DATA_OUT,
    output FULL, EMPTY
);

wire [DATA_WIDTH-1:0] WR_PTR, RD_PTR;

status_signal #(DATA_WIDTH, DATA_DEPTH) inst1 (RESET, CLK, WRITE, READ, WR_PTR, RD_PTR, FULL, EMPTY);
ram           #(DATA_WIDTH, DATA_DEPTH) inst2 (CLK, WRITE, READ, FULL, EMPTY, WR_PTR, RD_PTR, DATA_IN, DATA_OUT);

endmodule