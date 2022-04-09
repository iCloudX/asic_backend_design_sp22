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
  PHTIC   pad1 (.PAD(A[ 0]), .Y(in_p_A[ 0]));
  PHTIC   pad2 (.PAD(A[ 1]), .Y(in_p_A[ 1]));
  PHTIC   pad3 (.PAD(A[ 2]), .Y(in_p_A[ 2]));
  PHTIC   pad4 (.PAD(A[ 3]), .Y(in_p_A[ 3]));
  PHTIC   pad5 (.PAD(A[ 4]), .Y(in_p_A[ 4]));
  PHTIC   pad6 (.PAD(clk), .Y(in_p_clk));
  //PVSSOPI pad7 ();
  //PVDDOPH pad8 ();
  //PVDDPIL pad9 ();
  //PVSSOPI pad10();
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
  //PVSSOPI pad24();
  //PVDDOPH pad25();
  //PVDDPIL pad26();
  //PVSSOPI pad27();
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
  //PVSSOPI pad41();
  //PVDDOPH pad42();
  //PVDDPIL pad43();
  //PVSSOPI pad44();
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
  //PVSSOPI pad58();
  //PVDDOPH pad59();
  //PVDDPIL pad60();
  //PVSSOPI pad61();
  PHOB24  pad62(.A(out_p_SUM[10]), .PAD(SUM[10]));
  PHOB24  pad63(.A(out_p_SUM[11]), .PAD(SUM[11]));
  PHOB24  pad64(.A(out_p_SUM[12]), .PAD(SUM[12]));
  PHOB24  pad65(.A(out_p_SUM[13]), .PAD(SUM[13]));
  PHOB24  pad66(.A(out_p_SUM[14]), .PAD(SUM[14]));
  PHOB24  pad67(.A(out_p_SUM[15]), .PAD(SUM[15]));
  PHOB24  pad68(.A(out_p_C_out), .PAD(C_out));
// end of Top side

endmodule
