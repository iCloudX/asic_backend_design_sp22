`timescale 1ns/1ps

module testbench();

`ifdef SDF_PRE
initial
begin
    //$sdf_annotate("../../sta/pre/output/not_with_dff.sdf_pt", dut);
    $sdf_annotate("../../syn/output/adder_top.sdf_dc", dut);
end
`endif
/*
`ifdef SDF_POST
initial
begin
`ifdef MAX
  `ifdef PAD
    $sdf_annotate("../../../sta/post/pad_TOP.post_max.sdf", dut);
  `else
    $sdf_annotate("../../../sta/post/adder_top.post_max.sdf", dut);
  `endif
`elsif TYP
    // nothing
`elsif MIN
  `ifdef PAD
    $sdf_annotate("../../../sta/post/adder_top.post_min.sdf", dut);
  `else
    $sdf_annotate("../../../sta/post/pad_TOP.post_min.sdf", dut);
  `endif
end
`endif
*/

`ifdef SDF_POST
initial
begin
`ifdef MAX
    $sdf_annotate("../../../sta/post/pad_TOP.post_max.sdf", dut);
`elsif TYP
    // nothing
`elsif MIN
    $sdf_annotate("../../../sta/post/pad_TOP.post_min.sdf", dut);
  `endif
end
`endif

    reg clk;
    reg rst_n;
    reg [15:0] a_in;
    reg [15:0] b_in;
    reg carry_in;
    wire [15:0] sum_out;
    wire carry_out;

    pad_TOP dut (
      .clk      (clk),
      .rst_n    (rst_n),
      .a_in     (a_in),
      .b_in     (b_in),
      .carry_in (carry_in),
      .sum_out  (sum_out),
      .carry_out(carry_out)
    );

    initial
    begin
      rst_n = 1'b1;
      #3 
      rst_n = 1'b0;
      @(negedge clk);
      rst_n = 1'b1;
    end

    initial
    begin
      clk <= 1'b0;
      forever begin
        //#0.7 clk <= ~clk;
        #5 clk <= ~clk;
      end
    end

    initial
    begin
        a_in = 16'd0; b_in = 16'd0; carry_in = 1'd0;
        #10 a_in = 16'd1; b_in = 16'd1; carry_in = 1'd0;
        #10 a_in = 16'd2; b_in = 16'd5; carry_in = 1'd1;
        #10 a_in = 16'd25; b_in = 16'd30; carry_in = 1'd0;
        #10 a_in = 16'd100; b_in = 16'd200; carry_in = 1'd1;
        #10 a_in = 16'd15520; b_in = 16'd35000; carry_in = 1'd0;
        #10 a_in = 16'd60000; b_in = 16'd60000; carry_in = 1'd1;
    end


    initial
    begin
        #5 $display("               Time  ns:   a   +  b   +c_in/ Result(Previous 2 clk)");
        #10 $display("%t ns: %d + %d + %d / sum: %d c_out: %d", $time, a_in, b_in, carry_in, sum_out, carry_out);
        #10 $display("%t ns: %d + %d + %d / sum: %d c_out: %d", $time, a_in, b_in, carry_in, sum_out, carry_out);
        #10 $display("%t ns: %d + %d + %d / sum: %d c_out: %d", $time, a_in, b_in, carry_in, sum_out, carry_out);
        #10 $display("%t ns: %d + %d + %d / sum: %d c_out: %d", $time, a_in, b_in, carry_in, sum_out, carry_out);
	      #10 $display("%t ns: %d + %d + %d / sum: %d c_out: %d", $time, a_in, b_in, carry_in, sum_out, carry_out);
        #10 $display("%t ns: %d + %d + %d / sum: %d c_out: %d", $time, a_in, b_in, carry_in, sum_out, carry_out);
        #10 $display("%t ns: %d + %d + %d / sum: %d c_out: %d", $time, a_in, b_in, carry_in, sum_out, carry_out);
        #10
        #10
        $finish;
    end

`ifdef FSDB
    initial
    begin
`ifdef SDF_PRE
        $fsdbDumpfile("test_pre.fsdb");
`elsif SDF_POST
  `ifdef MAX
        $fsdbDumpfile("test_post_max.fsdb");
  `elsif MIN
        $fsdbDumpfile("test_post_min.fsdb");
  `endif
`endif
        $fsdbDumpvars(0);
    end
`endif

endmodule
