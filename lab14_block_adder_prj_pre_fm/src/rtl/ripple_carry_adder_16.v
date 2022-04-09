module ripple_carry_adder_16 (
    clk,
    rst_n,
    a_in     ,
    b_in     ,
    carry_in ,
    sum_out  ,
    carry_out
);

  input         clk;
  input         rst_n;
  input  [15:0] a_in      ;
  input  [15:0] b_in      ;
  input         carry_in  ;
  output reg [15:0] sum_out   ;
  output reg        carry_out ;

  wire [15:0] carry;
  wire [15:0] sum;

  full_adder u0 (.a(a_in[0]),  .b(b_in[0]),  .c_in(carry_in),  .sum(sum[0]),  .c_out(carry[0]));
  full_adder u1 (.a(a_in[1]),  .b(b_in[1]),  .c_in(carry[0]),  .sum(sum[1]),  .c_out(carry[1]));
  full_adder u2 (.a(a_in[2]),  .b(b_in[2]),  .c_in(carry[1]),  .sum(sum[2]),  .c_out(carry[2]));
  full_adder u3 (.a(a_in[3]),  .b(b_in[3]),  .c_in(carry[2]),  .sum(sum[3]),  .c_out(carry[3]));
  full_adder u4 (.a(a_in[4]),  .b(b_in[4]),  .c_in(carry[3]),  .sum(sum[4]),  .c_out(carry[4]));
  full_adder u5 (.a(a_in[5]),  .b(b_in[5]),  .c_in(carry[4]),  .sum(sum[5]),  .c_out(carry[5]));
  full_adder u6 (.a(a_in[6]),  .b(b_in[6]),  .c_in(carry[5]),  .sum(sum[6]),  .c_out(carry[6]));
  full_adder u7 (.a(a_in[7]),  .b(b_in[7]),  .c_in(carry[6]),  .sum(sum[7]),  .c_out(carry[7]));
  full_adder u8 (.a(a_in[8]),  .b(b_in[8]),  .c_in(carry[7]),  .sum(sum[8]),  .c_out(carry[8]));
  full_adder u9 (.a(a_in[9]),  .b(b_in[9]),  .c_in(carry[8]),  .sum(sum[9]),  .c_out(carry[9]));
  full_adder u10(.a(a_in[10]), .b(b_in[10]), .c_in(carry[9]),  .sum(sum[10]), .c_out(carry[10]));
  full_adder u11(.a(a_in[11]), .b(b_in[11]), .c_in(carry[10]), .sum(sum[11]), .c_out(carry[11]));
  full_adder u12(.a(a_in[12]), .b(b_in[12]), .c_in(carry[11]), .sum(sum[12]), .c_out(carry[12]));
  full_adder u13(.a(a_in[13]), .b(b_in[13]), .c_in(carry[12]), .sum(sum[13]), .c_out(carry[13]));
  full_adder u14(.a(a_in[14]), .b(b_in[14]), .c_in(carry[13]), .sum(sum[14]), .c_out(carry[14]));
  full_adder u15(.a(a_in[15]), .b(b_in[15]), .c_in(carry[14]), .sum(sum[15]), .c_out(carry[15]));

  always @(posedge clk or negedge rst_n)
  begin
    if (!rst_n) begin
      sum_out <= 'd0;
      carry_out <= 'd0;
    end
    else begin
      sum_out <= sum;
      carry_out <= carry[15];
    end
  end

endmodule
