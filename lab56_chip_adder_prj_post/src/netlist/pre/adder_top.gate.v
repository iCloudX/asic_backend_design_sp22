/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : P-2019.03
// Date      : Tue Mar 15 16:22:46 2022
/////////////////////////////////////////////////////////////


module full_adder_15 ( a, b, c_in, sum, c_out );
  input a, b, c_in;
  output sum, c_out;
  wire   n1, n2;

  OAI21X1 U1 ( .A0(b), .A1(a), .B0(c_in), .Y(n1) );
  OAI2BB1X1 U2 ( .A0N(a), .A1N(b), .B0(n1), .Y(c_out) );
  XOR2X1 U3 ( .A(a), .B(c_in), .Y(n2) );
  XOR2X1 U4 ( .A(n2), .B(b), .Y(sum) );
endmodule


module full_adder_0 ( a, b, c_in, sum, c_out );
  input a, b, c_in;
  output sum, c_out;
  wire   n1, n2;

  OAI21X1 U1 ( .A0(a), .A1(b), .B0(c_in), .Y(n1) );
  OAI2BB1X1 U2 ( .A0N(b), .A1N(a), .B0(n1), .Y(c_out) );
  XNOR2X1 U3 ( .A(a), .B(b), .Y(n2) );
  XNOR2X1 U4 ( .A(c_in), .B(n2), .Y(sum) );
endmodule


module full_adder_1 ( a, b, c_in, sum, c_out );
  input a, b, c_in;
  output sum, c_out;
  wire   n1, n2;

  OAI21X1 U1 ( .A0(a), .A1(b), .B0(c_in), .Y(n1) );
  OAI2BB1X1 U2 ( .A0N(b), .A1N(a), .B0(n1), .Y(c_out) );
  XNOR2X1 U3 ( .A(a), .B(b), .Y(n2) );
  XNOR2X1 U4 ( .A(c_in), .B(n2), .Y(sum) );
endmodule


module full_adder_2 ( a, b, c_in, sum, c_out );
  input a, b, c_in;
  output sum, c_out;
  wire   n1, n2;

  OAI21X1 U1 ( .A0(a), .A1(b), .B0(c_in), .Y(n1) );
  OAI2BB1X1 U2 ( .A0N(b), .A1N(a), .B0(n1), .Y(c_out) );
  XNOR2X1 U3 ( .A(a), .B(b), .Y(n2) );
  XNOR2X1 U4 ( .A(c_in), .B(n2), .Y(sum) );
endmodule


module full_adder_3 ( a, b, c_in, sum, c_out );
  input a, b, c_in;
  output sum, c_out;
  wire   n1, n2;

  OAI21X1 U1 ( .A0(a), .A1(b), .B0(c_in), .Y(n1) );
  OAI2BB1X1 U2 ( .A0N(b), .A1N(a), .B0(n1), .Y(c_out) );
  XNOR2X1 U3 ( .A(a), .B(b), .Y(n2) );
  XNOR2X1 U4 ( .A(c_in), .B(n2), .Y(sum) );
endmodule


module full_adder_4 ( a, b, c_in, sum, c_out );
  input a, b, c_in;
  output sum, c_out;
  wire   n1, n2;

  OAI21X1 U1 ( .A0(a), .A1(b), .B0(c_in), .Y(n1) );
  OAI2BB1X1 U2 ( .A0N(b), .A1N(a), .B0(n1), .Y(c_out) );
  XNOR2X1 U3 ( .A(a), .B(b), .Y(n2) );
  XNOR2X1 U4 ( .A(c_in), .B(n2), .Y(sum) );
endmodule


module full_adder_5 ( a, b, c_in, sum, c_out );
  input a, b, c_in;
  output sum, c_out;
  wire   n1, n2;

  OAI21X1 U1 ( .A0(a), .A1(b), .B0(c_in), .Y(n1) );
  OAI2BB1X1 U2 ( .A0N(b), .A1N(a), .B0(n1), .Y(c_out) );
  XNOR2X1 U3 ( .A(a), .B(b), .Y(n2) );
  XNOR2X1 U4 ( .A(c_in), .B(n2), .Y(sum) );
endmodule


module full_adder_6 ( a, b, c_in, sum, c_out );
  input a, b, c_in;
  output sum, c_out;
  wire   n1, n2;

  OAI21X1 U1 ( .A0(a), .A1(b), .B0(c_in), .Y(n1) );
  OAI2BB1X1 U2 ( .A0N(b), .A1N(a), .B0(n1), .Y(c_out) );
  XNOR2X1 U3 ( .A(a), .B(b), .Y(n2) );
  XNOR2X1 U4 ( .A(c_in), .B(n2), .Y(sum) );
endmodule


module full_adder_7 ( a, b, c_in, sum, c_out );
  input a, b, c_in;
  output sum, c_out;
  wire   n1, n2;

  OAI21X1 U1 ( .A0(a), .A1(b), .B0(c_in), .Y(n1) );
  OAI2BB1X1 U2 ( .A0N(b), .A1N(a), .B0(n1), .Y(c_out) );
  XNOR2X1 U3 ( .A(a), .B(b), .Y(n2) );
  XNOR2X1 U4 ( .A(c_in), .B(n2), .Y(sum) );
endmodule


module full_adder_8 ( a, b, c_in, sum, c_out );
  input a, b, c_in;
  output sum, c_out;
  wire   n1, n2;

  OAI21X1 U1 ( .A0(a), .A1(b), .B0(c_in), .Y(n1) );
  OAI2BB1X1 U2 ( .A0N(b), .A1N(a), .B0(n1), .Y(c_out) );
  XNOR2X1 U3 ( .A(a), .B(b), .Y(n2) );
  XNOR2X1 U4 ( .A(c_in), .B(n2), .Y(sum) );
endmodule


module full_adder_9 ( a, b, c_in, sum, c_out );
  input a, b, c_in;
  output sum, c_out;
  wire   n1, n2;

  OAI21X1 U1 ( .A0(a), .A1(b), .B0(c_in), .Y(n1) );
  OAI2BB1X1 U2 ( .A0N(b), .A1N(a), .B0(n1), .Y(c_out) );
  XNOR2X1 U3 ( .A(a), .B(b), .Y(n2) );
  XNOR2X1 U4 ( .A(c_in), .B(n2), .Y(sum) );
endmodule


module full_adder_10 ( a, b, c_in, sum, c_out );
  input a, b, c_in;
  output sum, c_out;
  wire   n1, n2;

  OAI21X1 U1 ( .A0(a), .A1(b), .B0(c_in), .Y(n1) );
  OAI2BB1X1 U2 ( .A0N(b), .A1N(a), .B0(n1), .Y(c_out) );
  XNOR2X1 U3 ( .A(a), .B(b), .Y(n2) );
  XNOR2X1 U4 ( .A(c_in), .B(n2), .Y(sum) );
endmodule


module full_adder_11 ( a, b, c_in, sum, c_out );
  input a, b, c_in;
  output sum, c_out;
  wire   n1, n2;

  OAI21X1 U1 ( .A0(a), .A1(b), .B0(c_in), .Y(n1) );
  OAI2BB1X1 U2 ( .A0N(b), .A1N(a), .B0(n1), .Y(c_out) );
  XNOR2X1 U3 ( .A(a), .B(b), .Y(n2) );
  XNOR2X1 U4 ( .A(c_in), .B(n2), .Y(sum) );
endmodule


module full_adder_12 ( a, b, c_in, sum, c_out );
  input a, b, c_in;
  output sum, c_out;
  wire   n1, n2;

  OAI21X1 U1 ( .A0(a), .A1(b), .B0(c_in), .Y(n1) );
  OAI2BB1X1 U2 ( .A0N(b), .A1N(a), .B0(n1), .Y(c_out) );
  XNOR2X1 U3 ( .A(a), .B(b), .Y(n2) );
  XNOR2X1 U4 ( .A(c_in), .B(n2), .Y(sum) );
endmodule


module full_adder_13 ( a, b, c_in, sum, c_out );
  input a, b, c_in;
  output sum, c_out;
  wire   n1, n2;

  OAI21X1 U1 ( .A0(a), .A1(b), .B0(c_in), .Y(n1) );
  OAI2BB1X1 U2 ( .A0N(b), .A1N(a), .B0(n1), .Y(c_out) );
  XNOR2X1 U3 ( .A(a), .B(b), .Y(n2) );
  XNOR2X1 U4 ( .A(c_in), .B(n2), .Y(sum) );
endmodule


module full_adder_14 ( a, b, c_in, sum, c_out );
  input a, b, c_in;
  output sum, c_out;
  wire   n1, n2;

  OAI21X1 U1 ( .A0(a), .A1(b), .B0(c_in), .Y(n1) );
  OAI2BB1X1 U2 ( .A0N(b), .A1N(a), .B0(n1), .Y(c_out) );
  XNOR2X1 U3 ( .A(a), .B(b), .Y(n2) );
  XNOR2X1 U4 ( .A(c_in), .B(n2), .Y(sum) );
