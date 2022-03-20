/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : P-2019.03
// Date      : Tue Mar  8 12:29:44 2022
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


module ripple_carry_adder ( clk, rst_n, a_in, b_in, carry_in, sum_out, 
        carry_out );
  input [15:0] a_in;
  input [15:0] b_in;
  output [15:0] sum_out;
  input clk, rst_n, carry_in;
  output carry_out;
  wire   c_in_reg, n1, n2;
  wire   [15:0] a_reg;
  wire   [15:0] b_reg;
  wire   [15:0] sum;
  wire   [15:0] carry;

  full_adder_15 u0 ( .a(a_reg[0]), .b(b_reg[0]), .c_in(c_in_reg), .sum(sum[0]), 
        .c_out(carry[0]) );
  full_adder_14 u1 ( .a(a_reg[1]), .b(b_reg[1]), .c_in(carry[0]), .sum(sum[1]), 
        .c_out(carry[1]) );
  full_adder_13 u2 ( .a(a_reg[2]), .b(b_reg[2]), .c_in(carry[1]), .sum(sum[2]), 
        .c_out(carry[2]) );
  full_adder_12 u3 ( .a(a_reg[3]), .b(b_reg[3]), .c_in(carry[2]), .sum(sum[3]), 
        .c_out(carry[3]) );
  full_adder_11 u4 ( .a(a_reg[4]), .b(b_reg[4]), .c_in(carry[3]), .sum(sum[4]), 
        .c_out(carry[4]) );
  full_adder_10 u5 ( .a(a_reg[5]), .b(b_reg[5]), .c_in(carry[4]), .sum(sum[5]), 
        .c_out(carry[5]) );
  full_adder_9 u6 ( .a(a_reg[6]), .b(b_reg[6]), .c_in(carry[5]), .sum(sum[6]), 
        .c_out(carry[6]) );
  full_adder_8 u7 ( .a(a_reg[7]), .b(b_reg[7]), .c_in(carry[6]), .sum(sum[7]), 
        .c_out(carry[7]) );
  full_adder_7 u8 ( .a(a_reg[8]), .b(b_reg[8]), .c_in(carry[7]), .sum(sum[8]), 
        .c_out(carry[8]) );
  full_adder_6 u9 ( .a(a_reg[9]), .b(b_reg[9]), .c_in(carry[8]), .sum(sum[9]), 
        .c_out(carry[9]) );
  full_adder_5 u10 ( .a(a_reg[10]), .b(b_reg[10]), .c_in(carry[9]), .sum(
        sum[10]), .c_out(carry[10]) );
  full_adder_4 u11 ( .a(a_reg[11]), .b(b_reg[11]), .c_in(carry[10]), .sum(
        sum[11]), .c_out(carry[11]) );
  full_adder_3 u12 ( .a(a_reg[12]), .b(b_reg[12]), .c_in(carry[11]), .sum(
        sum[12]), .c_out(carry[12]) );
  full_adder_2 u13 ( .a(a_reg[13]), .b(b_reg[13]), .c_in(carry[12]), .sum(
        sum[13]), .c_out(carry[13]) );
  full_adder_1 u14 ( .a(a_reg[14]), .b(b_reg[14]), .c_in(carry[13]), .sum(
        sum[14]), .c_out(carry[14]) );
  full_adder_0 u15 ( .a(a_reg[15]), .b(b_reg[15]), .c_in(carry[14]), .sum(
        sum[15]), .c_out(carry[15]) );
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
  DFFRHQX1 sum_reg_reg_15_ ( .D(sum[15]), .CK(clk), .RN(rst_n), .Q(sum_out[15]) );
  DFFRHQX1 sum_reg_reg_14_ ( .D(sum[14]), .CK(clk), .RN(rst_n), .Q(sum_out[14]) );
  DFFRHQX1 sum_reg_reg_13_ ( .D(sum[13]), .CK(clk), .RN(rst_n), .Q(sum_out[13]) );
  DFFRHQX1 sum_reg_reg_12_ ( .D(sum[12]), .CK(clk), .RN(rst_n), .Q(sum_out[12]) );
  DFFRHQX1 sum_reg_reg_11_ ( .D(sum[11]), .CK(clk), .RN(rst_n), .Q(sum_out[11]) );
  DFFRHQX1 sum_reg_reg_10_ ( .D(sum[10]), .CK(clk), .RN(rst_n), .Q(sum_out[10]) );
  DFFRHQX1 sum_reg_reg_9_ ( .D(sum[9]), .CK(clk), .RN(rst_n), .Q(sum_out[9])
         );
  DFFRHQX1 sum_reg_reg_8_ ( .D(sum[8]), .CK(clk), .RN(rst_n), .Q(sum_out[8])
         );
  DFFRHQX1 sum_reg_reg_7_ ( .D(sum[7]), .CK(clk), .RN(rst_n), .Q(sum_out[7])
         );
  DFFRHQX1 sum_reg_reg_6_ ( .D(sum[6]), .CK(clk), .RN(rst_n), .Q(sum_out[6])
         );
  DFFRHQX1 sum_reg_reg_5_ ( .D(sum[5]), .CK(clk), .RN(rst_n), .Q(sum_out[5])
         );
  DFFRHQX1 sum_reg_reg_4_ ( .D(sum[4]), .CK(clk), .RN(rst_n), .Q(sum_out[4])
         );
  DFFRHQX1 sum_reg_reg_3_ ( .D(sum[3]), .CK(clk), .RN(rst_n), .Q(sum_out[3])
         );
  DFFRHQX1 sum_reg_reg_2_ ( .D(sum[2]), .CK(clk), .RN(rst_n), .Q(sum_out[2])
         );
  DFFRHQX1 sum_reg_reg_1_ ( .D(sum[1]), .CK(clk), .RN(rst_n), .Q(sum_out[1])
         );
  DFFRHQX1 c_out_reg_reg ( .D(carry[15]), .CK(clk), .RN(rst_n), .Q(carry_out)
         );
  DFFSX1 sum_reg_reg_0_ ( .D(n2), .CK(clk), .SN(rst_n), .QN(sum_out[0]) );
  DFFSX1 c_in_reg_reg ( .D(n1), .CK(clk), .SN(rst_n), .QN(c_in_reg) );
  INVXL U3 ( .A(carry_in), .Y(n1) );
  INVXL U4 ( .A(sum[0]), .Y(n2) );
