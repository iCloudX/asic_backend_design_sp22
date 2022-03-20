module ripple_carry_adder (
    clk      ,
    rst_n    ,
    a_in     ,
    b_in     ,
    carry_in ,
    sum_out  ,
    carry_out
);

  input         clk       ;
  input         rst_n     ;
  input  [15:0] a_in      ;
  input  [15:0] b_in      ;
  input         carry_in  ;
  output [15:0] sum_out   ;
  output        carry_out ;

  reg [15:0] a_reg;
  reg [15:0] b_reg;
  reg        c_in_reg;
  reg [15:0] sum_reg;
  reg        c_out_reg;

  wire [15:0] carry;
  wire [15:0] sum;

  always @(posedge clk or negedge rst_n)
  begin
    if (!rst_n) begin
      a_reg <= 16'd0;
      b_reg <= 16'd0;
      c_in_reg <= 1'b0;
    end
    else begin
      a_reg <= #0.1 a_in;
      b_reg <= #0.1 b_in;
      c_in_reg <= #0.1 carry_in;
    end
  end

  full_adder u0 (.a(a_reg[0]),  .b(b_reg[0]),  .c_in(c_in_reg),  .sum(sum[0]),  .c_out(carry[0]));
  full_adder u1 (.a(a_reg[1]),  .b(b_reg[1]),  .c_in(carry[0]),  .sum(sum[1]),  .c_out(carry[1]));
  full_adder u2 (.a(a_reg[2]),  .b(b_reg[2]),  .c_in(carry[1]),  .sum(sum[2]),  .c_out(carry[2]));
  full_adder u3 (.a(a_reg[3]),  .b(b_reg[3]),  .c_in(carry[2]),  .sum(sum[3]),  .c_out(carry[3]));
  full_adder u4 (.a(a_reg[4]),  .b(b_reg[4]),  .c_in(carry[3]),  .sum(sum[4]),  .c_out(carry[4]));
  full_adder u5 (.a(a_reg[5]),  .b(b_reg[5]),  .c_in(carry[4]),  .sum(sum[5]),  .c_out(carry[5]));
  full_adder u6 (.a(a_reg[6]),  .b(b_reg[6]),  .c_in(carry[5]),  .sum(sum[6]),  .c_out(carry[6]));
  full_adder u7 (.a(a_reg[7]),  .b(b_reg[7]),  .c_in(carry[6]),  .sum(sum[7]),  .c_out(carry[7]));
  full_adder u8 (.a(a_reg[8]),  .b(b_reg[8]),  .c_in(carry[7]),  .sum(sum[8]),  .c_out(carry[8]));
  full_adder u9 (.a(a_reg[9]),  .b(b_reg[9]),  .c_in(carry[8]),  .sum(sum[9]),  .c_out(carry[9]));
  full_adder u10(.a(a_reg[10]), .b(b_reg[10]), .c_in(carry[9]),  .sum(sum[10]), .c_out(carry[10]));
  full_adder u11(.a(a_reg[11]), .b(b_reg[11]), .c_in(carry[10]), .sum(sum[11]), .c_out(carry[11]));
  full_adder u12(.a(a_reg[12]), .b(b_reg[12]), .c_in(carry[11]), .sum(sum[12]), .c_out(carry[12]));
  full_adder u13(.a(a_reg[13]), .b(b_reg[13]), .c_in(carry[12]), .sum(sum[13]), .c_out(carry[13]));
  full_adder u14(.a(a_reg[14]), .b(b_reg[14]), .c_in(carry[13]), .sum(sum[14]), .c_out(carry[14]));
  full_adder u15(.a(a_reg[15]), .b(b_reg[15]), .c_in(carry[14]), .sum(sum[15]), .c_out(carry[15]));

  always @(posedge clk or negedge rst_n)
  begin
    if (!rst_n) begin
      sum_reg   <= 16'd0;
      c_out_reg <= 1'd0;
    end
    else begin
      sum_reg   <= #0.1 sum;
      c_out_reg <= #0.1 carry[15];
    end
  end

  assign sum_out = sum_reg;
  assign carry_out = c_out_reg;

endmodule