endmodule


module ripple_carry_adder_16 ( clk, rst_n, a_in, b_in, carry_in, sum_out, 
        carry_out );
  input [15:0] a_in;
  input [15:0] b_in;
  output [15:0] sum_out;
  input clk, rst_n, carry_in;
  output carry_out;

  wire   [15:0] sum;
  wire   [15:0] carry;

  full_adder_15 u0 ( .a(a_in[0]), .b(b_in[0]), .c_in(carry_in), .sum(sum[0]), 
        .c_out(carry[0]) );
  full_adder_14 u1 ( .a(a_in[1]), .b(b_in[1]), .c_in(carry[0]), .sum(sum[1]), 
        .c_out(carry[1]) );
  full_adder_13 u2 ( .a(a_in[2]), .b(b_in[2]), .c_in(carry[1]), .sum(sum[2]), 
        .c_out(carry[2]) );
  full_adder_12 u3 ( .a(a_in[3]), .b(b_in[3]), .c_in(carry[2]), .sum(sum[3]), 
        .c_out(carry[3]) );
  full_adder_11 u4 ( .a(a_in[4]), .b(b_in[4]), .c_in(carry[3]), .sum(sum[4]), 
        .c_out(carry[4]) );
  full_adder_10 u5 ( .a(a_in[5]), .b(b_in[5]), .c_in(carry[4]), .sum(sum[5]), 
        .c_out(carry[5]) );
  full_adder_9 u6 ( .a(a_in[6]), .b(b_in[6]), .c_in(carry[5]), .sum(sum[6]), 
        .c_out(carry[6]) );
  full_adder_8 u7 ( .a(a_in[7]), .b(b_in[7]), .c_in(carry[6]), .sum(sum[7]), 
        .c_out(carry[7]) );
  full_adder_7 u8 ( .a(a_in[8]), .b(b_in[8]), .c_in(carry[7]), .sum(sum[8]), 
        .c_out(carry[8]) );
  full_adder_6 u9 ( .a(a_in[9]), .b(b_in[9]), .c_in(carry[8]), .sum(sum[9]), 
        .c_out(carry[9]) );
  full_adder_5 u10 ( .a(a_in[10]), .b(b_in[10]), .c_in(carry[9]), .sum(sum[10]), .c_out(carry[10]) );
  full_adder_4 u11 ( .a(a_in[11]), .b(b_in[11]), .c_in(carry[10]), .sum(
        sum[11]), .c_out(carry[11]) );
  full_adder_3 u12 ( .a(a_in[12]), .b(b_in[12]), .c_in(carry[11]), .sum(
        sum[12]), .c_out(carry[12]) );
  full_adder_2 u13 ( .a(a_in[13]), .b(b_in[13]), .c_in(carry[12]), .sum(
        sum[13]), .c_out(carry[13]) );
  full_adder_1 u14 ( .a(a_in[14]), .b(b_in[14]), .c_in(carry[13]), .sum(
        sum[14]), .c_out(carry[14]) );
  full_adder_0 u15 ( .a(a_in[15]), .b(b_in[15]), .c_in(carry[14]), .sum(
        sum[15]), .c_out(carry[15]) );
  DFFRHQX1 sum_out_reg_15_ ( .D(sum[15]), .CK(clk), .RN(rst_n), .Q(sum_out[15]) );
  DFFRHQX1 sum_out_reg_14_ ( .D(sum[14]), .CK(clk), .RN(rst_n), .Q(sum_out[14]) );
  DFFRHQX1 sum_out_reg_13_ ( .D(sum[13]), .CK(clk), .RN(rst_n), .Q(sum_out[13]) );
  DFFRHQX1 sum_out_reg_12_ ( .D(sum[12]), .CK(clk), .RN(rst_n), .Q(sum_out[12]) );
  DFFRHQX1 sum_out_reg_11_ ( .D(sum[11]), .CK(clk), .RN(rst_n), .Q(sum_out[11]) );
  DFFRHQX1 sum_out_reg_10_ ( .D(sum[10]), .CK(clk), .RN(rst_n), .Q(sum_out[10]) );
  DFFRHQX1 sum_out_reg_9_ ( .D(sum[9]), .CK(clk), .RN(rst_n), .Q(sum_out[9])
         );
  DFFRHQX1 sum_out_reg_8_ ( .D(sum[8]), .CK(clk), .RN(rst_n), .Q(sum_out[8])
         );
  DFFRHQX1 sum_out_reg_7_ ( .D(sum[7]), .CK(clk), .RN(rst_n), .Q(sum_out[7])
         );
  DFFRHQX1 sum_out_reg_6_ ( .D(sum[6]), .CK(clk), .RN(rst_n), .Q(sum_out[6])
         );
  DFFRHQX1 sum_out_reg_5_ ( .D(sum[5]), .CK(clk), .RN(rst_n), .Q(sum_out[5])
         );
  DFFRHQX1 sum_out_reg_4_ ( .D(sum[4]), .CK(clk), .RN(rst_n), .Q(sum_out[4])
         );
  DFFRHQX1 sum_out_reg_3_ ( .D(sum[3]), .CK(clk), .RN(rst_n), .Q(sum_out[3])
         );
  DFFRHQX1 sum_out_reg_2_ ( .D(sum[2]), .CK(clk), .RN(rst_n), .Q(sum_out[2])
         );
  DFFRHQX1 sum_out_reg_1_ ( .D(sum[1]), .CK(clk), .RN(rst_n), .Q(sum_out[1])
         );
  DFFRHQX1 sum_out_reg_0_ ( .D(sum[0]), .CK(clk), .RN(rst_n), .Q(sum_out[0])
         );
  DFFRHQX1 carry_out_reg ( .D(carry[15]), .CK(clk), .RN(rst_n), .Q(carry_out)
         );
endmodule


module cla_logic_7 ( p, g, c_in, pg, gg, c_out );
  input [3:0] p;
  input [3:0] g;
  output [3:0] c_out;
  input c_in;
  output pg, gg;
  wire   n1, n2, n3, n4, n5, n6;

  INVXL U1 ( .A(n2), .Y(c_out[1]) );
  INVXL U2 ( .A(n6), .Y(gg) );
  INVXL U3 ( .A(n1), .Y(c_out[0]) );
  INVXL U4 ( .A(n3), .Y(c_out[2]) );
  AND4X1 U5 ( .A(p[2]), .B(p[1]), .C(p[3]), .D(p[0]), .Y(pg) );
  AOI21X1 U6 ( .A0(p[0]), .A1(c_in), .B0(g[0]), .Y(n1) );
  AOI21X1 U7 ( .A0(p[1]), .A1(c_out[0]), .B0(g[1]), .Y(n2) );
  AOI21X1 U8 ( .A0(p[2]), .A1(c_out[1]), .B0(g[2]), .Y(n3) );
  AOI21X1 U9 ( .A0(g[0]), .A1(p[1]), .B0(g[1]), .Y(n4) );
  NOR2BX1 U10 ( .AN(p[2]), .B(n4), .Y(n5) );
  AOI221X1 U11 ( .A0(g[2]), .A1(p[3]), .B0(n5), .B1(p[3]), .C0(g[3]), .Y(n6)
         );
endmodule


module cla_4bit_7 ( a_in, b_in, carry_in, pg_out, gg_out, sum_out, carry_out
 );
  input [3:0] a_in;
  input [3:0] b_in;
  output [3:0] sum_out;
  input carry_in;
  output pg_out, gg_out, carry_out;
  wire   n1, n2, n3, n4, SYNOPSYS_UNCONNECTED_1;
  wire   [3:0] g;
  wire   [2:0] carry_gen;

  cla_logic_7 u4_cla_logic_bit ( .p({n1, n3, n4, n2}), .g(g), .c_in(carry_in), 
        .pg(pg_out), .gg(gg_out), .c_out({SYNOPSYS_UNCONNECTED_1, carry_gen})
         );
  AND2X1 U1 ( .A(a_in[3]), .B(b_in[3]), .Y(g[3]) );
  AND2X1 U2 ( .A(a_in[1]), .B(b_in[1]), .Y(g[1]) );
  AND2X1 U3 ( .A(a_in[2]), .B(b_in[2]), .Y(g[2]) );
  AND2X1 U4 ( .A(a_in[0]), .B(b_in[0]), .Y(g[0]) );
  AOI2BB1X1 U5 ( .A0N(a_in[3]), .A1N(b_in[3]), .B0(g[3]), .Y(n1) );
  AOI2BB1X1 U6 ( .A0N(a_in[0]), .A1N(b_in[0]), .B0(g[0]), .Y(n2) );
  AOI2BB1X1 U7 ( .A0N(a_in[1]), .A1N(b_in[1]), .B0(g[1]), .Y(n4) );
  AOI2BB1X1 U8 ( .A0N(a_in[2]), .A1N(b_in[2]), .B0(g[2]), .Y(n3) );
  XOR2X1 U9 ( .A(carry_gen[0]), .B(n4), .Y(sum_out[1]) );
  XOR2X1 U10 ( .A(carry_gen[1]), .B(n3), .Y(sum_out[2]) );
  AOI2BB2X1 U11 ( .B0(carry_in), .B1(n2), .A0N(n2), .A1N(carry_in), .Y(
        sum_out[0]) );
  XOR2X1 U12 ( .A(carry_gen[2]), .B(n1), .Y(sum_out[3]) );
