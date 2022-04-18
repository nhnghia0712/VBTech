 module ram_fifo(data_out, data_in, clk,fifo_we, wptr,rptr);  
 
  parameter DATA_WIDTH = 8;

  input[DATA_WIDTH-1:0] data_in;  
  input clk,fifo_we;  
  input[DATA_WIDTH/2:0] wptr,rptr;  

  output[DATA_WIDTH-1:0] data_out; 

  reg[DATA_WIDTH-1:0] data_out2[DATA_WIDTH-1:0];  
  wire[DATA_WIDTH-1:0] data_out;  

  always @(posedge clk)  
  begin  
   if(fifo_we)   
      data_out2[wptr[(DATA_WIDTH/2)-1:0]] <= data_in ;  
  end  
  assign data_out = data_out2[rptr[(DATA_WIDTH/2)-1:0]];  

 endmodule