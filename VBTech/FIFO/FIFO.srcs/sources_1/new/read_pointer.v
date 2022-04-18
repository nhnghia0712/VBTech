 module read_pointer(rptr,fifo_rd,rd,fifo_empty,clk,rst_n);  

  parameter DATA_WIDTH = 5;

  input rd,fifo_empty,clk,rst_n;  

  output[DATA_WIDTH-1:0] rptr;  
  output fifo_rd; 

  reg[DATA_WIDTH-1:0] rptr;  

  assign fifo_rd = (~fifo_empty)& rd;  

  always @(posedge clk or negedge rst_n)  
  begin  
   if(~rst_n) rptr <= 5'd0;  
   else if(fifo_rd)  
    rptr <= rptr + 5'd1;  
   else  
    rptr <= rptr;  
  end  
 endmodule  