endmodule


module cla_logic_9 ( p, g, c_in, pg, gg, c_out );
  input [3:0] p;
  input [3:0] g;
  output [3:0] c_out;
  input c_in;
  output pg, gg;
  wire   n1, n2, n3, n4;

  INVXL U1 ( .A(n2), .Y(c_out[1]) );
  INVXL U2 ( .A(n1), .Y(c_out[0]) );
  INVXL U3 ( .A(n3), .Y(c_out[2]) );
  INVXL U4 ( .A(n4), .Y(c_out[3]) );
  AOI21X1 U5 ( .A0(c_in), .A1(p[0]), .B0(g[0]), .Y(n1) );
  AOI21X1 U6 ( .A0(p[1]), .A1(c_out[0]), .B0(g[1]), .Y(n2) );
  AOI21X1 U7 ( .A0(p[2]), .A1(c_out[1]), .B0(g[2]), .Y(n3) );
  AOI21X1 U8 ( .A0(p[3]), .A1(c_out[2]), .B0(g[3]), .Y(n4) );
endmodule


module cla_logic_4 ( p, g, c_in, pg, gg, c_out );
  input [3:0] p;
  input [3:0] g;
  output [3:0] c_out;
  input c_in;
  output pg, gg;
  wire   n1, n2, n3, n4, n5, n6;

  INVXL U1 ( .A(n2), .Y(c_out[1]) );
  INVXL U2 ( .A(n1), .Y(c_out[0]) );
  INVXL U3 ( .A(n5), .Y(gg) );
  INVXL U4 ( .A(n6), .Y(c_out[2]) );
  AND4X1 U5 ( .A(p[2]), .B(p[1]), .C(p[3]), .D(p[0]), .Y(pg) );
  AOI21X1 U6 ( .A0(p[0]), .A1(c_in), .B0(g[0]), .Y(n1) );
  AOI21X1 U7 ( .A0(p[1]), .A1(c_out[0]), .B0(g[1]), .Y(n2) );
  AOI21X1 U8 ( .A0(g[0]), .A1(p[1]), .B0(g[1]), .Y(n3) );
  NOR2BX1 U9 ( .AN(p[2]), .B(n3), .Y(n4) );
  AOI221X1 U10 ( .A0(g[2]), .A1(p[3]), .B0(n4), .B1(p[3]), .C0(g[3]), .Y(n5)
         );
  AOI21X1 U11 ( .A0(p[2]), .A1(c_out[1]), .B0(g[2]), .Y(n6) );
endmodule


module cla_4bit_4 ( a_in, b_in, carry_in, pg_out, gg_out, sum_out, carry_out
 );
  input [3:0] a_in;
  input [3:0] b_in;
  output [3:0] sum_out;
  input carry_in;
  output pg_out, gg_out, carry_out;
  wire   n5, n6, n7, n8, SYNOPSYS_UNCONNECTED_1;
  wire   [3:0] g;
  wire   [2:0] carry_gen;

  cla_logic_4 u4_cla_logic_bit ( .p({n8, n6, n5, n7}), .g(g), .c_in(carry_in), 
        .pg(pg_out), .gg(gg_out), .c_out({SYNOPSYS_UNCONNECTED_1, carry_gen})
         );
  AND2X1 U1 ( .A(a_in[0]), .B(b_in[0]), .Y(g[0]) );
  AND2X1 U2 ( .A(a_in[1]), .B(b_in[1]), .Y(g[1]) );
  AND2X1 U3 ( .A(a_in[2]), .B(b_in[2]), .Y(g[2]) );
  AND2X1 U4 ( .A(a_in[3]), .B(b_in[3]), .Y(g[3]) );
  AOI2BB1X1 U5 ( .A0N(a_in[3]), .A1N(b_in[3]), .B0(g[3]), .Y(n8) );
  AOI2BB1X1 U6 ( .A0N(a_in[0]), .A1N(b_in[0]), .B0(g[0]), .Y(n7) );
  AOI2BB1X1 U7 ( .A0N(a_in[1]), .A1N(b_in[1]), .B0(g[1]), .Y(n5) );
  AOI2BB1X1 U8 ( .A0N(a_in[2]), .A1N(b_in[2]), .B0(g[2]), .Y(n6) );
  XOR2X1 U9 ( .A(carry_gen[0]), .B(n5), .Y(sum_out[1]) );
  XOR2X1 U10 ( .A(carry_gen[1]), .B(n6), .Y(sum_out[2]) );
  AOI2BB2X1 U11 ( .B0(carry_in), .B1(n7), .A0N(n7), .A1N(carry_in), .Y(
        sum_out[0]) );
  XOR2X1 U12 ( .A(carry_gen[2]), .B(n8), .Y(sum_out[3]) );
endmodule


module cla_logic_5 ( p, g, c_in, pg, gg, c_out );
  input [3:0] p;
  input [3:0] g;
  output [3:0] c_out;
  input c_in;
  output pg, gg;
  wire   n1, n2, n3, n4, n5, n6;

  INVXL U1 ( .A(n2), .Y(c_out[1]) );
  INVXL U2 ( .A(n6), .Y(gg) );
  INVXL U3 ( .A(n1), .Y(c_out[0]) );
  INVXL U4 ( .A(n3), .Y(c_out[2]) );
  AND4X1 U5 ( .A(p[2]), .B(p[1]), .C(p[3]), .D(p[0]), .Y(pg) );
  AOI21X1 U6 ( .A0(p[0]), .A1(c_in), .B0(g[0]), .Y(n1) );
  AOI21X1 U7 ( .A0(p[1]), .A1(c_out[0]), .B0(g[1]), .Y(n2) );
  AOI21X1 U8 ( .A0(p[2]), .A1(c_out[1]), .B0(g[2]), .Y(n3) );
  AOI21X1 U9 ( .A0(g[0]), .A1(p[1]), .B0(g[1]), .Y(n4) );
  NOR2BX1 U10 ( .AN(p[2]), .B(n4), .Y(n5) );
  AOI221X1 U11 ( .A0(g[2]), .A1(p[3]), .B0(n5), .B1(p[3]), .C0(g[3]), .Y(n6)
         );
endmodule


module cla_4bit_5 ( a_in, b_in, carry_in, pg_out, gg_out, sum_out, carry_out
 );
  input [3:0] a_in;
  input [3:0] b_in;
  output [3:0] sum_out;
  input carry_in;
  output pg_out, gg_out, carry_out;
  wire   n5, n6, n7, n8, SYNOPSYS_UNCONNECTED_1;
  wire   [3:0] g;
  wire   [2:0] carry_gen;

  cla_logic_5 u4_cla_logic_bit ( .p({n8, n6, n5, n7}), .g(g), .c_in(carry_in), 
        .pg(pg_out), .gg(gg_out), .c_out({SYNOPSYS_UNCONNECTED_1, carry_gen})
         );
  AND2X1 U1 ( .A(a_in[3]), .B(b_in[3]), .Y(g[3]) );
  AND2X1 U2 ( .A(a_in[0]), .B(b_in[0]), .Y(g[0]) );
  AND2X1 U3 ( .A(a_in[1]), .B(b_in[1]), .Y(g[1]) );
  AND2X1 U4 ( .A(a_in[2]), .B(b_in[2]), .Y(g[2]) );
  AOI2BB1X1 U5 ( .A0N(a_in[0]), .A1N(b_in[0]), .B0(g[0]), .Y(n7) );
  AOI2BB1X1 U6 ( .A0N(a_in[3]), .A1N(b_in[3]), .B0(g[3]), .Y(n8) );
  AOI2BB1X1 U7 ( .A0N(a_in[1]), .A1N(b_in[1]), .B0(g[1]), .Y(n5) );
  AOI2BB1X1 U8 ( .A0N(a_in[2]), .A1N(b_in[2]), .B0(g[2]), .Y(n6) );
  XOR2X1 U9 ( .A(carry_gen[0]), .B(n5), .Y(sum_out[1]) );
  XOR2X1 U10 ( .A(carry_gen[1]), .B(n6), .Y(sum_out[2]) );
  AOI2BB2X1 U11 ( .B0(carry_in), .B1(n7), .A0N(n7), .A1N(carry_in), .Y(
        sum_out[0]) );
  XOR2X1 U12 ( .A(carry_gen[2]), .B(n8), .Y(sum_out[3]) );
