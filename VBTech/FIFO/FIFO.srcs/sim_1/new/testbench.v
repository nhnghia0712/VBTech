// 1. The timescale directive  
 `timescale     10 ps/ 10 ps  
 `define          DELAY 1.429  
 // 3. Include Statements  
 module     testbench ();  
 // 4. Parameter definitions  
 parameter     ENDTIME      = 200;  
 parameter DATA_WIDTH = 8;
 parameter DATA_DEPTH = 8;
  parameter N = 10;
 // 5. DUT Input regs  
 reg     Clk;  
 reg     Reset;  
 reg     Read;
 reg     Write;  
 reg     [DATA_WIDTH - 1:0] Data_In;  
 // 6. DUT Output wires  
 wire     [DATA_WIDTH - 1:0] Data_Out;  
 wire     Empty;  
 wire     Full;  

 integer i;  
 // 7. DUT Instantiation
 fifo #(DATA_WIDTH,DATA_DEPTH) tb (Reset, Clk, Read, Write, Data_In, Data_Out, Full, Empty);  
 // 8. Initial Conditions  
 initial  
      begin  
           Clk     = 1'b0;  
           Reset     = 1'b0;  
           Read     = 1'b0;
           Write     = 1'b0;  
           Data_In     = 8'd0;  
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
           # 4
           Reset = 1'b1;  
           # 4
           Reset = 1'b0;  
      end  
 endtask  
 task operation_process;  
      begin  
           for (i = 0; i < N; i = i + 1) begin: WRE  
                #(`DELAY*($urandom_range(1,5)))  
                Write = 1'b1;  
                Read = 1'b0;  
                Data_In = $random;  
           end  
           #(`DELAY)  
           for (i = 0; i < N; i = i + 1) begin: RDE  
                #(`DELAY*($urandom_range(1,5)))  
                Read = 1'b1;  
                Write = 1'b0; 
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
           $monitor("TIME = %d, Read = %b, Write = %b, In = %h",$time, Read, Write, Data_In);  
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