endmodule

module pad_TOP(
  clk,
  rst_n,
  A,
  B,
  C_in,
  SUM,
  C_out
);

input  wire        clk;
input  wire        rst_n;
input  wire [15:0] A;
input  wire [15:0] B;
input  wire        C_in;
output wire [15:0] SUM;
output wire        C_out;

wire        in_p_clk;
wire        in_p_rst_n;
wire [15:0] in_p_A;
wire [15:0] in_p_B;
wire        in_p_C_in;
wire [15:0] out_p_SUM;
wire        out_p_C_out;

ripple_carry_adder u_ripple_carry_adder (
    .clk      (in_p_clk     ),
    .rst_n    (in_p_rst_n  ),
    .a_in     (in_p_A       ),
    .b_in     (in_p_B       ),
    .carry_in (in_p_C_in    ),
    .sum_out  (out_p_SUM    ),
    .carry_out(out_p_C_out  ) 
);


// left side 
  PHTIC   pad1 (.PAD(A[ 0]), .Y(in_p_A[ 0]));
  PHTIC   pad2 (.PAD(A[ 1]), .Y(in_p_A[ 1]));
  PHTIC   pad3 (.PAD(A[ 2]), .Y(in_p_A[ 2]));
  PHTIC   pad4 (.PAD(A[ 3]), .Y(in_p_A[ 3]));
  PHTIC   pad5 (.PAD(A[ 4]), .Y(in_p_A[ 4]));
  PHTIC   pad6 (.PAD(clk), .Y(in_p_clk));
  PVSSOPI pad7 ();
  PVDDOPH pad8 ();
  PVDDPIL pad9 ();
  PVSSOPI pad10();
  PHTIC   pad11(.PAD(rst_n), .Y(in_p_rst_n));
  PHTIC   pad12(.PAD(A[ 5]), .Y(in_p_A[ 5]));
  PHTIC   pad13(.PAD(A[ 6]), .Y(in_p_A[ 6]));
  PHTIC   pad14(.PAD(A[ 7]), .Y(in_p_A[ 7]));
  PHTIC   pad15(.PAD(A[ 8]), .Y(in_p_A[ 8]));
  PHTIC   pad16(.PAD(A[ 9]), .Y(in_p_A[ 9]));
  PHTIC   pad17(.PAD(A[10]), .Y(in_p_A[10]));
