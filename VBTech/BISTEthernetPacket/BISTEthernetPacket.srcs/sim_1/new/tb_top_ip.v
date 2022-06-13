///////////////////////////////////////////////////////////////////////////
// Company: VB Tech
// Engineer: Nguyen Hoang Nghia
//
// Create Date:Sat, May 21, 2022
// Design Name: Test Bench For Control And Status Register
// Module Name: testbench.v
// Project Name: BIST Ethernet Packet
// Target Device: KU5P
// Tool Versions: 2019.2
// Description: Test Bench
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
module tb_top_ip ();
	// 4. Parameter definitions
	parameter ENDTIME = 2300;
	// 5. DUT Input regs
	reg        clk_sys ;
	reg        cpu_clk ;
	reg        cpu_cs  ;
	reg        cpu_we  ;
	reg        cpu_oe  ;
	reg [15:0] cpu_adrr;
	reg [15:0] cpu_din ;

	// 6. DUT Output wires
	wire [15:0] cpu_dout;


	integer i;

	top_ip DUT (
		.cpu_cs  (cpu_cs  ),
		.cpu_clk (cpu_clk ),
		.cpu_we  (cpu_we  ),
		.cpu_oe  (cpu_oe  ),
		.cpu_adrr(cpu_adrr),
		.cpu_din (cpu_din ),
		.clk_sys (clk_sys ),
		.cpu_dout(cpu_dout)
	);
	// 8. Initial Conditions
	initial
		begin
			clk_sys = 1'b0;
			cpu_clk     = 1'b0;
			cpu_cs     = 1'b0;
			cpu_we     = 1'b0;
			cpu_oe     = 1'b0;
			cpu_din     = 16'd0;
			cpu_adrr = 16'd0;
		end
	// 9. Generating Test Vectors
	initial
		begin
			main;
		end

	task main;
		fork
			clock_generator_cpu;
			clock_generator_sys;
			reset_generator;
			operation_process;
			//debug_fifo;
			endsimulation;
		join
	endtask

	task clock_generator_cpu;
		begin
			forever #`DELAY cpu_clk = !cpu_clk;
		end
	endtask

	task clock_generator_sys;
		begin
			forever #`DELAY2 clk_sys = !clk_sys;
		end
	endtask

	task reset_generator;
		begin
			#(`DELAY*2)
				cpu_cs = 1'b0;
			#(`DELAY*2)
				cpu_cs = 1'b1;
			#(`DELAY*2)
				cpu_cs = 1'b0;
		end
	endtask

	task operation_process;
		begin
			//TEST CASE 1:
			// #(`DELAY*8)
			// 	for (i = 0; i < 15; i = i + 1) begin
			// 		#(`DELAY*2)
			// 			cpu_we = 1'b1;
			// 		cpu_oe = 1'b0;
			// 		cpu_din = $random;
			// 		cpu_adrr = i;
			// 	end
			// #(`DELAY)
			// 	for (i = 0; i < 15; i = i + 1) begin
			// 		#(`DELAY*4)
			// 			cpu_oe = 1'b1;
			// 		cpu_we = 1'b0;
			// 		cpu_adrr = i;
			// 	end
			#(`DELAY*16)

				cpu_we = 1'b1;
			cpu_din     = 16'd0;
			cpu_adrr = 16'd0;
			#(`DELAY*2)

				cpu_adrr = 16'd1;
			#(`DELAY*2)

				cpu_adrr = 16'd2;
			#(`DELAY*2)

				cpu_adrr = 16'd3;
			#(`DELAY*2)

				cpu_we = 1'b0;
			#(`DELAY*10)

				cpu_oe = 1'b1;
			#(`DELAY*10)

				cpu_oe = 1'b0;
			#(`DELAY*10)

				cpu_we = 1'b1;
			cpu_din = 16'd16;
			cpu_adrr = 16'd0;
			#(`DELAY*2)

				cpu_din = 16'd2;
			cpu_adrr = 16'd1;
			#(`DELAY*2)

				cpu_din = 16'd128;
			cpu_adrr = 16'd2;
			#(`DELAY*2)

				cpu_din = 16'd5;
			cpu_adrr = 16'd3;
			#(`DELAY*2)

				cpu_we = 1'b0;
			#(`DELAY*10)

				cpu_oe = 1'b1;
			#(`DELAY*10)

				cpu_oe = 1'b0;
			#(`DELAY*10)

				cpu_we = 1'b1;
			cpu_adrr = 16'd0;
			cpu_din = 16'd0;
			#(`DELAY*2)

				cpu_we = 1'b0;
			#(`DELAY*10)

				cpu_oe = 1'b1;
			#(`DELAY*2)

				cpu_oe = 1'b0;
			#(`DELAY*1450)

				cpu_we = 1'b1;
			#(`DELAY*2)

				cpu_we = 1'b0;
			#(`DELAY*10)

				cpu_oe = 1'b1;
			cpu_adrr = 16'd4;
			#(`DELAY*2)

				cpu_adrr = 16'd5;
			#(`DELAY*2)

				cpu_adrr = 16'd6;
		end
	endtask
	// 10. Debug fifo
	// task debug_fifo;
	// 	begin
	// 		$display("----------------------------------------------");
	// 		$display("------------------   -----------------------");
	// 		$display("----------- SIMULATION RESULT ----------------");
	// 		$display("--------------       -------------------");
	// 		$display("----------------     ---------------------");
	// 		$display("----------------------------------------------");
	// 		$monitor("TIME = %d, Read = %b, Write = %b, In = %h",$time, cpu_oe, cpu_we, cpu_din);
	// 	end
	// endtask

	//11. Determines the simulation limit
	task endsimulation;
		begin
			#ENDTIME
				$display("-------------- THE SIMUALTION FINISHED ------------");
			$finish;
		end
	endtask
endmodule  