module status_signal
#(
    parameter DATA_DEPTH = 8
)
(
    input Reset, Clk, Read_Write,

    output reg [(DATA_DEPTH/4)+1:0] counterR,counterW,
    output Full, Empty, EnCntW
);

    wire EnCntR,Equal,Comp;

    assign EnCntR = (~Read_Write) & (~Empty);
    assign EnCntW = Read_Write & (~Full);

    assign Comp = counterR[(DATA_DEPTH/4)+1] ^ counterW[(DATA_DEPTH/4)+1];  
    assign Equal = (counterR[(DATA_DEPTH/4)] - counterW[(DATA_DEPTH/4)]) ? 0:1;
    assign Full = Comp & Equal;  
    assign Empty = (~Comp) & Equal;  

    always @(posedge Clk or negedge Reset) begin
        if (Reset) begin
            counterR <= 0;
        end
        else if(EnCntR)begin
                counterR <= counterR + 1;
        end
        else  begin
                counterR <= counterR; 
        end
    end

    always @(posedge Clk or negedge Reset) begin
        if (Reset) begin
            counterW <= 0;
        end
        else if(EnCntW)begin
                counterW <= counterW + 1;
        end
        else  begin
                counterW <= counterW; 
        end
    end

endmodule