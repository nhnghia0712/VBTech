///////////////////////////////////////////////////////////////////////////
// Company: VB Tech
// Engineer: Nguyen Hoang Nghia
//
// Create Date: Mon, May 9, 2022
// Design Name: 
// Module Name: sync.v
// Project Name: 
// Target Device: 
// Tool Versions: 
// Description: 
//
// Dependencies:
//
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
//
/////////////////////////////////////////////////////////////////////////

module sync #(
	parameter  DATA_WIDTH = 4
	)
	(
		input reset, clk,
		input [DATA_WIDTH-1:0] data_in,
		output reg [DATA_WIDTH-1:0] data_out
	);

/////////////////////////////////////////////////////////////////////////
// Parameter Declarations


	reg [DATA_WIDTH-1:0] temp;

always @(posedge clk or posedge reset) begin
	if(reset) begin
		temp <= 0;
	end else begin
		temp <= data_in;
	end
end

always @(posedge clk or posedge reset) begin
	if(reset) begin
		data_out <= 0;
	end else begin
		data_out <= temp;
	end
end

endmodule