endmodule


module cla_logic_6 ( p, g, c_in, pg, gg, c_out );
  input [3:0] p;
  input [3:0] g;
  output [3:0] c_out;
  input c_in;
  output pg, gg;
  wire   n1, n2, n3, n4, n5, n6;

  INVXL U1 ( .A(n6), .Y(gg) );
  INVXL U2 ( .A(n2), .Y(c_out[1]) );
  INVXL U3 ( .A(n1), .Y(c_out[0]) );
  INVXL U4 ( .A(n3), .Y(c_out[2]) );
  AND4X1 U5 ( .A(p[2]), .B(p[1]), .C(p[3]), .D(p[0]), .Y(pg) );
  AOI21X1 U6 ( .A0(p[0]), .A1(c_in), .B0(g[0]), .Y(n1) );
  AOI21X1 U7 ( .A0(p[1]), .A1(c_out[0]), .B0(g[1]), .Y(n2) );
  AOI21X1 U8 ( .A0(p[2]), .A1(c_out[1]), .B0(g[2]), .Y(n3) );
  AOI21X1 U9 ( .A0(g[0]), .A1(p[1]), .B0(g[1]), .Y(n4) );
  NOR2BX1 U10 ( .AN(p[2]), .B(n4), .Y(n5) );
  AOI221X1 U11 ( .A0(g[2]), .A1(p[3]), .B0(n5), .B1(p[3]), .C0(g[3]), .Y(n6)
         );
endmodule


module cla_4bit_6 ( a_in, b_in, carry_in, pg_out, gg_out, sum_out, carry_out
 );
  input [3:0] a_in;
  input [3:0] b_in;
  output [3:0] sum_out;
  input carry_in;
  output pg_out, gg_out, carry_out;
  wire   n5, n6, n7, n8, SYNOPSYS_UNCONNECTED_1;
  wire   [3:0] g;
  wire   [2:0] carry_gen;

  cla_logic_6 u4_cla_logic_bit ( .p({n8, n6, n5, n7}), .g(g), .c_in(carry_in), 
        .pg(pg_out), .gg(gg_out), .c_out({SYNOPSYS_UNCONNECTED_1, carry_gen})
         );
  AND2X1 U1 ( .A(a_in[3]), .B(b_in[3]), .Y(g[3]) );
  AND2X1 U2 ( .A(a_in[0]), .B(b_in[0]), .Y(g[0]) );
  AND2X1 U3 ( .A(a_in[1]), .B(b_in[1]), .Y(g[1]) );
  AND2X1 U4 ( .A(a_in[2]), .B(b_in[2]), .Y(g[2]) );
  AOI2BB1X1 U5 ( .A0N(a_in[0]), .A1N(b_in[0]), .B0(g[0]), .Y(n7) );
  AOI2BB1X1 U6 ( .A0N(a_in[3]), .A1N(b_in[3]), .B0(g[3]), .Y(n8) );
  AOI2BB1X1 U7 ( .A0N(a_in[1]), .A1N(b_in[1]), .B0(g[1]), .Y(n5) );
  AOI2BB1X1 U8 ( .A0N(a_in[2]), .A1N(b_in[2]), .B0(g[2]), .Y(n6) );
  XOR2X1 U9 ( .A(carry_gen[0]), .B(n5), .Y(sum_out[1]) );
  XOR2X1 U10 ( .A(carry_gen[1]), .B(n6), .Y(sum_out[2]) );
  AOI2BB2X1 U11 ( .B0(carry_in), .B1(n7), .A0N(n7), .A1N(carry_in), .Y(
        sum_out[0]) );
  XOR2X1 U12 ( .A(carry_gen[2]), .B(n8), .Y(sum_out[3]) );
endmodule


module carry_lookahead_adder_16_1 ( clk, rst_n, a_in, b_in, carry_in, sum_out, 
        carry_out );
  input [15:0] a_in;
  input [15:0] b_in;
  output [15:0] sum_out;
  input clk, rst_n, carry_in;
  output carry_out;

  wire   [3:0] pg;
  wire   [3:0] gg;
  wire   [15:0] sum;
  wire   [3:0] carry_gen;

  cla_4bit_7 u0_cla_4bit ( .a_in(a_in[3:0]), .b_in(b_in[3:0]), .carry_in(
        carry_in), .pg_out(pg[0]), .gg_out(gg[0]), .sum_out(sum[3:0]) );
  cla_4bit_6 u1_cla_4bit ( .a_in(a_in[7:4]), .b_in(b_in[7:4]), .carry_in(
        carry_gen[0]), .pg_out(pg[1]), .gg_out(gg[1]), .sum_out(sum[7:4]) );
  cla_4bit_5 u2_cla_4bit ( .a_in(a_in[11:8]), .b_in(b_in[11:8]), .carry_in(
        carry_gen[1]), .pg_out(pg[2]), .gg_out(gg[2]), .sum_out(sum[11:8]) );
  cla_4bit_4 u3_cla_4bit ( .a_in(a_in[15:12]), .b_in(b_in[15:12]), .carry_in(
        carry_gen[2]), .pg_out(pg[3]), .gg_out(gg[3]), .sum_out(sum[15:12]) );
  cla_logic_9 u4_cla_logic ( .p(pg), .g(gg), .c_in(carry_in), .c_out(carry_gen) );
  DFFRHQX1 sum_out_reg_15_ ( .D(sum[15]), .CK(clk), .RN(rst_n), .Q(sum_out[15]) );
  DFFRHQX1 sum_out_reg_14_ ( .D(sum[14]), .CK(clk), .RN(rst_n), .Q(sum_out[14]) );
  DFFRHQX1 sum_out_reg_13_ ( .D(sum[13]), .CK(clk), .RN(rst_n), .Q(sum_out[13]) );
  DFFRHQX1 sum_out_reg_12_ ( .D(sum[12]), .CK(clk), .RN(rst_n), .Q(sum_out[12]) );
  DFFRHQX1 sum_out_reg_11_ ( .D(sum[11]), .CK(clk), .RN(rst_n), .Q(sum_out[11]) );
  DFFRHQX1 sum_out_reg_10_ ( .D(sum[10]), .CK(clk), .RN(rst_n), .Q(sum_out[10]) );
  DFFRHQX1 sum_out_reg_9_ ( .D(sum[9]), .CK(clk), .RN(rst_n), .Q(sum_out[9])
         );
  DFFRHQX1 sum_out_reg_8_ ( .D(sum[8]), .CK(clk), .RN(rst_n), .Q(sum_out[8])
         );
  DFFRHQX1 sum_out_reg_7_ ( .D(sum[7]), .CK(clk), .RN(rst_n), .Q(sum_out[7])
         );
  DFFRHQX1 sum_out_reg_6_ ( .D(sum[6]), .CK(clk), .RN(rst_n), .Q(sum_out[6])
         );
  DFFRHQX1 sum_out_reg_5_ ( .D(sum[5]), .CK(clk), .RN(rst_n), .Q(sum_out[5])
         );
  DFFRHQX1 sum_out_reg_4_ ( .D(sum[4]), .CK(clk), .RN(rst_n), .Q(sum_out[4])
         );
  DFFRHQX1 sum_out_reg_3_ ( .D(sum[3]), .CK(clk), .RN(rst_n), .Q(sum_out[3])
         );
  DFFRHQX1 sum_out_reg_2_ ( .D(sum[2]), .CK(clk), .RN(rst_n), .Q(sum_out[2])
         );
  DFFRHQX1 sum_out_reg_1_ ( .D(sum[1]), .CK(clk), .RN(rst_n), .Q(sum_out[1])
         );
  DFFRHQX1 sum_out_reg_0_ ( .D(sum[0]), .CK(clk), .RN(rst_n), .Q(sum_out[0])
         );
  DFFRHQX1 carry_out_reg ( .D(carry_gen[3]), .CK(clk), .RN(rst_n), .Q(
        carry_out) );
endmodule


module cla_logic_8 ( p, g, c_in, pg, gg, c_out );
  input [3:0] p;
  input [3:0] g;
  output [3:0] c_out;
  input c_in;
  output pg, gg;
  wire   n1, n2, n3, n4;

  INVXL U1 ( .A(n2), .Y(c_out[1]) );
  INVXL U2 ( .A(n1), .Y(c_out[0]) );
  INVXL U3 ( .A(n3), .Y(c_out[2]) );
  INVXL U4 ( .A(n4), .Y(c_out[3]) );
  AOI21X1 U5 ( .A0(c_in), .A1(p[0]), .B0(g[0]), .Y(n1) );
  AOI21X1 U6 ( .A0(p[1]), .A1(c_out[0]), .B0(g[1]), .Y(n2) );
  AOI21X1 U7 ( .A0(p[2]), .A1(c_out[1]), .B0(g[2]), .Y(n3) );
  AOI21X1 U8 ( .A0(p[3]), .A1(c_out[2]), .B0(g[3]), .Y(n4) );
