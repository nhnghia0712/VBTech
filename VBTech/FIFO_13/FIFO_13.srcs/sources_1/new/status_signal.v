module status_signal
#(
    parameter DATA_WIDTH = 8,
    parameter DATA_DEPTH = 13
)
(
    input RESET, CLK, WRITE, READ,

    output reg [DATA_WIDTH-1:0] WR_PTR, RD_PTR,
    output FULL, EMPTY
);

assign FULL = (WR_PTR == DATA_DEPTH);
assign EMPTY = (WR_PTR == 0);

always @(posedge CLK ) begin
    if(RESET)begin  
        WR_PTR <= 0;
        RD_PTR <= 0;
    end
    else begin
        case({WRITE,READ})
        2'b00: 
            begin 
                WR_PTR <= WR_PTR;
                RD_PTR <= RD_PTR;
               end
        2'b01: 
            begin 
                RD_PTR <= (RD_PTR == DATA_DEPTH) ? DATA_DEPTH : RD_PTR + 1;
                WR_PTR <= (WR_PTR == 0) ? 0 : WR_PTR - 1;
            end
        2'b10: 
            begin
                WR_PTR <= (WR_PTR == DATA_DEPTH) ? DATA_DEPTH : WR_PTR + 1;
            end
        2'b11: 
            begin 
                WR_PTR <= WR_PTR;
                RD_PTR <= RD_PTR;
            end
        default: 
            begin 
                WR_PTR <= WR_PTR;
                RD_PTR <= RD_PTR;
            end
        endcase
    end
end

endmodule