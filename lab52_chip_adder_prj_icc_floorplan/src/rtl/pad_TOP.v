module pad_TOP(
  clk      ,
  rst_n    ,
  a_in     ,
  b_in     ,
  carry_in ,
  sum_out  ,
  carry_out
);

input         clk;
input         rst_n;
input  [15:0] a_in;
input  [15:0] b_in;
input         carry_in;
output [15:0] sum_out;
output        carry_out;

wire        in_p_clk;
wire        in_p_rst_n;
wire [15:0] in_p_A;
wire [15:0] in_p_B;
wire        in_p_C_in;
wire [15:0] out_p_SUM;
wire        out_p_C_out;

adder_top u_adder_top (
    .clk      (in_p_clk     ),
    .rst_n    (in_p_rst_n  ),
    .a_in     (in_p_A       ),
    .b_in     (in_p_B       ),
    .carry_in (in_p_C_in    ),
    .sum_out  (out_p_SUM    ),
    .carry_out(out_p_C_out  ) 
);


// left side 
  PHTIC   pad1 (.PAD(a_in[0]), .Y(in_p_A[0]));
  PHTIC   pad2 (.PAD(a_in[1]), .Y(in_p_A[1]));
  PHTIC   pad3 (.PAD(a_in[2]), .Y(in_p_A[2]));
  PHTIC   pad4 (.PAD(a_in[3]), .Y(in_p_A[3]));
  PHTIC   pad5 (.PAD(a_in[4]), .Y(in_p_A[4]));
  PHTIC   pad6 (.PAD(clk), .Y(in_p_clk));
  PVDDOPH pad7 ();
  PVDDPIL pad8 ();
  PVDDPIL pad9 ();
  PVSSOPI pad10();
  PHTIC   pad11(.PAD(rst_n), .Y(in_p_rst_n));
  PHTIC   pad12(.PAD(a_in[5]), .Y(in_p_A[5]));
  PHTIC   pad13(.PAD(a_in[6]), .Y(in_p_A[6]));
  PHTIC   pad14(.PAD(a_in[7]), .Y(in_p_A[7]));
  PHTIC   pad15(.PAD(a_in[8]), .Y(in_p_A[8]));
  PHTIC   pad16(.PAD(a_in[9]), .Y(in_p_A[9]));
  PHTIC   pad17(.PAD(a_in[10]), .Y(in_p_A[10]));
// end of left side 

// bottom side 
  PHTIC   pad18(.PAD(a_in[11]), .Y(in_p_A[11]));
  PHTIC   pad19(.PAD(a_in[12]), .Y(in_p_A[12]));
  PHTIC   pad20(.PAD(a_in[13]), .Y(in_p_A[13]));
  PHTIC   pad21(.PAD(a_in[14]), .Y(in_p_A[14]));
  PHTIC   pad22(.PAD(a_in[15]), .Y(in_p_A[15]));
  PHTIC   pad23(.PAD(b_in[0]), .Y(in_p_B[0]));
  PVDDOPH pad24();
  PVDDPIL pad25();
  PVDDPIL pad26();
  PVSSOPI pad27();
  PHTIC   pad28(.PAD(b_in[1]), .Y(in_p_B[1]));
  PHTIC   pad29(.PAD(b_in[2]), .Y(in_p_B[2]));
  PHTIC   pad30(.PAD(b_in[3]), .Y(in_p_B[3]));
  PHTIC   pad31(.PAD(b_in[4]), .Y(in_p_B[4]));
  PHTIC   pad32(.PAD(b_in[5]), .Y(in_p_B[5]));
  PHTIC   pad33(.PAD(b_in[6]), .Y(in_p_B[6]));
  PHTIC   pad34(.PAD(b_in[7]), .Y(in_p_B[7]));
// end of bottom side 

// Right side
  PHTIC   pad35(.PAD(b_in[8]), .Y(in_p_B[8]));
  PHTIC   pad36(.PAD(b_in[9]), .Y(in_p_B[9]));
  PHTIC   pad37(.PAD(b_in[10]), .Y(in_p_B[10]));
  PHTIC   pad38(.PAD(b_in[11]), .Y(in_p_B[11]));
  PHTIC   pad39(.PAD(b_in[12]), .Y(in_p_B[12]));
  PHTIC   pad40(.PAD(b_in[13]), .Y(in_p_B[13]));
  PVDDOPH pad41();
  PVDDPIL pad42();
  PVDDPIL pad43();
  PVSSOPI pad44();
  PHTIC   pad45(.PAD(b_in[14]), .Y(in_p_B[14]));
  PHTIC   pad46(.PAD(b_in[15]), .Y(in_p_B[15]));
  PHTIC   pad47(.PAD(carry_in), .Y(in_p_C_in));
  PHOB24  pad48(.A(out_p_SUM[0]), .PAD(sum_out[0]));
  PHOB24  pad49(.A(out_p_SUM[1]), .PAD(sum_out[1]));
  PHOB24  pad50(.A(out_p_SUM[2]), .PAD(sum_out[2]));
  PHOB24  pad51(.A(out_p_SUM[3]), .PAD(sum_out[3]));
// end of Right side

// Top Side
  PHOB24  pad52(.A(out_p_SUM[4]), .PAD(sum_out[4]));
  PHOB24  pad53(.A(out_p_SUM[5]), .PAD(sum_out[5]));
  PHOB24  pad54(.A(out_p_SUM[6]), .PAD(sum_out[6]));
  PHOB24  pad55(.A(out_p_SUM[7]), .PAD(sum_out[7]));
  PHOB24  pad56(.A(out_p_SUM[8]), .PAD(sum_out[8]));
  PHOB24  pad57(.A(out_p_SUM[9]), .PAD(sum_out[9]));
  PVDDOPH pad58();
  PVDDPIL pad59();
  PVDDPIL pad60();
  PVSSOPI pad61();
  PHOB24  pad62(.A(out_p_SUM[10]), .PAD(sum_out[10]));
  PHOB24  pad63(.A(out_p_SUM[11]), .PAD(sum_out[11]));
  PHOB24  pad64(.A(out_p_SUM[12]), .PAD(sum_out[12]));
  PHOB24  pad65(.A(out_p_SUM[13]), .PAD(sum_out[13]));
  PHOB24  pad66(.A(out_p_SUM[14]), .PAD(sum_out[14]));
  PHOB24  pad67(.A(out_p_SUM[15]), .PAD(sum_out[15]));
  PHOB24  pad68(.A(out_p_C_out), .PAD(carry_out));
// end of Top side

endmodule