endmodule


module cla_logic_0 ( p, g, c_in, pg, gg, c_out );
  input [3:0] p;
  input [3:0] g;
  output [3:0] c_out;
  input c_in;
  output pg, gg;
  wire   n1, n2, n3, n4, n5, n6;

  INVXL U1 ( .A(n5), .Y(c_out[1]) );
  INVXL U2 ( .A(n1), .Y(c_out[0]) );
  INVXL U3 ( .A(n4), .Y(gg) );
  INVXL U4 ( .A(n6), .Y(c_out[2]) );
  AND4X1 U5 ( .A(p[2]), .B(p[1]), .C(p[3]), .D(p[0]), .Y(pg) );
  AOI21X1 U6 ( .A0(p[0]), .A1(c_in), .B0(g[0]), .Y(n1) );
  AOI21X1 U7 ( .A0(g[0]), .A1(p[1]), .B0(g[1]), .Y(n2) );
  NOR2BX1 U8 ( .AN(p[2]), .B(n2), .Y(n3) );
  AOI221X1 U9 ( .A0(g[2]), .A1(p[3]), .B0(n3), .B1(p[3]), .C0(g[3]), .Y(n4) );
  AOI21X1 U10 ( .A0(p[1]), .A1(c_out[0]), .B0(g[1]), .Y(n5) );
  AOI21X1 U11 ( .A0(p[2]), .A1(c_out[1]), .B0(g[2]), .Y(n6) );
endmodule


module cla_4bit_0 ( a_in, b_in, carry_in, pg_out, gg_out, sum_out, carry_out
 );
  input [3:0] a_in;
  input [3:0] b_in;
  output [3:0] sum_out;
  input carry_in;
  output pg_out, gg_out, carry_out;
  wire   n5, n6, n7, n8, SYNOPSYS_UNCONNECTED_1;
  wire   [3:0] g;
  wire   [2:0] carry_gen;

  cla_logic_0 u4_cla_logic_bit ( .p({n8, n6, n5, n7}), .g(g), .c_in(carry_in), 
        .pg(pg_out), .gg(gg_out), .c_out({SYNOPSYS_UNCONNECTED_1, carry_gen})
         );
  AND2X1 U1 ( .A(a_in[0]), .B(b_in[0]), .Y(g[0]) );
  AND2X1 U2 ( .A(a_in[1]), .B(b_in[1]), .Y(g[1]) );
  AND2X1 U3 ( .A(a_in[2]), .B(b_in[2]), .Y(g[2]) );
  AND2X1 U4 ( .A(a_in[3]), .B(b_in[3]), .Y(g[3]) );
  AOI2BB1X1 U5 ( .A0N(a_in[3]), .A1N(b_in[3]), .B0(g[3]), .Y(n8) );
  AOI2BB1X1 U6 ( .A0N(a_in[0]), .A1N(b_in[0]), .B0(g[0]), .Y(n7) );
  AOI2BB1X1 U7 ( .A0N(a_in[1]), .A1N(b_in[1]), .B0(g[1]), .Y(n5) );
  AOI2BB1X1 U8 ( .A0N(a_in[2]), .A1N(b_in[2]), .B0(g[2]), .Y(n6) );
  XOR2X1 U9 ( .A(carry_gen[0]), .B(n5), .Y(sum_out[1]) );
  XOR2X1 U10 ( .A(carry_gen[1]), .B(n6), .Y(sum_out[2]) );
  AOI2BB2X1 U11 ( .B0(carry_in), .B1(n7), .A0N(n7), .A1N(carry_in), .Y(
        sum_out[0]) );
  XOR2X1 U12 ( .A(carry_gen[2]), .B(n8), .Y(sum_out[3]) );
endmodule


module cla_logic_1 ( p, g, c_in, pg, gg, c_out );
  input [3:0] p;
  input [3:0] g;
  output [3:0] c_out;
  input c_in;
  output pg, gg;
  wire   n1, n2, n3, n4, n5, n6;

  INVXL U1 ( .A(n2), .Y(c_out[1]) );
  INVXL U2 ( .A(n6), .Y(gg) );
  INVXL U3 ( .A(n1), .Y(c_out[0]) );
  INVXL U4 ( .A(n3), .Y(c_out[2]) );
  AND4X1 U5 ( .A(p[2]), .B(p[1]), .C(p[3]), .D(p[0]), .Y(pg) );
  AOI21X1 U6 ( .A0(p[0]), .A1(c_in), .B0(g[0]), .Y(n1) );
  AOI21X1 U7 ( .A0(p[1]), .A1(c_out[0]), .B0(g[1]), .Y(n2) );
  AOI21X1 U8 ( .A0(p[2]), .A1(c_out[1]), .B0(g[2]), .Y(n3) );
  AOI21X1 U9 ( .A0(g[0]), .A1(p[1]), .B0(g[1]), .Y(n4) );
  NOR2BX1 U10 ( .AN(p[2]), .B(n4), .Y(n5) );
  AOI221X1 U11 ( .A0(g[2]), .A1(p[3]), .B0(n5), .B1(p[3]), .C0(g[3]), .Y(n6)
         );
endmodule


module cla_4bit_1 ( a_in, b_in, carry_in, pg_out, gg_out, sum_out, carry_out
 );
  input [3:0] a_in;
  input [3:0] b_in;
  output [3:0] sum_out;
  input carry_in;
  output pg_out, gg_out, carry_out;
  wire   n5, n6, n7, n8, SYNOPSYS_UNCONNECTED_1;
  wire   [3:0] g;
  wire   [2:0] carry_gen;

  cla_logic_1 u4_cla_logic_bit ( .p({n8, n6, n5, n7}), .g(g), .c_in(carry_in), 
        .pg(pg_out), .gg(gg_out), .c_out({SYNOPSYS_UNCONNECTED_1, carry_gen})
         );
  AND2X1 U1 ( .A(a_in[3]), .B(b_in[3]), .Y(g[3]) );
  AND2X1 U2 ( .A(a_in[0]), .B(b_in[0]), .Y(g[0]) );
  AND2X1 U3 ( .A(a_in[1]), .B(b_in[1]), .Y(g[1]) );
  AND2X1 U4 ( .A(a_in[2]), .B(b_in[2]), .Y(g[2]) );
  AOI2BB1X1 U5 ( .A0N(a_in[0]), .A1N(b_in[0]), .B0(g[0]), .Y(n7) );
  AOI2BB1X1 U6 ( .A0N(a_in[3]), .A1N(b_in[3]), .B0(g[3]), .Y(n8) );
  AOI2BB1X1 U7 ( .A0N(a_in[1]), .A1N(b_in[1]), .B0(g[1]), .Y(n5) );
  AOI2BB1X1 U8 ( .A0N(a_in[2]), .A1N(b_in[2]), .B0(g[2]), .Y(n6) );
  XOR2X1 U9 ( .A(carry_gen[0]), .B(n5), .Y(sum_out[1]) );
  XOR2X1 U10 ( .A(carry_gen[1]), .B(n6), .Y(sum_out[2]) );
  AOI2BB2X1 U11 ( .B0(carry_in), .B1(n7), .A0N(n7), .A1N(carry_in), .Y(
        sum_out[0]) );
  XOR2X1 U12 ( .A(carry_gen[2]), .B(n8), .Y(sum_out[3]) );
endmodule


module cla_logic_2 ( p, g, c_in, pg, gg, c_out );
  input [3:0] p;
  input [3:0] g;
  output [3:0] c_out;
  input c_in;
  output pg, gg;
  wire   n1, n2, n3, n4, n5, n6;

  INVXL U1 ( .A(n6), .Y(gg) );
  INVXL U2 ( .A(n2), .Y(c_out[1]) );
  INVXL U3 ( .A(n1), .Y(c_out[0]) );
  INVXL U4 ( .A(n3), .Y(c_out[2]) );
  AND4X1 U5 ( .A(p[2]), .B(p[1]), .C(p[3]), .D(p[0]), .Y(pg) );
  AOI21X1 U6 ( .A0(p[0]), .A1(c_in), .B0(g[0]), .Y(n1) );
  AOI21X1 U7 ( .A0(p[1]), .A1(c_out[0]), .B0(g[1]), .Y(n2) );
  AOI21X1 U8 ( .A0(p[2]), .A1(c_out[1]), .B0(g[2]), .Y(n3) );
  AOI21X1 U9 ( .A0(g[0]), .A1(p[1]), .B0(g[1]), .Y(n4) );
  NOR2BX1 U10 ( .AN(p[2]), .B(n4), .Y(n5) );
  AOI221X1 U11 ( .A0(g[2]), .A1(p[3]), .B0(n5), .B1(p[3]), .C0(g[3]), .Y(n6)
         );
endmodule


