module sqqdetb_tb ;
    reg clk;
    reg clr;
    reg din;
    wire dout;
    wire [1:0] stat;
    parameter PERIOD=40;
    seqdetb seqetb(
        .clk(clk),
        .clr(clr),
        .din(din),
        .dout(dout),
        .stat(stat)
    );
    
initial begin
    clk=0;
    forever begin
        #(PERIOD/2)clk =1;
        #(PERIOD/2)clk =0;
    end
end

initial begin
    clr=1;
    forever begin
        #50 clr=0;
    end
end

initial begin
    din=1;
    #350 din=0;
    #50 din=1;
    #100 din=0;
    #50 din=1;
end
    
endmodule
