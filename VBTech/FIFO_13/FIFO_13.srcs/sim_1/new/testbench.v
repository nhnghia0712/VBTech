// 1. The timescale directive  
 `timescale     10 ps/ 10 ps  
 `define          DELAY 1.429  
 // 3. Include Statements  
 module     testbench ();  
 // 4. Parameter definitions  
 parameter     ENDTIME      = 500;  
 parameter DATA_WIDTH = 8;
 parameter DATA_DEPTH = 13;
 parameter N = 15;
 parameter T = 7;
 // 5. DUT Input regs  
 reg     CLK;  
 reg     RESET;  
 reg     WRITE;
 reg     READ;  
 reg     [DATA_WIDTH - 1:0] DATA_IN;  
 // 6. DUT Output wires  
 wire     [DATA_WIDTH - 1:0] DATA_OUT;  
 wire     EMPTY;  
 wire     FULL;  

 integer i;  
 // 7. DUT Instantiation
 fifo #(DATA_WIDTH,DATA_DEPTH) tb (RESET, CLK, WRITE, READ, DATA_IN, DATA_OUT, FULL, EMPTY);  
 // 8. Initial Conditions  
 initial  
      begin  
           CLK     = 1'b0;  
           RESET     = 1'b0;  
           WRITE     = 1'b0;
           READ     = 1'b0;  
           DATA_IN     = 8'd0;  
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
           forever #`DELAY CLK = !CLK;  
      end  
 endtask  
 task reset_generator;  
      begin  
           #(`DELAY*2)  
           RESET = 1'b0;  
           # 4
           RESET = 1'b1;  
           # 4
           RESET = 1'b0;
           #(`DELAY*84)
           RESET = 1'b1; 
           # 2
           RESET = 1'b0;  
           #(`DELAY*53)
           RESET = 1'b1; 
           # 2
           RESET = 1'b0;  
      end  
 endtask  
 task operation_process;  
      begin  
           //TEST CASE 1:
           for (i = 0; i < N; i = i + 1) begin: WRE  
                #(`DELAY*($urandom_range(1,5)))  
                WRITE = 1'b1;  
                READ = 1'b0;  
                DATA_IN = $random;  
           end  
           #(`DELAY)  
           for (i = 0; i < N; i = i + 1) begin: RDE  
                #(`DELAY*($urandom_range(1,5)))  
                READ = 1'b1;  
                WRITE = 1'b0; 
           end 
           //TEST CASE 2:
           READ = 1'b0; 
           #(`DELAY*5)  
           for (i = 0; i < T; i = i + 1) begin   
                #(`DELAY*($urandom_range(1,5)))  
                WRITE = 1'b1;  
                READ = 1'b0;  
                DATA_IN = $random;  
           end  
           #(`DELAY)  
           for (i = 0; i < T; i = i + 1) begin
                #(`DELAY*($urandom_range(1,5)))  
                READ = 1'b1;  
                WRITE = 1'b0; 
           end 
           
           //TEST CASE 3:
           #(`DELAY*5) 
          READ = 1'b0;
          for (i = 0; i < N; i = i + 1) begin 
                #(`DELAY*($urandom_range(1,3)))  
                WRITE = 1'b1; 
                #(`DELAY*($urandom_range(1,3)))  
                WRITE = 1'b0; 
                #(`DELAY*($urandom_range(1,3))) 
                READ = 1'b0; 
                #(`DELAY*($urandom_range(1,3)))  
                DATA_IN = $random;  
           end  
           #(`DELAY*($urandom_range(1,5)))   
           for (i = 0; i < N; i = i + 1) begin
                #(`DELAY*($urandom_range(1,3)))  
                READ = 1'b1;  
                #(`DELAY*($urandom_range(1,3)))
                READ = 1'b0;  
                #(`DELAY*($urandom_range(1,3))) 
                WRITE = 1'b0; 
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
           $monitor("TIME = %d, Read = %b, Write = %b, In = %h",$time, READ, WRITE, DATA_IN);  
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