module ram
#(
    parameter DATA_WIDTH = 8,
    parameter DATA_DEPTH = 8
)
(
    input [(DATA_DEPTH/4):0] wr_ptr,rd_ptr,
    input [DATA_WIDTH - 1:0] Data_In,
    input Clk, Write, Read, Full, Empty,

    output reg [DATA_WIDTH - 1:0] Data_Out
);

reg [DATA_WIDTH - 1:0] mem [DATA_DEPTH-1:0];

always @(posedge Clk) begin: write
    if(Write && !Full)
        mem[wr_ptr] <= Data_In;
    else if (Write && Read)   
        mem[wr_ptr] <= Data_In;
end

always @(posedge Clk) begin: read
    if(Read && !Empty)
        Data_Out <= mem[rd_ptr];
    else if (Read && Write && Empty)   
        Data_Out <= mem[rd_ptr];
end

endmodule