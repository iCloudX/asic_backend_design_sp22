module cla_logic (
    p        ,
    g        ,
    c_in     ,
    pg       ,
    gg       ,
    c_out
);

  input  [3:0] p    ;
  input  [3:0] g    ;
  input        c_in ;
  output       pg   ;
  output       gg   ;
  output [3:0] c_out;

  assign pg = &p;
  assign gg = g[3] | (p[3] & g[2]) | (p[3] & p[2] & g[1]) | (p[3] & p[2] & p[1] & g[0]);

  assign c_out[0]    = g[0] | (p[0] & c_in);
  assign c_out[1]    = g[1] | (p[1] & g[0]) | (p[1] & p[0] & c_in);
  assign c_out[2]    = g[2] | (p[2] & g[1]) | (p[2] & p[1] & g[0]) | (p[2] & p[1] & p[0] & c_in);
  assign c_out[3]    = g[3] | (p[3] & g[2]) | (p[3] & p[2] & g[1]) | (p[3] & p[2] & p[1] & g[0]) | (p[3] & p[2] & p[1] & p[0] & c_in);

endmodule
