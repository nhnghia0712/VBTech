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
// 3. Include Statements
module tb_csr ();
  // 4. Parameter definitions
  parameter ENDTIME = 164;
  // 5. DUT Input regs
  reg        cpu_clk      ;
  reg        cpu_cs       ;
  reg        cpu_we       ;
  reg        cpu_oe       ;
  reg [15:0] cpu_adrr     ;
  reg [15:0] cpu_din      ;
  reg [ 3:0] error_data_status ;
  reg [ 3:0] error_length_status ;
  reg [15:0] rx_num_packet;
  // 6. DUT Output wires
  wire [15:0] cpu_dout     ;
  wire        run          ;
  wire [ 3:0] enable       ;
  wire [15:0] length       ;
  wire [15:0] tx_num_packet;

  integer i;

  ctrl_stt_reg tb (
    .cpu_cs             (cpu_cs             ),
    .cpu_clk            (cpu_clk            ),
    .cpu_we             (cpu_we             ),
    .cpu_oe             (cpu_oe             ),
    .cpu_adrr           (cpu_adrr           ),
    .cpu_din            (cpu_din            ),
    .error_data_status  (error_data_status  ),
    .error_length_status(error_length_status),
    .rx_num_packet      (rx_num_packet      ),
    .cpu_dout           (cpu_dout           ),
    .run                (run                ),
    .enable             (enable             ),
    .length             (length             ),
    .tx_num_packet      (tx_num_packet      )
  );
  // 8. Initial Conditions
  initial
    begin
      cpu_clk     = 'b0;
      cpu_cs     = 'b0;
      cpu_we     = 'b0;
      cpu_oe     = 'b0;
      cpu_din     = 'd0;
      cpu_adrr = 'd0;
      error_data_status = 'd0;
      error_length_status = 'd0;
    end
  // 9. Generating Test Vectors
  initial
    begin
      main;
    end

  task main;
    fork
      clock_generator;
      reset_generator;
      operation_process;
      debug_fifo;
      endsimulation;
    join
  endtask

  task clock_generator;
    begin
      forever #`DELAY cpu_clk = !cpu_clk;
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
      #(`DELAY*14)
        for (i = 0; i < 15; i = i + 1) begin
          #(`DELAY*2)
            cpu_we = 1'b1;
          cpu_oe = 1'b0;
          cpu_din = $random;
          error_data_status = $random;
          error_length_status = $random;
          rx_num_packet = $random;
          cpu_adrr = i;
        end
      cpu_we = 1'b0;
      #(`DELAY*7)
        for (i = 0; i < 15; i = i + 1) begin
          #(`DELAY*4)
            cpu_oe = 1'b1;

          cpu_adrr = i;
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
      $monitor("TIME = %d, Read = %b, Write = %b, In = %h",$time, cpu_oe, cpu_we, cpu_din);
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