module ram
#(
    parameter DATA_WIDTH = 8,
    parameter DATA_DEPTH = 8
)
(
    input [(DATA_DEPTH/4)+1:0] counterR,counterW,
    input [DATA_WIDTH - 1:0] In,
    input En, Clk,

    output [DATA_WIDTH - 1:0] Out
);

reg [DATA_WIDTH - 1:0] mem [DATA_DEPTH-1:0];

always @(posedge Clk) begin
    if(En)begin
            mem[counterW] <= In;
        end   
end

assign Out = mem[counterR];

endmodule