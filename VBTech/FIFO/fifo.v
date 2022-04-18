module fifo(data_out,fifo_full, fifo_empty, fifo_threshold, fifo_overflow, fifo_underflow,clk, rst_n, wr, rd, data_in);  

  parameter DATA_WIDTH = 8;

  input wr, rd, clk, rst_n;  
  input[DATA_WIDTH-1:0] data_in;  

  output[DATA_WIDTH-1:0] data_out;  
  output fifo_full, fifo_empty, fifo_threshold, fifo_overflow, fifo_underflow; 

  wire[DATA_WIDTH/2:0] wptr,rptr;  
  wire fifo_we,fifo_rd;   

  write_pointer #((DATA_WIDTH/2)+1)WRITE(wptr,fifo_we,wr,fifo_full,clk,rst_n);  
  read_pointer  #((DATA_WIDTH/2)+1)READ(rptr,fifo_rd,rd,fifo_empty,clk,rst_n);  
  ram_fifo      #(DATA_WIDTH)      RAM (data_out, data_in, clk,fifo_we, wptr,rptr);  
  status_signal #((DATA_WIDTH/2)+1)SIGNAL(fifo_full, fifo_empty, fifo_threshold, fifo_overflow, fifo_underflow, wr, rd, fifo_we, fifo_rd, wptr,rptr,clk,rst_n);  
 
 endmodule  
