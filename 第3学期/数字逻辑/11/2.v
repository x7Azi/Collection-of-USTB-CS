module top_module(a,b,c,d,out1,out2);

input a,b,c,d;
output out1,out2;

mod_a mod_a(
.out1(out1),
.out2(out2),
.in1(a),
.in2(b),
.in3(c),
.in4(d)
);

endmodule