///////////////////////////////////////////////////////////////////////////
// Company: VB Tech
// Engineer: Nguyen Hoang Nghia
//
// Create Date: Mon, May 13, 2022
// Design Name: Test Bench
// Module Name: testbench.v
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
// 1. The timescale directive
`timescale     10 ps/ 1 ps
`define          DELAY 1.429
`define          DELAY2 1.667
// 3. Include Statements
module testbench;
	// 4. Parameter definitions
	parameter ENDTIME       = 500;
	parameter DATA_WIDTH    = 8  ;
	parameter DATA_DEPTH    = 8  ;
	parameter POINTER_WIDTH = 4  ;
	parameter N             = 10 ;
	parameter T             = 3  ;
	// 5. DUT Input regs
	reg                  wr_clk  ;
	reg                  rd_clk  ;
	reg                  wr_reset;
	reg                  rd_reset;
	reg                  write   ;
	reg                  read    ;
	reg [DATA_WIDTH-1:0] data_in ;
	// 6. DUT Output wires
	wire [DATA_WIDTH-1:0] data_out;
	wire                  empty   ;
	wire                  full    ;

	integer i;

	fifo #(DATA_WIDTH,DATA_DEPTH,POINTER_WIDTH) tb (
		wr_reset,
		rd_reset,
		wr_clk,
		rd_clk,
		write,
		read,
		data_in,
		data_out,
		full,
		empty
	);
	// 8. Initial Conditions
	initial
		begin
			wr_clk   = 1'b0;
			rd_clk     = 1'b0;
			wr_reset     = 1'b0;
			rd_reset     = 1'b0;
			write     = 1'b0;
			read     = 1'b0;
			data_in     = 8'd0;
		end
	// 9. Generating Test Vectors
	initial
		begin
			main;
		end
	task main;
		fork
			write_clock_generator;
			read_clock_generator;
			write_reset_generator;
			read_reset_generator;
			operation_process;
			debug_fifo;
			endsimulation;
		join
	endtask
	task write_clock_generator;
		begin
			forever #`DELAY wr_clk = !wr_clk;
		end
	endtask

	task read_clock_generator;
		begin
			forever #`DELAY2 rd_clk = !rd_clk;
		end
	endtask

	task write_reset_generator;
		begin
			#(`DELAY*2)
				wr_reset = 1'b0;
			# 4
				wr_reset = 1'b1;
			# 4
				wr_reset = 1'b0;
			#(`DELAY*50)
				wr_reset = 1'b1;
			# 4
				wr_reset = 1'b0;
			#(`DELAY*40)
				wr_reset = 1'b1;
			# 4
				wr_reset = 1'b0;
		end
	endtask

	task read_reset_generator;
		begin
			#(`DELAY*2)
				rd_reset = 1'b0;
			# 4
				rd_reset = 1'b1;
			# 4
				rd_reset = 1'b0;
			#(`DELAY*50)
				rd_reset = 1'b1;
			# 4
				rd_reset = 1'b0;
			#(`DELAY*40)
				rd_reset = 1'b1;
			# 4
				rd_reset = 1'b0;
		end
	endtask

	task operation_process;
		begin
			//TEST CASE 1:
			for (i = 0; i < N; i = i + 1) begin
				#(`DELAY*($urandom_range(1,5)))
					write = 1'b1;
				read = 1'b0;
				data_in = $random;
			end
			#(`DELAY)
				for (i = 0; i < N; i = i + 1) begin
					#(`DELAY*($urandom_range(1,5)))
						read = 1'b1;
					write = 1'b0;
				end
			read = 1'b0;
			//TEST CASE 2:
			#(`DELAY*5)
				for (i = 0; i < T; i = i + 1) begin
					#(`DELAY*($urandom_range(1,5)))
						write = 1'b1;
					read = 1'b0;
					data_in = $random;
				end
			#(`DELAY)
				for (i = 0; i < T; i = i + 1) begin
					#(`DELAY*($urandom_range(1,5)))
						read = 1'b1;
					write = 1'b0;
				end
			//TEST CASE 3:
			#(`DELAY*25)
				read = 1'b0;
			for (i = 0; i < N; i = i + 1) begin
				#(`DELAY*($urandom_range(1,3)))
					write = 1'b1;
				#(`DELAY*($urandom_range(1,3)))
					write = 1'b0;
				#(`DELAY*($urandom_range(1,3)))
					read = 1'b0;
				#(`DELAY*($urandom_range(1,3)))
					data_in = $random;
			end
			#(`DELAY*($urandom_range(1,5)))
				for (i = 0; i < N*2; i = i + 1) begin
					#(`DELAY*($urandom_range(1,3)))
						read = 1'b1;
					#(`DELAY*($urandom_range(1,3)))
						read = 1'b0;
					#(`DELAY*($urandom_range(1,3)))
						write = 1'b0;
				end
		end
	endtask
	// 10. Debug fifo
	task debug_fifo;
		begin
			$display("----------------------------------------------");
			$display("------------------   -----------------------");
			$display("----------- SIMULATION RESULT ----------------");
			$display("--------------       -------------------");
			$display("----------------     ---------------------");
			$display("----------------------------------------------");
			$monitor("TIME = %d, Read = %b, Write = %b, In = %h",$time, read, write, data_in);
		end
	endtask

	//11. Determines the simulation limit
	task endsimulation;
		begin
			#ENDTIME
				$display("-------------- THE SIMUALTION FINISHED ------------");
			$finish;
		end
	endtask
endmodule  