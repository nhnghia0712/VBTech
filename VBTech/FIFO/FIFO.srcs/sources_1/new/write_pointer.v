 module write_pointer(wptr,fifo_we,wr,fifo_full,clk,rst_n);  
  parameter DATA_WIDTH = 5;

  input wr,fifo_full,clk,rst_n;  

  output[DATA_WIDTH-1:0] wptr;  
  output fifo_we;

  reg[DATA_WIDTH-1:0] wptr;  

  assign fifo_we = (~fifo_full)&wr;  

  always @(posedge clk or negedge rst_n)  
  begin  
   if(~rst_n) wptr <= 5'd0;  
   else if(fifo_we)  
    wptr <= wptr + 5'd1;  
   else  
    wptr <= wptr;  
  end  
 endmodule  