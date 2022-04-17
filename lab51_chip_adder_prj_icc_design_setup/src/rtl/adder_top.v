module adder_top (
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

  wire [15:0] rca_sum_w;
  wire rca_carry_w;

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

    ripple_carry_adder_16 u_rca16(
        .clk      (clk),
        .rst_n    (rst_n),
        .a_in     (a_reg),
        .b_in     (b_reg),
        .carry_in (c_in_reg),
        .sum_out  (rca_sum_w),
        .carry_out(rca_carry_w)
    );


    reg [15:0] a_reg_d;
    reg [15:0] b_reg_d;

    always @(posedge clk or negedge rst_n)
        begin
        if (!rst_n) begin
            a_reg_d <= 'd0;
            b_reg_d <= 'd0;
        end
        else begin
            a_reg_d <= a_reg;
            b_reg_d <= b_reg;
        end
    end

    wire [15:0] cla_sum;
    wire        cla_carry_out;

    carry_lookahead_adder_16 u1_cla16 (
        .clk      (clk),
        .rst_n    (rst_n),
        .a_in     (rca_sum_w),
        .b_in     (a_reg_d),
        .carry_in (rca_carry_w),
        .sum_out  (cla_sum),
        .carry_out(cla_carry_out)
    );

    reg [15:0] b_reg_d2;
    always @(posedge clk or negedge rst_n)
    begin
        if (!rst_n) begin
            b_reg_d2 <= 'd0;
        end
        else begin
            b_reg_d2 <= b_reg_d;
        end
    end

    wire [15:0] cla_sum2;
    wire cla_carry_out2;

    carry_lookahead_adder_16 u2_cla16 (
        .clk      (clk),
        .rst_n    (rst_n),
        .a_in     (cla_sum),
        .b_in     (b_reg_d2),
        .carry_in (cla_carry_out),
        .sum_out  (cla_sum2),
        .carry_out(cla_carry_out2)
    );

    assign sum_out = cla_sum2;
    assign carry_out = cla_carry_out2;

endmodule