// end of left side 

// bottom side 
  PHTIC   pad18(.PAD(A[11]), .Y(in_p_A[11]));
  PHTIC   pad19(.PAD(A[12]), .Y(in_p_A[12]));
  PHTIC   pad20(.PAD(A[13]), .Y(in_p_A[13]));
  PHTIC   pad21(.PAD(A[14]), .Y(in_p_A[14]));
  PHTIC   pad22(.PAD(A[15]), .Y(in_p_A[15]));
  PHTIC   pad23(.PAD(B[ 0]), .Y(in_p_B[ 0]));
  PVSSOPI pad24();
  PVDDOPH pad25();
  PVDDPIL pad26();
  PVSSOPI pad27();
  PHTIC   pad28(.PAD(B[ 1]), .Y(in_p_B[ 1]));
  PHTIC   pad29(.PAD(B[ 2]), .Y(in_p_B[ 2]));
  PHTIC   pad30(.PAD(B[ 3]), .Y(in_p_B[ 3]));
  PHTIC   pad31(.PAD(B[ 4]), .Y(in_p_B[ 4]));
  PHTIC   pad32(.PAD(B[ 5]), .Y(in_p_B[ 5]));
  PHTIC   pad33(.PAD(B[ 6]), .Y(in_p_B[ 6]));
  PHTIC   pad34(.PAD(B[ 7]), .Y(in_p_B[ 7]));
// end of bottom side 

// Right side
  PHTIC   pad35(.PAD(B[ 8]), .Y(in_p_B[ 8]));
  PHTIC   pad36(.PAD(B[ 9]), .Y(in_p_B[ 9]));
  PHTIC   pad37(.PAD(B[10]), .Y(in_p_B[10]));
  PHTIC   pad38(.PAD(B[11]), .Y(in_p_B[11]));
  PHTIC   pad39(.PAD(B[12]), .Y(in_p_B[12]));
  PHTIC   pad40(.PAD(B[13]), .Y(in_p_B[13]));
  PVSSOPI pad41();
  PVDDOPH pad42();
  PVDDPIL pad43();
  PVSSOPI pad44();
  PHTIC   pad45(.PAD(B[14]), .Y(in_p_B[14]));
  PHTIC   pad46(.PAD(B[15]), .Y(in_p_B[15]));
  PHTIC   pad47(.PAD(C_in), .Y(in_p_C_in));
  PHOB24  pad48(.A(out_p_SUM[ 0]), .PAD(SUM[ 0]));
  PHOB24  pad49(.A(out_p_SUM[ 1]), .PAD(SUM[ 1]));
  PHOB24  pad50(.A(out_p_SUM[ 2]), .PAD(SUM[ 2]));
  PHOB24  pad51(.A(out_p_SUM[ 3]), .PAD(SUM[ 3]));
// end of Right side

// Top Side
  PHOB24  pad52(.A(out_p_SUM[ 4]), .PAD(SUM[ 4]));
  PHOB24  pad53(.A(out_p_SUM[ 5]), .PAD(SUM[ 5]));
  PHOB24  pad54(.A(out_p_SUM[ 6]), .PAD(SUM[ 6]));
  PHOB24  pad55(.A(out_p_SUM[ 7]), .PAD(SUM[ 7]));
  PHOB24  pad56(.A(out_p_SUM[ 8]), .PAD(SUM[ 8]));
  PHOB24  pad57(.A(out_p_SUM[ 9]), .PAD(SUM[ 9]));
  PVSSOPI pad58();
  PVDDOPH pad59();
  PVDDPIL pad60();
  PVSSOPI pad61();
  PHOB24  pad62(.A(out_p_SUM[10]), .PAD(SUM[10]));
  PHOB24  pad63(.A(out_p_SUM[11]), .PAD(SUM[11]));
  PHOB24  pad64(.A(out_p_SUM[12]), .PAD(SUM[12]));
  PHOB24  pad65(.A(out_p_SUM[13]), .PAD(SUM[13]));
  PHOB24  pad66(.A(out_p_SUM[14]), .PAD(SUM[14]));
  PHOB24  pad67(.A(out_p_SUM[15]), .PAD(SUM[15]));
  PHOB24  pad68(.A(out_p_C_out), .PAD(C_out));
// end of Top side

endmodule