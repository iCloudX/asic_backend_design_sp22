module cla_4bit (
    a_in     ,
    b_in     ,
    carry_in ,
    pg_out   ,
    gg_out   ,
    sum_out  ,
    carry_out
);

  input  [3:0] a_in      ;
  input  [3:0] b_in      ;
  input        carry_in  ;
  output       pg_out    ;
  output       gg_out    ;
  output [3:0] sum_out   ;
  output       carry_out ;

  wire [3:0] p;
  wire [3:0] g;
  wire [3:0] carry_gen;

  assign p = a_in ^ b_in;
  assign g = a_in & b_in;

  cla_logic u4_cla_logic_bit(.p(p), .g(g), .c_in(carry_in), .pg(pg_out), .gg(gg_out), .c_out(carry_gen));

  assign sum_out[0]  = p[0] ^ carry_in;
  assign sum_out[1]  = p[1] ^ carry_gen[0];
  assign sum_out[2]  = p[2] ^ carry_gen[1];
  assign sum_out[3]  = p[3] ^ carry_gen[2];

  assign carry_out = carry_gen[3];

endmodule