module cla_4bit_2 ( a_in, b_in, carry_in, pg_out, gg_out, sum_out, carry_out
 );
  input [3:0] a_in;
  input [3:0] b_in;
  output [3:0] sum_out;
  input carry_in;
  output pg_out, gg_out, carry_out;
  wire   n5, n6, n7, n8, SYNOPSYS_UNCONNECTED_1;
  wire   [3:0] g;
  wire   [2:0] carry_gen;

  cla_logic_2 u4_cla_logic_bit ( .p({n8, n6, n5, n7}), .g(g), .c_in(carry_in), 
        .pg(pg_out), .gg(gg_out), .c_out({SYNOPSYS_UNCONNECTED_1, carry_gen})
         );
  AND2X1 U1 ( .A(a_in[3]), .B(b_in[3]), .Y(g[3]) );
  AND2X1 U2 ( .A(a_in[0]), .B(b_in[0]), .Y(g[0]) );
  AND2X1 U3 ( .A(a_in[1]), .B(b_in[1]), .Y(g[1]) );
  AND2X1 U4 ( .A(a_in[2]), .B(b_in[2]), .Y(g[2]) );
  AOI2BB1X1 U5 ( .A0N(a_in[0]), .A1N(b_in[0]), .B0(g[0]), .Y(n7) );
  AOI2BB1X1 U6 ( .A0N(a_in[3]), .A1N(b_in[3]), .B0(g[3]), .Y(n8) );
  AOI2BB1X1 U7 ( .A0N(a_in[1]), .A1N(b_in[1]), .B0(g[1]), .Y(n5) );
  AOI2BB1X1 U8 ( .A0N(a_in[2]), .A1N(b_in[2]), .B0(g[2]), .Y(n6) );
  XOR2X1 U9 ( .A(carry_gen[0]), .B(n5), .Y(sum_out[1]) );
  XOR2X1 U10 ( .A(carry_gen[1]), .B(n6), .Y(sum_out[2]) );
  AOI2BB2X1 U11 ( .B0(carry_in), .B1(n7), .A0N(n7), .A1N(carry_in), .Y(
        sum_out[0]) );
  XOR2X1 U12 ( .A(carry_gen[2]), .B(n8), .Y(sum_out[3]) );
endmodule


module cla_logic_3 ( p, g, c_in, pg, gg, c_out );
  input [3:0] p;
  input [3:0] g;
  output [3:0] c_out;
  input c_in;
  output pg, gg;
  wire   n1, n2, n3, n4, n5, n6;

  INVXL U1 ( .A(n2), .Y(c_out[1]) );
  INVXL U2 ( .A(n6), .Y(gg) );
  INVXL U3 ( .A(n1), .Y(c_out[0]) );
  INVXL U4 ( .A(n3), .Y(c_out[2]) );
  AND4X1 U5 ( .A(p[2]), .B(p[1]), .C(p[3]), .D(p[0]), .Y(pg) );
  AOI21X1 U6 ( .A0(p[0]), .A1(c_in), .B0(g[0]), .Y(n1) );
  AOI21X1 U7 ( .A0(p[1]), .A1(c_out[0]), .B0(g[1]), .Y(n2) );
  AOI21X1 U8 ( .A0(p[2]), .A1(c_out[1]), .B0(g[2]), .Y(n3) );
  AOI21X1 U9 ( .A0(g[0]), .A1(p[1]), .B0(g[1]), .Y(n4) );
  NOR2BX1 U10 ( .AN(p[2]), .B(n4), .Y(n5) );
  AOI221X1 U11 ( .A0(g[2]), .A1(p[3]), .B0(n5), .B1(p[3]), .C0(g[3]), .Y(n6)
         );
endmodule


module cla_4bit_3 ( a_in, b_in, carry_in, pg_out, gg_out, sum_out, carry_out
 );
  input [3:0] a_in;
  input [3:0] b_in;
  output [3:0] sum_out;
  input carry_in;
  output pg_out, gg_out, carry_out;
  wire   n5, n6, n7, n8, SYNOPSYS_UNCONNECTED_1;
  wire   [3:0] g;
  wire   [2:0] carry_gen;

  cla_logic_3 u4_cla_logic_bit ( .p({n8, n6, n5, n7}), .g(g), .c_in(carry_in), 
        .pg(pg_out), .gg(gg_out), .c_out({SYNOPSYS_UNCONNECTED_1, carry_gen})
         );
  AND2X1 U1 ( .A(a_in[3]), .B(b_in[3]), .Y(g[3]) );
  AND2X1 U2 ( .A(a_in[1]), .B(b_in[1]), .Y(g[1]) );
  AND2X1 U3 ( .A(a_in[2]), .B(b_in[2]), .Y(g[2]) );
  AND2X1 U4 ( .A(a_in[0]), .B(b_in[0]), .Y(g[0]) );
  AOI2BB1X1 U5 ( .A0N(a_in[0]), .A1N(b_in[0]), .B0(g[0]), .Y(n7) );
  AOI2BB1X1 U6 ( .A0N(a_in[3]), .A1N(b_in[3]), .B0(g[3]), .Y(n8) );
  AOI2BB1X1 U7 ( .A0N(a_in[1]), .A1N(b_in[1]), .B0(g[1]), .Y(n5) );
  AOI2BB1X1 U8 ( .A0N(a_in[2]), .A1N(b_in[2]), .B0(g[2]), .Y(n6) );
  XOR2X1 U9 ( .A(carry_gen[0]), .B(n5), .Y(sum_out[1]) );
  XOR2X1 U10 ( .A(carry_gen[1]), .B(n6), .Y(sum_out[2]) );
  AOI2BB2X1 U11 ( .B0(carry_in), .B1(n7), .A0N(n7), .A1N(carry_in), .Y(
        sum_out[0]) );
  XOR2X1 U12 ( .A(carry_gen[2]), .B(n8), .Y(sum_out[3]) );
endmodule


module carry_lookahead_adder_16_0 ( clk, rst_n, a_in, b_in, carry_in, sum_out, 
        carry_out );
  input [15:0] a_in;
  input [15:0] b_in;
  output [15:0] sum_out;
  input clk, rst_n, carry_in;
  output carry_out;

  wire   [3:0] pg;
  wire   [3:0] gg;
  wire   [15:0] sum;
  wire   [3:0] carry_gen;

  cla_4bit_3 u0_cla_4bit ( .a_in(a_in[3:0]), .b_in(b_in[3:0]), .carry_in(
        carry_in), .pg_out(pg[0]), .gg_out(gg[0]), .sum_out(sum[3:0]) );
  cla_4bit_2 u1_cla_4bit ( .a_in(a_in[7:4]), .b_in(b_in[7:4]), .carry_in(
        carry_gen[0]), .pg_out(pg[1]), .gg_out(gg[1]), .sum_out(sum[7:4]) );
  cla_4bit_1 u2_cla_4bit ( .a_in(a_in[11:8]), .b_in(b_in[11:8]), .carry_in(
        carry_gen[1]), .pg_out(pg[2]), .gg_out(gg[2]), .sum_out(sum[11:8]) );
  cla_4bit_0 u3_cla_4bit ( .a_in(a_in[15:12]), .b_in(b_in[15:12]), .carry_in(
        carry_gen[2]), .pg_out(pg[3]), .gg_out(gg[3]), .sum_out(sum[15:12]) );
  cla_logic_8 u4_cla_logic ( .p(pg), .g(gg), .c_in(carry_in), .c_out(carry_gen) );
  DFFRHQX1 sum_out_reg_11_ ( .D(sum[11]), .CK(clk), .RN(rst_n), .Q(sum_out[11]) );
  DFFRHQX1 sum_out_reg_15_ ( .D(sum[15]), .CK(clk), .RN(rst_n), .Q(sum_out[15]) );
  DFFRHQX1 sum_out_reg_14_ ( .D(sum[14]), .CK(clk), .RN(rst_n), .Q(sum_out[14]) );
  DFFRHQX1 sum_out_reg_13_ ( .D(sum[13]), .CK(clk), .RN(rst_n), .Q(sum_out[13]) );
  DFFRHQX1 sum_out_reg_12_ ( .D(sum[12]), .CK(clk), .RN(rst_n), .Q(sum_out[12]) );
  DFFRHQX1 sum_out_reg_10_ ( .D(sum[10]), .CK(clk), .RN(rst_n), .Q(sum_out[10]) );
  DFFRHQX1 sum_out_reg_9_ ( .D(sum[9]), .CK(clk), .RN(rst_n), .Q(sum_out[9])
         );
  DFFRHQX1 sum_out_reg_8_ ( .D(sum[8]), .CK(clk), .RN(rst_n), .Q(sum_out[8])
         );
  DFFRHQX1 sum_out_reg_7_ ( .D(sum[7]), .CK(clk), .RN(rst_n), .Q(sum_out[7])
         );
  DFFRHQX1 sum_out_reg_6_ ( .D(sum[6]), .CK(clk), .RN(rst_n), .Q(sum_out[6])
         );
  DFFRHQX1 sum_out_reg_5_ ( .D(sum[5]), .CK(clk), .RN(rst_n), .Q(sum_out[5])
         );
  DFFRHQX1 sum_out_reg_4_ ( .D(sum[4]), .CK(clk), .RN(rst_n), .Q(sum_out[4])
         );
  DFFRHQX1 sum_out_reg_3_ ( .D(sum[3]), .CK(clk), .RN(rst_n), .Q(sum_out[3])
         );
  DFFRHQX1 sum_out_reg_2_ ( .D(sum[2]), .CK(clk), .RN(rst_n), .Q(sum_out[2])
         );
  DFFRHQX1 sum_out_reg_1_ ( .D(sum[1]), .CK(clk), .RN(rst_n), .Q(sum_out[1])
         );
  DFFRHQX1 sum_out_reg_0_ ( .D(sum[0]), .CK(clk), .RN(rst_n), .Q(sum_out[0])
         );
  DFFRHQX1 carry_out_reg ( .D(carry_gen[3]), .CK(clk), .RN(rst_n), .Q(
        carry_out) );
