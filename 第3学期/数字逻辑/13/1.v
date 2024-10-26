module top_module (
    input clk,
    input reset,
    output reg [3:0]q
);

always @(posedge clk) begin
    if(reset)
    q<=4'b1;
    else begin
        if(q==9)
        q<=4'b1;
        else
        q<=q+1'b1;
    end
end

    
endmodule