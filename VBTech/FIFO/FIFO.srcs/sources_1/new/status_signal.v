module status_signal
#(
    parameter DATA_DEPTH = 8
)
(
    input Reset, Clk, Read, Write, Full, Empty,

    output reg [(DATA_DEPTH/4):0] rd_ptr,wr_ptr
);

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