endmodule


module adder_top ( clk, rst_n, a_in, b_in, carry_in, sum_out, carry_out );
  input [15:0] a_in;
  input [15:0] b_in;
  output [15:0] sum_out;
  input clk, rst_n, carry_in;
  output carry_out;
  wire   n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31,
         n32, n33, n34, c_in_reg, rca_carry_w, cla_carry_out;
  wire   [15:0] a_reg;
  wire   [15:0] b_reg;
  wire   [15:0] rca_sum_w;
  wire   [15:0] a_reg_d;
  wire   [15:0] b_reg_d;
  wire   [15:0] cla_sum;
  wire   [15:0] b_reg_d2;

  ripple_carry_adder_16 u_rca16 ( .clk(clk), .rst_n(rst_n), .a_in(a_reg), 
        .b_in(b_reg), .carry_in(c_in_reg), .sum_out(rca_sum_w), .carry_out(
        rca_carry_w) );
  carry_lookahead_adder_16_1 u1_cla16 ( .clk(clk), .rst_n(rst_n), .a_in(
        rca_sum_w), .b_in(a_reg_d), .carry_in(rca_carry_w), .sum_out(cla_sum), 
        .carry_out(cla_carry_out) );
  carry_lookahead_adder_16_0 u2_cla16 ( .clk(clk), .rst_n(rst_n), .a_in(
        cla_sum), .b_in(b_reg_d2), .carry_in(cla_carry_out), .sum_out({n18, 
        n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, 
        n33}), .carry_out(n34) );
  DFFRHQX1 b_reg_reg_15_ ( .D(b_in[15]), .CK(clk), .RN(rst_n), .Q(b_reg[15])
         );
  DFFRHQX1 b_reg_reg_14_ ( .D(b_in[14]), .CK(clk), .RN(rst_n), .Q(b_reg[14])
         );
  DFFRHQX1 b_reg_reg_13_ ( .D(b_in[13]), .CK(clk), .RN(rst_n), .Q(b_reg[13])
         );
  DFFRHQX1 b_reg_reg_12_ ( .D(b_in[12]), .CK(clk), .RN(rst_n), .Q(b_reg[12])
         );
  DFFRHQX1 b_reg_reg_11_ ( .D(b_in[11]), .CK(clk), .RN(rst_n), .Q(b_reg[11])
         );
  DFFRHQX1 b_reg_reg_10_ ( .D(b_in[10]), .CK(clk), .RN(rst_n), .Q(b_reg[10])
         );
  DFFRHQX1 b_reg_reg_9_ ( .D(b_in[9]), .CK(clk), .RN(rst_n), .Q(b_reg[9]) );
  DFFRHQX1 b_reg_reg_8_ ( .D(b_in[8]), .CK(clk), .RN(rst_n), .Q(b_reg[8]) );
  DFFRHQX1 b_reg_reg_7_ ( .D(b_in[7]), .CK(clk), .RN(rst_n), .Q(b_reg[7]) );
  DFFRHQX1 b_reg_reg_6_ ( .D(b_in[6]), .CK(clk), .RN(rst_n), .Q(b_reg[6]) );
  DFFRHQX1 b_reg_reg_5_ ( .D(b_in[5]), .CK(clk), .RN(rst_n), .Q(b_reg[5]) );
  DFFRHQX1 b_reg_reg_4_ ( .D(b_in[4]), .CK(clk), .RN(rst_n), .Q(b_reg[4]) );
  DFFRHQX1 b_reg_reg_3_ ( .D(b_in[3]), .CK(clk), .RN(rst_n), .Q(b_reg[3]) );
  DFFRHQX1 b_reg_reg_2_ ( .D(b_in[2]), .CK(clk), .RN(rst_n), .Q(b_reg[2]) );
  DFFRHQX1 b_reg_reg_1_ ( .D(b_in[1]), .CK(clk), .RN(rst_n), .Q(b_reg[1]) );
  DFFRHQX1 b_reg_reg_0_ ( .D(b_in[0]), .CK(clk), .RN(rst_n), .Q(b_reg[0]) );
  DFFRHQX1 c_in_reg_reg ( .D(carry_in), .CK(clk), .RN(rst_n), .Q(c_in_reg) );
  DFFRHQX1 a_reg_reg_15_ ( .D(a_in[15]), .CK(clk), .RN(rst_n), .Q(a_reg[15])
         );
  DFFRHQX1 a_reg_reg_14_ ( .D(a_in[14]), .CK(clk), .RN(rst_n), .Q(a_reg[14])
         );
  DFFRHQX1 a_reg_reg_13_ ( .D(a_in[13]), .CK(clk), .RN(rst_n), .Q(a_reg[13])
         );
  DFFRHQX1 a_reg_reg_12_ ( .D(a_in[12]), .CK(clk), .RN(rst_n), .Q(a_reg[12])
         );
  DFFRHQX1 a_reg_reg_11_ ( .D(a_in[11]), .CK(clk), .RN(rst_n), .Q(a_reg[11])
         );
  DFFRHQX1 a_reg_reg_10_ ( .D(a_in[10]), .CK(clk), .RN(rst_n), .Q(a_reg[10])
         );
  DFFRHQX1 a_reg_reg_9_ ( .D(a_in[9]), .CK(clk), .RN(rst_n), .Q(a_reg[9]) );
  DFFRHQX1 a_reg_reg_8_ ( .D(a_in[8]), .CK(clk), .RN(rst_n), .Q(a_reg[8]) );
  DFFRHQX1 a_reg_reg_7_ ( .D(a_in[7]), .CK(clk), .RN(rst_n), .Q(a_reg[7]) );
  DFFRHQX1 a_reg_reg_6_ ( .D(a_in[6]), .CK(clk), .RN(rst_n), .Q(a_reg[6]) );
  DFFRHQX1 a_reg_reg_5_ ( .D(a_in[5]), .CK(clk), .RN(rst_n), .Q(a_reg[5]) );
  DFFRHQX1 a_reg_reg_4_ ( .D(a_in[4]), .CK(clk), .RN(rst_n), .Q(a_reg[4]) );
  DFFRHQX1 a_reg_reg_3_ ( .D(a_in[3]), .CK(clk), .RN(rst_n), .Q(a_reg[3]) );
  DFFRHQX1 a_reg_reg_2_ ( .D(a_in[2]), .CK(clk), .RN(rst_n), .Q(a_reg[2]) );
  DFFRHQX1 a_reg_reg_1_ ( .D(a_in[1]), .CK(clk), .RN(rst_n), .Q(a_reg[1]) );
  DFFRHQX1 a_reg_reg_0_ ( .D(a_in[0]), .CK(clk), .RN(rst_n), .Q(a_reg[0]) );
  DFFRHQX1 a_reg_d_reg_15_ ( .D(a_reg[15]), .CK(clk), .RN(rst_n), .Q(
        a_reg_d[15]) );
  DFFRHQX1 a_reg_d_reg_14_ ( .D(a_reg[14]), .CK(clk), .RN(rst_n), .Q(
        a_reg_d[14]) );
  DFFRHQX1 a_reg_d_reg_13_ ( .D(a_reg[13]), .CK(clk), .RN(rst_n), .Q(
        a_reg_d[13]) );
  DFFRHQX1 a_reg_d_reg_12_ ( .D(a_reg[12]), .CK(clk), .RN(rst_n), .Q(
        a_reg_d[12]) );
  DFFRHQX1 a_reg_d_reg_11_ ( .D(a_reg[11]), .CK(clk), .RN(rst_n), .Q(
        a_reg_d[11]) );
  DFFRHQX1 a_reg_d_reg_10_ ( .D(a_reg[10]), .CK(clk), .RN(rst_n), .Q(
        a_reg_d[10]) );
  DFFRHQX1 a_reg_d_reg_9_ ( .D(a_reg[9]), .CK(clk), .RN(rst_n), .Q(a_reg_d[9])
         );
  DFFRHQX1 a_reg_d_reg_8_ ( .D(a_reg[8]), .CK(clk), .RN(rst_n), .Q(a_reg_d[8])
         );
  DFFRHQX1 a_reg_d_reg_7_ ( .D(a_reg[7]), .CK(clk), .RN(rst_n), .Q(a_reg_d[7])
         );
  DFFRHQX1 a_reg_d_reg_6_ ( .D(a_reg[6]), .CK(clk), .RN(rst_n), .Q(a_reg_d[6])
         );
  DFFRHQX1 a_reg_d_reg_5_ ( .D(a_reg[5]), .CK(clk), .RN(rst_n), .Q(a_reg_d[5])
         );
  DFFRHQX1 a_reg_d_reg_4_ ( .D(a_reg[4]), .CK(clk), .RN(rst_n), .Q(a_reg_d[4])
         );
  DFFRHQX1 a_reg_d_reg_3_ ( .D(a_reg[3]), .CK(clk), .RN(rst_n), .Q(a_reg_d[3])
         );
  DFFRHQX1 a_reg_d_reg_2_ ( .D(a_reg[2]), .CK(clk), .RN(rst_n), .Q(a_reg_d[2])
         );
  DFFRHQX1 a_reg_d_reg_1_ ( .D(a_reg[1]), .CK(clk), .RN(rst_n), .Q(a_reg_d[1])
         );
  DFFRHQX1 a_reg_d_reg_0_ ( .D(a_reg[0]), .CK(clk), .RN(rst_n), .Q(a_reg_d[0])
         );
  DFFRHQX1 b_reg_d_reg_15_ ( .D(b_reg[15]), .CK(clk), .RN(rst_n), .Q(
        b_reg_d[15]) );
  DFFRHQX1 b_reg_d_reg_14_ ( .D(b_reg[14]), .CK(clk), .RN(rst_n), .Q(
        b_reg_d[14]) );
  DFFRHQX1 b_reg_d_reg_13_ ( .D(b_reg[13]), .CK(clk), .RN(rst_n), .Q(
        b_reg_d[13]) );
  DFFRHQX1 b_reg_d_reg_12_ ( .D(b_reg[12]), .CK(clk), .RN(rst_n), .Q(
        b_reg_d[12]) );
  DFFRHQX1 b_reg_d_reg_11_ ( .D(b_reg[11]), .CK(clk), .RN(rst_n), .Q(
        b_reg_d[11]) );
  DFFRHQX1 b_reg_d_reg_10_ ( .D(b_reg[10]), .CK(clk), .RN(rst_n), .Q(
        b_reg_d[10]) );
  DFFRHQX1 b_reg_d_reg_9_ ( .D(b_reg[9]), .CK(clk), .RN(rst_n), .Q(b_reg_d[9])
         );
  DFFRHQX1 b_reg_d_reg_8_ ( .D(b_reg[8]), .CK(clk), .RN(rst_n), .Q(b_reg_d[8])
         );
  DFFRHQX1 b_reg_d_reg_7_ ( .D(b_reg[7]), .CK(clk), .RN(rst_n), .Q(b_reg_d[7])
         );
  DFFRHQX1 b_reg_d_reg_6_ ( .D(b_reg[6]), .CK(clk), .RN(rst_n), .Q(b_reg_d[6])
         );
  DFFRHQX1 b_reg_d_reg_5_ ( .D(b_reg[5]), .CK(clk), .RN(rst_n), .Q(b_reg_d[5])
         );
  DFFRHQX1 b_reg_d_reg_4_ ( .D(b_reg[4]), .CK(clk), .RN(rst_n), .Q(b_reg_d[4])
         );
  DFFRHQX1 b_reg_d_reg_3_ ( .D(b_reg[3]), .CK(clk), .RN(rst_n), .Q(b_reg_d[3])
         );
  DFFRHQX1 b_reg_d_reg_2_ ( .D(b_reg[2]), .CK(clk), .RN(rst_n), .Q(b_reg_d[2])
         );
  DFFRHQX1 b_reg_d_reg_1_ ( .D(b_reg[1]), .CK(clk), .RN(rst_n), .Q(b_reg_d[1])
         );
  DFFRHQX1 b_reg_d_reg_0_ ( .D(b_reg[0]), .CK(clk), .RN(rst_n), .Q(b_reg_d[0])
         );
  DFFRHQX1 b_reg_d2_reg_15_ ( .D(b_reg_d[15]), .CK(clk), .RN(rst_n), .Q(
        b_reg_d2[15]) );
  DFFRHQX1 b_reg_d2_reg_14_ ( .D(b_reg_d[14]), .CK(clk), .RN(rst_n), .Q(
        b_reg_d2[14]) );
  DFFRHQX1 b_reg_d2_reg_13_ ( .D(b_reg_d[13]), .CK(clk), .RN(rst_n), .Q(
        b_reg_d2[13]) );
  DFFRHQX1 b_reg_d2_reg_12_ ( .D(b_reg_d[12]), .CK(clk), .RN(rst_n), .Q(
        b_reg_d2[12]) );
  DFFRHQX1 b_reg_d2_reg_11_ ( .D(b_reg_d[11]), .CK(clk), .RN(rst_n), .Q(
        b_reg_d2[11]) );
  DFFRHQX1 b_reg_d2_reg_10_ ( .D(b_reg_d[10]), .CK(clk), .RN(rst_n), .Q(
        b_reg_d2[10]) );
  DFFRHQX1 b_reg_d2_reg_9_ ( .D(b_reg_d[9]), .CK(clk), .RN(rst_n), .Q(
        b_reg_d2[9]) );
  DFFRHQX1 b_reg_d2_reg_8_ ( .D(b_reg_d[8]), .CK(clk), .RN(rst_n), .Q(
        b_reg_d2[8]) );
  DFFRHQX1 b_reg_d2_reg_7_ ( .D(b_reg_d[7]), .CK(clk), .RN(rst_n), .Q(
        b_reg_d2[7]) );
  DFFRHQX1 b_reg_d2_reg_6_ ( .D(b_reg_d[6]), .CK(clk), .RN(rst_n), .Q(
        b_reg_d2[6]) );
  DFFRHQX1 b_reg_d2_reg_5_ ( .D(b_reg_d[5]), .CK(clk), .RN(rst_n), .Q(
        b_reg_d2[5]) );
  DFFRHQX1 b_reg_d2_reg_4_ ( .D(b_reg_d[4]), .CK(clk), .RN(rst_n), .Q(
        b_reg_d2[4]) );
  DFFRHQX1 b_reg_d2_reg_3_ ( .D(b_reg_d[3]), .CK(clk), .RN(rst_n), .Q(
        b_reg_d2[3]) );
  DFFRHQX1 b_reg_d2_reg_2_ ( .D(b_reg_d[2]), .CK(clk), .RN(rst_n), .Q(
        b_reg_d2[2]) );
  DFFRHQX1 b_reg_d2_reg_1_ ( .D(b_reg_d[1]), .CK(clk), .RN(rst_n), .Q(
        b_reg_d2[1]) );
  DFFRHQX1 b_reg_d2_reg_0_ ( .D(b_reg_d[0]), .CK(clk), .RN(rst_n), .Q(
        b_reg_d2[0]) );
  CLKBUFX2 U3 ( .A(n34), .Y(carry_out) );
  CLKBUFX2 U4 ( .A(n20), .Y(sum_out[13]) );
  CLKBUFX2 U5 ( .A(n33), .Y(sum_out[0]) );
  CLKBUFX2 U6 ( .A(n32), .Y(sum_out[1]) );
  CLKBUFX2 U7 ( .A(n31), .Y(sum_out[2]) );
  CLKBUFX2 U8 ( .A(n30), .Y(sum_out[3]) );
  CLKBUFX2 U9 ( .A(n29), .Y(sum_out[4]) );
  CLKBUFX2 U10 ( .A(n28), .Y(sum_out[5]) );
  CLKBUFX2 U11 ( .A(n27), .Y(sum_out[6]) );
  CLKBUFX2 U12 ( .A(n26), .Y(sum_out[7]) );
  CLKBUFX2 U13 ( .A(n25), .Y(sum_out[8]) );
  CLKBUFX2 U14 ( .A(n24), .Y(sum_out[9]) );
  CLKBUFX2 U15 ( .A(n23), .Y(sum_out[10]) );
  CLKBUFX2 U16 ( .A(n22), .Y(sum_out[11]) );
  CLKBUFX2 U17 ( .A(n21), .Y(sum_out[12]) );
  CLKBUFX2 U18 ( .A(n19), .Y(sum_out[14]) );
  CLKBUFX2 U19 ( .A(n18), .Y(sum_out[15]) );
endmodule

