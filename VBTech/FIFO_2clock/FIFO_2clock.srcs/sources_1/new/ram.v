///////////////////////////////////////////////////////////////////////////
// Company: VB Tech
// Engineer: Nguyen Hoang Nghia
//
// Create Date: Mon, May 13, 2022
// Design Name: RAM
// Module Name: ram.v
// Project Name: FIFO
// Target Device: KU5P
// Tool Versions: 2019.2
// Description: Asynchronous, Depth=8, 2 clock domain. Synthesizable, write freq= 350MHz, read freq = 300MHz, RAM-based, not register-based
//
// Dependencies:
//
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
//
/////////////////////////////////////////////////////////////////////////

module ram #(
    parameter DATA_WIDTH    = 8,
    parameter DATA_DEPTH    = 8,
    parameter POINTER_WIDTH = 4
) (
    input                          wr_clk, rd_clk,
    input                          write, read, full, empty,
    input      [POINTER_WIDTH-1:0] wr_ptr, rd_ptr,
    input      [   DATA_WIDTH-1:0] data_in ,
    output reg [   DATA_WIDTH-1:0] data_out
);

    reg [DATA_WIDTH-1:0] mem[DATA_DEPTH-1:0];

    always @(posedge wr_clk) begin
        if(write && !full)
            mem[wr_ptr] <= data_in;
    end

    always @(posedge rd_clk) begin
        if(read && !empty)begin
            mem[rd_ptr] <= 'dx;
            data_out    <= mem[rd_ptr];
        end
    end

endmodule