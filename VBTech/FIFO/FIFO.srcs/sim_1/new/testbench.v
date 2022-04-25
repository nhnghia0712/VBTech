// 1. The timescale directive  
 `timescale     10 ps/ 10 ps  
// fpga4student.com: FPga projects, Verilog projects, VHDL projects
// Verilog project: Verilog code for FIFO memory
// Verilog Testbench code for FIFO memory 
 // 2. Preprocessor Directives  
 `define          DELAY 10  
 // 3. Include Statements  
 //`include     "counter_define.h"  
 module     testbench ();  
 // 4. Parameter definitions  
 parameter     ENDTIME      = 2000;  
 parameter DATA_WIDTH = 8;
 parameter DATA_DEPTH = 8;
 // 5. DUT Input regs  
 reg     Clk;  
 reg     Reset;  
 reg     Read_Write;  
 reg     [DATA_WIDTH - 1:0] In;  
 // 6. DUT Output wires  
 wire     [DATA_WIDTH - 1:0] Out;  
 wire     Empty;  
 wire     Full;  

 integer i;  
 // 7. DUT Instantiation
// fpga4student.com: FPga projects, Verilog projects, VHDL projects  
 fifo #(DATA_WIDTH,DATA_DEPTH) tb (Reset, Clk, Read_Write, In, Out, Full, Empty);  
 // 8. Initial Conditions  
 initial  
      begin  
           Clk     = 1'b0;  
           Reset     = 1'b0;  
           Read_Write     = 1'b0;  
           In     = 8'd0;  
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
           forever #`DELAY Clk = !Clk;  
      end  
 endtask  
 task reset_generator;  
      begin  
           #(`DELAY*2)  
           Reset = 1'b0;  
           # 20  
           Reset = 1'b1;  
           # 20  
           Reset = 1'b0;  
      end  
 endtask  
 task operation_process;  
      begin  
           for (i = 0; i < 17; i = i + 1) begin: WRE  
                #(`DELAY*($urandom_range(1,5)))  
                Read_Write = 1'b1;  
                In = $random;  
           end  
           #(`DELAY)  
           for (i = 0; i < 17; i = i + 1) begin: RDE  
                #(`DELAY*($urandom_range(1,5)))  
                Read_Write = 1'b0;  
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
           $monitor("TIME = %d, Read_Write = %b, In = %h",$time, Read_Write, In);  
      end  
 endtask  
 // 11. Self-Checking  
//  reg [7:0] waddr, raddr;  
//  reg [7:0] mem[64:0];  
//  always @ (posedge Clk) begin  
//       if (Reset) begin  
//            waddr     <= 6'd0;  
//       end  
//       else if (Read_Write) begin  
//            mem[waddr] <= In;  
//            waddr <= waddr + 1;  
//       end  
//       $display("TIME = %d, data_out = %d, mem = %d",$time, Out,mem[raddr]);  
//       if (Reset) raddr     <= 8'd0;  
//       else if (Read_Write & (~Empty)) raddr <= raddr + 1;  
//       if ((~Read_Write) & (~Empty)) begin  
//            if (mem[raddr]  
//             == Out) begin  
//                 $display("=== PASS ===== PASS ==== PASS ==== PASS ===");  
//                 if (raddr == 16) $finish;  
//            end  
//            else begin  
//                 $display ("=== FAIL ==== FAIL ==== FAIL ==== FAIL ===");  
//                 $display("-------------- THE SIMUALTION FINISHED ------------");  
//                 $finish;  
//            end  
//       end  
//  end  
 //12. Determines the simulation limit  
 task endsimulation;  
      begin  
           #ENDTIME  
           $display("-------------- THE SIMUALTION FINISHED ------------");  
           $finish;  
      end  
 endtask  
 endmodule  