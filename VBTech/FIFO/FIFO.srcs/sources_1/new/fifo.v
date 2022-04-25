module fifo 
#(
    parameter DATA_WIDTH = 8,
    parameter DATA_DEPTH = 8
)
(
    input Reset, Clk, Read_Write,
    input [DATA_WIDTH - 1:0] In,

    output [DATA_WIDTH - 1:0] Out,
    output Full, Empty
);
wire [(DATA_DEPTH/4)+1:0] counterR,counterW;

status_signal #(DATA_DEPTH) inst1 (Reset, Clk, Read_Write, counterR,counterW, Full, Empty, EnCntW);
ram #(DATA_WIDTH, DATA_DEPTH) inst2 (counterR, counterW, In, EnCntW, Clk, Out);

endmodule