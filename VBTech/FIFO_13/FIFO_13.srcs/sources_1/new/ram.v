module ram
#(
    parameter DATA_WIDTH = 8,
    parameter DATA_DEPTH = 13
)
(
    input CLK,
    input WRITE, READ, FULL, EMPTY,
    input [DATA_WIDTH - 1:0] WR_PTR, RD_PTR,
    input [DATA_WIDTH - 1:0] DATA_IN,

    output reg [DATA_WIDTH - 1:0] DATA_OUT
);

reg [DATA_WIDTH - 1:0] MEM [DATA_DEPTH-1:0];

always @(posedge CLK) begin: write
    if(WRITE && !FULL)
        MEM[WR_PTR] <= DATA_IN;
end

always @(posedge CLK) begin: read
    if(READ && !EMPTY)begin
        MEM[RD_PTR] <= 'dx;
        DATA_OUT <= MEM[RD_PTR];
    end
end

endmodule