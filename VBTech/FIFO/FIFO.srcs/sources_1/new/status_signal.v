module status_signal(
        fifo_full, 
        fifo_empty, 
        fifo_threshold, 
        fifo_overflow,
        fifo_underflow, 
        wr, 
        rd, 
        fifo_we, 
        fifo_rd, 
        wptr,
        rptr,
        clk,
        rst_n
        );
  
  parameter DATA_WIDTH = 5;

  input wr, rd, fifo_we, fifo_rd,clk,rst_n;  
  input[DATA_WIDTH-1:0] wptr, rptr;  

  output fifo_full, fifo_empty, fifo_threshold, fifo_overflow, fifo_underflow
  ;  
  wire fbit_comp, overflow_set, underflow_set;  
  wire pointer_equal;  
  wire[DATA_WIDTH-1:0] pointer_result;  
  reg fifo_full, fifo_empty, fifo_threshold, fifo_overflow, fifo_underflow;  

  assign fbit_comp = wptr[DATA_WIDTH-1] ^ rptr[DATA_WIDTH-1]; 
  assign pointer_equal = (wptr[DATA_WIDTH-2:0] - rptr[DATA_WIDTH-2:0]) ? 0:1;  
  assign pointer_result = wptr[DATA_WIDTH-1:0] - rptr[DATA_WIDTH-1:0];  
  assign overflow_set = fifo_full & wr;  
  assign underflow_set = fifo_empty&rd;  

  always @(*)  
  begin  
   fifo_full =fbit_comp & pointer_equal;  
   fifo_empty = (~fbit_comp) & pointer_equal;  
   fifo_threshold = (pointer_result[DATA_WIDTH-1]||pointer_result[DATA_WIDTH-2]) ? 1:0;  
  end  

  always @(posedge clk or negedge rst_n)  
  begin  
  if(~rst_n) fifo_overflow <= 1'b0;  
  else if((overflow_set == 1'b1)&&(fifo_rd == 1'b0))  
   fifo_overflow <= 1'b1;  
   else if(fifo_rd)  
    fifo_overflow <= 1'b0;  
    else  
     fifo_overflow <= fifo_overflow;  
  end 

  always @(posedge clk or negedge rst_n)  
  begin  
  if(~rst_n) fifo_underflow <= 1'b0;  
  else if((underflow_set == 1'b1)&&(fifo_we == 1'b0))  
   fifo_underflow <= 1'b1;  
   else if(fifo_we)  
    fifo_underflow <= 1'b0;  
    else  
     fifo_underflow <= fifo_underflow;  
  end 

 endmodule