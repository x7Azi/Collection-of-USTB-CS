module top_module( 
    input wire [15:0] a, b, c, d, e, f, g, h, i,
    input wire [3:0] sel,
    output reg [15:0] out );
    always @(*)begin 
        case(sel)
            0:out = a;
            1:out = b;
            2:out = c;
            3:out = d;
            4:out = e;
            5:out = f;
            6:out = g;
            7:out = h;
            8:out = i;
            default:out = 16'b1111_1111_1111_1111; 
        endcase
    end
endmodule