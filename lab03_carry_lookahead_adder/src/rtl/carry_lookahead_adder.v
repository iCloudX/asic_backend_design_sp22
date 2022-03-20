module carry_lookahead_adder (
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

  wire [3:0] pg;
  wire [3:0] gg;
  wire [3:0] carry_gen;
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

  cla_4bit u0_cla_4bit(.a_in(a_reg[ 3: 0]), .b_in(b_reg[ 3: 0]), .carry_in(c_in_reg    ), .pg_out(pg[0]), .gg_out(gg[0]), .sum_out(sum[ 3: 0]), .carry_out());
  cla_4bit u1_cla_4bit(.a_in(a_reg[ 7: 4]), .b_in(b_reg[ 7: 4]), .carry_in(carry_gen[0]), .pg_out(pg[1]), .gg_out(gg[1]), .sum_out(sum[ 7: 4]), .carry_out());
  cla_4bit u2_cla_4bit(.a_in(a_reg[11: 8]), .b_in(b_reg[11: 8]), .carry_in(carry_gen[1]), .pg_out(pg[2]), .gg_out(gg[2]), .sum_out(sum[11: 8]), .carry_out());
  cla_4bit u3_cla_4bit(.a_in(a_reg[15:12]), .b_in(b_reg[15:12]), .carry_in(carry_gen[2]), .pg_out(pg[3]), .gg_out(gg[3]), .sum_out(sum[15:12]), .carry_out());

  cla_logic u4_cla_logic(.p(pg), .g(gg), .c_in(c_in_reg), .pg(), .gg(), .c_out(carry_gen));


  always @(posedge clk or negedge rst_n)
  begin
    if (!rst_n) begin
      sum_reg   <= 16'd0;
      c_out_reg <= 1'b0;
    end
    else begin
      sum_reg   <= #0.1 sum;
      c_out_reg <= #0.1 carry_gen[3];
    end
  end

  assign sum_out = sum_reg;
  assign carry_out = c_out_reg;

endmodule
