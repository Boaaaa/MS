
module f_add_0 ( f_a, f_b, G, P );
  input f_a, f_b;
  output G, P;


  XOR2_X1 U2 ( .A(f_b), .B(f_a), .Z(P) );
  AND2_X1 U1 ( .A1(f_b), .A2(f_a), .ZN(G) );
endmodule


module f_add_25 ( f_a, f_b, G, P );
  input f_a, f_b;
  output G, P;
  wire   n9, n10, n11, n12;

  NAND2_X1 U1 ( .A1(f_a), .A2(n10), .ZN(n11) );
  NAND2_X1 U2 ( .A1(n9), .A2(f_b), .ZN(n12) );
  NAND2_X1 U3 ( .A1(n11), .A2(n12), .ZN(P) );
  INV_X1 U4 ( .A(f_a), .ZN(n9) );
  INV_X1 U5 ( .A(f_b), .ZN(n10) );
  AND2_X1 U6 ( .A1(f_b), .A2(f_a), .ZN(G) );
endmodule


module g_0 ( Ga, Gb, P, G_out );
  input Ga, Gb, P;
  output G_out;
  wire   n2;

  AOI21_X1 U1 ( .B1(P), .B2(Gb), .A(Ga), .ZN(n2) );
  INV_X1 U2 ( .A(n2), .ZN(G_out) );
endmodule


module pg_0 ( Ga, Gb, P1, P2, G_out, P_out );
  input Ga, Gb, P1, P2;
  output G_out, P_out;
  wire   n2;

  INV_X1 U1 ( .A(n2), .ZN(G_out) );
  AND2_X1 U2 ( .A1(P1), .A2(P2), .ZN(P_out) );
  AOI21_X1 U3 ( .B1(P1), .B2(Gb), .A(Ga), .ZN(n2) );
endmodule


module pg_26 ( Ga, Gb, P1, P2, G_out, P_out );
  input Ga, Gb, P1, P2;
  output G_out, P_out;
  wire   n2;

  INV_X1 U1 ( .A(n2), .ZN(G_out) );
  AOI21_X1 U2 ( .B1(P1), .B2(Gb), .A(Ga), .ZN(n2) );
  AND2_X1 U3 ( .A1(P2), .A2(P1), .ZN(P_out) );
endmodule


module pg_25 ( Ga, Gb, P1, P2, G_out, P_out );
  input Ga, Gb, P1, P2;
  output G_out, P_out;
  wire   n2;

  INV_X1 U1 ( .A(n2), .ZN(G_out) );
  AND2_X1 U2 ( .A1(P1), .A2(P2), .ZN(P_out) );
  AOI21_X1 U3 ( .B1(P1), .B2(Gb), .A(Ga), .ZN(n2) );
endmodule


module pg_24 ( Ga, Gb, P1, P2, G_out, P_out );
  input Ga, Gb, P1, P2;
  output G_out, P_out;
  wire   n11, n12, n13;

  OAI21_X1 U1 ( .B1(n11), .B2(n12), .A(n13), .ZN(G_out) );
  INV_X1 U2 ( .A(P1), .ZN(n11) );
  INV_X1 U3 ( .A(Gb), .ZN(n12) );
  INV_X1 U4 ( .A(Ga), .ZN(n13) );
  AND2_X1 U5 ( .A1(P2), .A2(P1), .ZN(P_out) );
endmodule


module pg_23 ( Ga, Gb, P1, P2, G_out, P_out );
  input Ga, Gb, P1, P2;
  output G_out, P_out;
  wire   n11, n12, n13;

  AND2_X1 U1 ( .A1(P1), .A2(P2), .ZN(P_out) );
  OAI21_X1 U2 ( .B1(n11), .B2(n12), .A(n13), .ZN(G_out) );
  INV_X1 U3 ( .A(P1), .ZN(n11) );
  INV_X1 U4 ( .A(Gb), .ZN(n12) );
  INV_X1 U5 ( .A(Ga), .ZN(n13) );
endmodule


module g_8 ( Ga, Gb, P, G_out );
  input Ga, Gb, P;
  output G_out;
  wire   n7, n8, n9;

  OAI21_X1 U1 ( .B1(n8), .B2(n7), .A(n9), .ZN(G_out) );
  INV_X1 U2 ( .A(P), .ZN(n7) );
  INV_X1 U3 ( .A(Gb), .ZN(n8) );
  INV_X1 U4 ( .A(Ga), .ZN(n9) );
endmodule


module pg_10 ( Ga, Gb, P1, P2, G_out, P_out );
  input Ga, Gb, P1, P2;
  output G_out, P_out;
  wire   n9, n10, n11;

  OAI21_X1 U1 ( .B1(n9), .B2(n10), .A(n11), .ZN(G_out) );
  INV_X1 U2 ( .A(P1), .ZN(n9) );
  INV_X1 U3 ( .A(Gb), .ZN(n10) );
  INV_X1 U4 ( .A(Ga), .ZN(n11) );
  AND2_X1 U5 ( .A1(P1), .A2(P2), .ZN(P_out) );
endmodule


module pg_9 ( Ga, Gb, P1, P2, G_out, P_out );
  input Ga, Gb, P1, P2;
  output G_out, P_out;
  wire   n2;

  AOI21_X1 U1 ( .B1(P1), .B2(Gb), .A(Ga), .ZN(n2) );
  AND2_X1 U2 ( .A1(P2), .A2(P1), .ZN(P_out) );
  INV_X1 U3 ( .A(n2), .ZN(G_out) );
endmodule


module pg_5 ( Ga, Gb, P1, P2, G_out, P_out );
  input Ga, Gb, P1, P2;
  output G_out, P_out;
  wire   n2;

  AOI21_X1 U1 ( .B1(Gb), .B2(P1), .A(Ga), .ZN(n2) );
  INV_X1 U2 ( .A(n2), .ZN(G_out) );
  AND2_X1 U3 ( .A1(P2), .A2(P1), .ZN(P_out) );
endmodule


module pg_4 ( Ga, Gb, P1, P2, G_out, P_out );
  input Ga, Gb, P1, P2;
  output G_out, P_out;
  wire   n13, n14, n15;

  OAI21_X1 U1 ( .B1(n13), .B2(n14), .A(n15), .ZN(G_out) );
  INV_X1 U2 ( .A(Gb), .ZN(n13) );
  INV_X1 U3 ( .A(P1), .ZN(n14) );
  INV_X1 U4 ( .A(Ga), .ZN(n15) );
  AND2_X1 U5 ( .A1(P2), .A2(P1), .ZN(P_out) );
endmodule


module g_5 ( Ga, Gb, P, G_out );
  input Ga, Gb, P;
  output G_out;
  wire   n12, n13;

  NAND2_X1 U1 ( .A1(n12), .A2(n13), .ZN(G_out) );
  NAND2_X1 U2 ( .A1(Gb), .A2(P), .ZN(n13) );
  INV_X1 U3 ( .A(Ga), .ZN(n12) );
endmodule


module g_4 ( Ga, Gb, P, G_out );
  input Ga, Gb, P;
  output G_out;
  wire   n5, n6;

  INV_X1 U1 ( .A(Ga), .ZN(n5) );
  NAND2_X1 U2 ( .A1(Gb), .A2(P), .ZN(n6) );
  NAND2_X1 U3 ( .A1(n6), .A2(n5), .ZN(G_out) );
endmodule


module g_1 ( Ga, Gb, P, G_out );
  input Ga, Gb, P;
  output G_out;
  wire   n5;

  INV_X1 U1 ( .A(n5), .ZN(G_out) );
  AOI21_X1 U2 ( .B1(P), .B2(Gb), .A(Ga), .ZN(n5) );
endmodule


module g_2 ( Ga, Gb, P, G_out );
  input Ga, Gb, P;
  output G_out;
  wire   net6936, n5;

  NAND2_X1 U1 ( .A1(Gb), .A2(P), .ZN(n5) );
  NAND2_X1 U2 ( .A1(n5), .A2(net6936), .ZN(G_out) );
  INV_X1 U3 ( .A(Ga), .ZN(net6936) );
endmodule


module g_3 ( Ga, Gb, P, G_out );
  input Ga, Gb, P;
  output G_out;
  wire   n5, n6;

  NAND2_X1 U1 ( .A1(n6), .A2(n5), .ZN(G_out) );
  INV_X1 U2 ( .A(Ga), .ZN(n5) );
  NAND2_X1 U3 ( .A1(Gb), .A2(P), .ZN(n6) );
endmodule


module f_add_17 ( f_a, f_b, G, P );
  input f_a, f_b;
  output G, P;


  XOR2_X1 U1 ( .A(f_a), .B(f_b), .Z(P) );
  AND2_X1 U2 ( .A1(f_b), .A2(f_a), .ZN(G) );
endmodule


module g_6 ( Ga, Gb, P, G_out );
  input Ga, Gb, P;
  output G_out;
  wire   n7;

  INV_X1 U1 ( .A(n7), .ZN(G_out) );
  AOI21_X1 U2 ( .B1(Gb), .B2(P), .A(Ga), .ZN(n7) );
endmodule


module g_7 ( Ga, Gb, P, G_out );
  input Ga, Gb, P;
  output G_out;
  wire   n7, n8;

  NAND2_X1 U1 ( .A1(Gb), .A2(P), .ZN(n8) );
  INV_X1 U2 ( .A(Ga), .ZN(n7) );
  NAND2_X1 U3 ( .A1(n7), .A2(n8), .ZN(G_out) );
endmodule


module pg_2 ( Ga, Gb, P1, P2, G_out, P_out );
  input Ga, Gb, P1, P2;
  output G_out, P_out;
  wire   n11;

  AND2_X1 U1 ( .A1(P2), .A2(P1), .ZN(P_out) );
  INV_X1 U2 ( .A(n11), .ZN(G_out) );
  AOI21_X1 U3 ( .B1(Gb), .B2(P1), .A(Ga), .ZN(n11) );
endmodule


module pg_21 ( Ga, Gb, P1, P2, G_out, P_out );
  input Ga, Gb, P1, P2;
  output G_out, P_out;
  wire   n2;

  AND2_X1 U1 ( .A1(P1), .A2(P2), .ZN(P_out) );
  AOI21_X1 U2 ( .B1(P1), .B2(Gb), .A(Ga), .ZN(n2) );
  INV_X1 U3 ( .A(n2), .ZN(G_out) );
endmodule


module pg_17 ( Ga, Gb, P1, P2, G_out, P_out );
  input Ga, Gb, P1, P2;
  output G_out, P_out;
  wire   n14;

  INV_X1 U1 ( .A(n14), .ZN(G_out) );
  AOI21_X1 U2 ( .B1(P1), .B2(Gb), .A(Ga), .ZN(n14) );
  AND2_X1 U3 ( .A1(P1), .A2(P2), .ZN(P_out) );
endmodule


module f_add_1 ( f_a, f_b, G, P );
  input f_a, f_b;
  output G, P;


  XOR2_X1 U2 ( .A(f_b), .B(f_a), .Z(P) );
  AND2_X1 U1 ( .A1(f_b), .A2(f_a), .ZN(G) );
endmodule


module f_add_2 ( f_a, f_b, G, P );
  input f_a, f_b;
  output G, P;


  XOR2_X1 U2 ( .A(f_b), .B(f_a), .Z(P) );
  AND2_X1 U1 ( .A1(f_b), .A2(f_a), .ZN(G) );
endmodule


module f_add_3 ( f_a, f_b, G, P );
  input f_a, f_b;
  output G, P;


  XOR2_X1 U2 ( .A(f_b), .B(f_a), .Z(P) );
  AND2_X1 U1 ( .A1(f_b), .A2(f_a), .ZN(G) );
endmodule


module f_add_4 ( f_a, f_b, G, P );
  input f_a, f_b;
  output G, P;


  XOR2_X1 U2 ( .A(f_b), .B(f_a), .Z(P) );
  AND2_X1 U1 ( .A1(f_b), .A2(f_a), .ZN(G) );
endmodule


module f_add_5 ( f_a, f_b, G, P );
  input f_a, f_b;
  output G, P;


  XOR2_X1 U2 ( .A(f_b), .B(f_a), .Z(P) );
  AND2_X1 U1 ( .A1(f_b), .A2(f_a), .ZN(G) );
endmodule


module f_add_6 ( f_a, f_b, G, P );
  input f_a, f_b;
  output G, P;


  XOR2_X1 U2 ( .A(f_b), .B(f_a), .Z(P) );
  AND2_X1 U1 ( .A1(f_b), .A2(f_a), .ZN(G) );
endmodule


module f_add_7 ( f_a, f_b, G, P );
  input f_a, f_b;
  output G, P;


  XOR2_X1 U2 ( .A(f_b), .B(f_a), .Z(P) );
  AND2_X1 U1 ( .A1(f_b), .A2(f_a), .ZN(G) );
endmodule


module f_add_8 ( f_a, f_b, G, P );
  input f_a, f_b;
  output G, P;


  XOR2_X1 U2 ( .A(f_b), .B(f_a), .Z(P) );
  AND2_X1 U1 ( .A1(f_b), .A2(f_a), .ZN(G) );
endmodule


module f_add_9 ( f_a, f_b, G, P );
  input f_a, f_b;
  output G, P;
  wire   n1, n2, n3, n4;

  NAND2_X1 U1 ( .A1(n2), .A2(f_b), .ZN(n3) );
  NAND2_X1 U2 ( .A1(n1), .A2(f_a), .ZN(n4) );
  NAND2_X1 U3 ( .A1(n3), .A2(n4), .ZN(P) );
  INV_X1 U4 ( .A(f_b), .ZN(n1) );
  INV_X1 U5 ( .A(f_a), .ZN(n2) );
  AND2_X1 U6 ( .A1(f_b), .A2(f_a), .ZN(G) );
endmodule


module f_add_10 ( f_a, f_b, G, P );
  input f_a, f_b;
  output G, P;


  XOR2_X1 U2 ( .A(f_b), .B(f_a), .Z(P) );
  AND2_X1 U1 ( .A1(f_b), .A2(f_a), .ZN(G) );
endmodule


module f_add_11 ( f_a, f_b, G, P );
  input f_a, f_b;
  output G, P;


  XOR2_X1 U2 ( .A(f_b), .B(f_a), .Z(P) );
  AND2_X1 U1 ( .A1(f_b), .A2(f_a), .ZN(G) );
endmodule


module f_add_12 ( f_a, f_b, G, P );
  input f_a, f_b;
  output G, P;


  XOR2_X1 U2 ( .A(f_b), .B(f_a), .Z(P) );
  AND2_X1 U1 ( .A1(f_b), .A2(f_a), .ZN(G) );
endmodule


module f_add_13 ( f_a, f_b, G, P );
  input f_a, f_b;
  output G, P;


  XOR2_X1 U2 ( .A(f_b), .B(f_a), .Z(P) );
  AND2_X1 U1 ( .A1(f_b), .A2(f_a), .ZN(G) );
endmodule


module f_add_14 ( f_a, f_b, G, P );
  input f_a, f_b;
  output G, P;


  XOR2_X1 U2 ( .A(f_b), .B(f_a), .Z(P) );
  AND2_X1 U1 ( .A1(f_b), .A2(f_a), .ZN(G) );
endmodule


module f_add_15 ( f_a, f_b, G, P );
  input f_a, f_b;
  output G, P;


  XOR2_X1 U2 ( .A(f_b), .B(f_a), .Z(P) );
  AND2_X1 U1 ( .A1(f_b), .A2(f_a), .ZN(G) );
endmodule


module f_add_16 ( f_a, f_b, G, P );
  input f_a, f_b;
  output G, P;


  XOR2_X1 U2 ( .A(f_b), .B(f_a), .Z(P) );
  AND2_X1 U1 ( .A1(f_b), .A2(f_a), .ZN(G) );
endmodule


module f_add_18 ( f_a, f_b, G, P );
  input f_a, f_b;
  output G, P;


  XOR2_X1 U2 ( .A(f_b), .B(f_a), .Z(P) );
  AND2_X1 U1 ( .A1(f_b), .A2(f_a), .ZN(G) );
endmodule


module f_add_19 ( f_a, f_b, G, P );
  input f_a, f_b;
  output G, P;


  XOR2_X1 U2 ( .A(f_b), .B(f_a), .Z(P) );
  AND2_X1 U1 ( .A1(f_b), .A2(f_a), .ZN(G) );
endmodule


module f_add_20 ( f_a, f_b, G, P );
  input f_a, f_b;
  output G, P;


  XOR2_X1 U2 ( .A(f_b), .B(f_a), .Z(P) );
  AND2_X1 U1 ( .A1(f_b), .A2(f_a), .ZN(G) );
endmodule


module f_add_21 ( f_a, f_b, G, P );
  input f_a, f_b;
  output G, P;


  XOR2_X1 U2 ( .A(f_b), .B(f_a), .Z(P) );
  AND2_X1 U1 ( .A1(f_b), .A2(f_a), .ZN(G) );
endmodule


module f_add_22 ( f_a, f_b, G, P );
  input f_a, f_b;
  output G, P;


  XOR2_X1 U2 ( .A(f_b), .B(f_a), .Z(P) );
  AND2_X1 U1 ( .A1(f_b), .A2(f_a), .ZN(G) );
endmodule


module f_add_23 ( f_a, f_b, G, P );
  input f_a, f_b;
  output G, P;


  XOR2_X1 U2 ( .A(f_b), .B(f_a), .Z(P) );
  AND2_X1 U1 ( .A1(f_b), .A2(f_a), .ZN(G) );
endmodule


module f_add_24 ( f_a, f_b, G, P );
  input f_a, f_b;
  output G, P;


  XOR2_X1 U2 ( .A(f_b), .B(f_a), .Z(P) );
  AND2_X1 U1 ( .A1(f_b), .A2(f_a), .ZN(G) );
endmodule


module f_add_26 ( f_a, f_b, G, P );
  input f_a, f_b;
  output G, P;


  XOR2_X1 U2 ( .A(f_b), .B(f_a), .Z(P) );
  AND2_X1 U1 ( .A1(f_b), .A2(f_a), .ZN(G) );
endmodule


module f_add_27 ( f_a, f_b, G, P );
  input f_a, f_b;
  output G, P;


  XOR2_X1 U2 ( .A(f_b), .B(f_a), .Z(P) );
  AND2_X1 U1 ( .A1(f_b), .A2(f_a), .ZN(G) );
endmodule


module f_add_28 ( f_a, f_b, G, P );
  input f_a, f_b;
  output G, P;


  XOR2_X1 U2 ( .A(f_b), .B(f_a), .Z(P) );
  AND2_X1 U1 ( .A1(f_b), .A2(f_a), .ZN(G) );
endmodule


module f_add_29 ( f_a, f_b, G, P );
  input f_a, f_b;
  output G, P;


  XOR2_X1 U2 ( .A(f_a), .B(f_b), .Z(P) );
  AND2_X1 U1 ( .A1(f_b), .A2(f_a), .ZN(G) );
endmodule


module f_add_30 ( f_a, f_b, G, P );
  input f_a, f_b;
  output G, P;


  XOR2_X1 U2 ( .A(f_b), .B(f_a), .Z(P) );
  AND2_X1 U1 ( .A1(f_b), .A2(f_a), .ZN(G) );
endmodule


module f_add_31 ( f_a, f_b, G, P );
  input f_a, f_b;
  output G, P;


  XOR2_X1 U2 ( .A(f_b), .B(f_a), .Z(P) );
  AND2_X1 U1 ( .A1(f_b), .A2(f_a), .ZN(G) );
endmodule


module pg_1 ( Ga, Gb, P1, P2, G_out, P_out );
  input Ga, Gb, P1, P2;
  output G_out, P_out;
  wire   n11;

  AND2_X1 U1 ( .A1(P2), .A2(P1), .ZN(P_out) );
  INV_X1 U2 ( .A(n11), .ZN(G_out) );
  AOI21_X1 U3 ( .B1(P1), .B2(Gb), .A(Ga), .ZN(n11) );
endmodule


module pg_12 ( Ga, Gb, P1, P2, G_out, P_out );
  input Ga, Gb, P1, P2;
  output G_out, P_out;
  wire   n11;

  AND2_X1 U1 ( .A1(P2), .A2(P1), .ZN(P_out) );
  INV_X1 U2 ( .A(n11), .ZN(G_out) );
  AOI21_X1 U3 ( .B1(P1), .B2(Gb), .A(Ga), .ZN(n11) );
endmodule


module pg_3 ( Ga, Gb, P1, P2, G_out, P_out );
  input Ga, Gb, P1, P2;
  output G_out, P_out;
  wire   n11;

  INV_X1 U1 ( .A(n11), .ZN(G_out) );
  AOI21_X1 U2 ( .B1(P1), .B2(Gb), .A(Ga), .ZN(n11) );
  AND2_X1 U3 ( .A1(P2), .A2(P1), .ZN(P_out) );
endmodule


module pg_6 ( Ga, Gb, P1, P2, G_out, P_out );
  input Ga, Gb, P1, P2;
  output G_out, P_out;
  wire   n11;

  INV_X1 U1 ( .A(n11), .ZN(G_out) );
  AOI21_X1 U2 ( .B1(P1), .B2(Gb), .A(Ga), .ZN(n11) );
  AND2_X1 U3 ( .A1(P2), .A2(P1), .ZN(P_out) );
endmodule


module pg_7 ( Ga, Gb, P1, P2, G_out, P_out );
  input Ga, Gb, P1, P2;
  output G_out, P_out;
  wire   n11;

  INV_X1 U1 ( .A(n11), .ZN(G_out) );
  AOI21_X1 U2 ( .B1(P1), .B2(Gb), .A(Ga), .ZN(n11) );
  AND2_X1 U3 ( .A1(P2), .A2(P1), .ZN(P_out) );
endmodule


module pg_11 ( Ga, Gb, P1, P2, G_out, P_out );
  input Ga, Gb, P1, P2;
  output G_out, P_out;
  wire   n11;

  AND2_X1 U1 ( .A1(P2), .A2(P1), .ZN(P_out) );
  INV_X1 U2 ( .A(n11), .ZN(G_out) );
  AOI21_X1 U3 ( .B1(P1), .B2(Gb), .A(Ga), .ZN(n11) );
endmodule


module pg_13 ( Ga, Gb, P1, P2, G_out, P_out );
  input Ga, Gb, P1, P2;
  output G_out, P_out;
  wire   n11;

  INV_X1 U1 ( .A(n11), .ZN(G_out) );
  AOI21_X1 U2 ( .B1(P1), .B2(Gb), .A(Ga), .ZN(n11) );
  AND2_X1 U3 ( .A1(P2), .A2(P1), .ZN(P_out) );
endmodule


module pg_14 ( Ga, Gb, P1, P2, G_out, P_out );
  input Ga, Gb, P1, P2;
  output G_out, P_out;
  wire   n11;

  INV_X1 U1 ( .A(n11), .ZN(G_out) );
  AOI21_X1 U2 ( .B1(P1), .B2(Gb), .A(Ga), .ZN(n11) );
  AND2_X1 U3 ( .A1(P2), .A2(P1), .ZN(P_out) );
endmodule


module pg_15 ( Ga, Gb, P1, P2, G_out, P_out );
  input Ga, Gb, P1, P2;
  output G_out, P_out;
  wire   n11;

  INV_X1 U1 ( .A(n11), .ZN(G_out) );
  AOI21_X1 U2 ( .B1(P1), .B2(Gb), .A(Ga), .ZN(n11) );
  AND2_X1 U3 ( .A1(P2), .A2(P1), .ZN(P_out) );
endmodule


module pg_16 ( Ga, Gb, P1, P2, G_out, P_out );
  input Ga, Gb, P1, P2;
  output G_out, P_out;
  wire   n11;

  INV_X1 U1 ( .A(n11), .ZN(G_out) );
  AOI21_X1 U2 ( .B1(P1), .B2(Gb), .A(Ga), .ZN(n11) );
  AND2_X1 U3 ( .A1(P2), .A2(P1), .ZN(P_out) );
endmodule


module pg_18 ( Ga, Gb, P1, P2, G_out, P_out );
  input Ga, Gb, P1, P2;
  output G_out, P_out;
  wire   n11;

  INV_X1 U1 ( .A(n11), .ZN(G_out) );
  AOI21_X1 U2 ( .B1(P1), .B2(Gb), .A(Ga), .ZN(n11) );
  AND2_X1 U3 ( .A1(P2), .A2(P1), .ZN(P_out) );
endmodule


module pg_19 ( Ga, Gb, P1, P2, G_out, P_out );
  input Ga, Gb, P1, P2;
  output G_out, P_out;
  wire   n11;

  INV_X1 U1 ( .A(n11), .ZN(G_out) );
  AOI21_X1 U2 ( .B1(P1), .B2(Gb), .A(Ga), .ZN(n11) );
  AND2_X1 U3 ( .A1(P1), .A2(P2), .ZN(P_out) );
endmodule


module pg_20 ( Ga, Gb, P1, P2, G_out, P_out );
  input Ga, Gb, P1, P2;
  output G_out, P_out;
  wire   n11;

  INV_X1 U1 ( .A(n11), .ZN(G_out) );
  AOI21_X1 U2 ( .B1(P1), .B2(Gb), .A(Ga), .ZN(n11) );
  AND2_X1 U3 ( .A1(P2), .A2(P1), .ZN(P_out) );
endmodule


module pg_22 ( Ga, Gb, P1, P2, G_out, P_out );
  input Ga, Gb, P1, P2;
  output G_out, P_out;
  wire   n11;

  INV_X1 U1 ( .A(n11), .ZN(G_out) );
  AOI21_X1 U2 ( .B1(P1), .B2(Gb), .A(Ga), .ZN(n11) );
  AND2_X1 U3 ( .A1(P2), .A2(P1), .ZN(P_out) );
endmodule


module pg_8 ( Ga, Gb, P1, P2, G_out, P_out );
  input Ga, Gb, P1, P2;
  output G_out, P_out;
  wire   n11;

  AOI21_X1 U1 ( .B1(P1), .B2(Gb), .A(Ga), .ZN(n11) );
  AND2_X1 U2 ( .A1(P2), .A2(P1), .ZN(P_out) );
  INV_X1 U3 ( .A(n11), .ZN(G_out) );
endmodule


module CARRY_GENERATOR_NBIT32_NBIT_PER_BLOCK4 ( A, B, Cin, Co );
  input [31:0] A;
  input [31:0] B;
  output [8:0] Co;
  input Cin;
  wire   Cin, n8, n9, n10, \C_P[16][16] , \C_P[16][15] , \C_P[16][13] ,
         \C_P[16][9] , \C_P[15][15] , \C_P[14][14] , \C_P[14][13] ,
         \C_P[13][13] , \C_P[12][12] , \C_P[12][11] , \C_P[12][9] ,
         \C_P[11][11] , \C_P[10][10] , \C_P[10][9] , \C_P[9][9] , \C_P[8][8] ,
         \C_P[8][7] , \C_P[8][5] , \C_P[7][7] , \C_P[6][6] , \C_P[6][5] ,
         \C_P[5][5] , \C_P[4][4] , \C_P[4][3] , \C_P[3][3] , \C_P[2][2] ,
         \C_G[16][16] , \C_G[16][15] , \C_G[16][13] , \C_G[16][9] ,
         \C_G[15][15] , \C_G[14][14] , \C_G[14][13] , \C_G[13][13] ,
         \C_G[12][12] , \C_G[12][11] , \C_G[12][9] , \C_G[11][11] ,
         \C_G[10][10] , \C_G[10][9] , \C_G[9][9] , \C_G[8][8] , \C_G[8][7] ,
         \C_G[8][5] , \C_G[7][7] , \C_G[6][6] , \C_G[6][5] , \C_G[5][5] ,
         \C_G[4][4] , \C_G[4][3] , \C_G[3][3] , \C_G[2][2] , \C_G[2][1] ,
         \C_G[1][1] , \C_P[32][32] , \C_P[32][31] , \C_P[32][29] ,
         \C_P[32][25] , \C_P[32][17] , \C_P[31][31] , \C_P[30][30] ,
         \C_P[30][29] , \C_P[29][29] , \C_P[28][28] , \C_P[28][27] ,
         \C_P[28][25] , \C_P[28][17] , \C_P[27][27] , \C_P[26][26] ,
         \C_P[26][25] , \C_P[25][25] , \C_P[24][24] , \C_P[24][23] ,
         \C_P[24][21] , \C_P[24][17] , \C_P[23][23] , \C_P[22][22] ,
         \C_P[22][21] , \C_P[21][21] , \C_P[20][20] , \C_P[20][19] ,
         \C_P[20][17] , \C_P[19][19] , \C_P[18][18] , \C_P[18][17] ,
         \C_P[17][17] , \C_G[32][32] , \C_G[32][31] , \C_G[32][29] ,
         \C_G[32][25] , \C_G[32][17] , \C_G[31][31] , \C_G[30][30] ,
         \C_G[30][29] , \C_G[29][29] , \C_G[28][28] , \C_G[28][27] ,
         \C_G[28][25] , \C_G[28][17] , \C_G[27][27] , \C_G[26][26] ,
         \C_G[26][25] , \C_G[25][25] , \C_G[24][24] , \C_G[24][23] ,
         \C_G[24][21] , \C_G[24][17] , \C_G[23][23] , \C_G[22][22] ,
         \C_G[22][21] , \C_G[21][21] , \C_G[20][20] , \C_G[20][19] ,
         \C_G[20][17] , \C_G[19][19] , \C_G[18][18] , \C_G[18][17] ,
         \C_G[17][17] , n30, n31, n33;
  assign Co[0] = Cin;

  f_add_0 R0_0_0 ( .f_a(A[0]), .f_b(B[0]), .G(\C_G[1][1] ) );
  f_add_31 R0_0_1 ( .f_a(A[1]), .f_b(B[1]), .G(\C_G[2][2] ), .P(\C_P[2][2] )
         );
  f_add_30 R0_0_2 ( .f_a(A[2]), .f_b(B[2]), .G(\C_G[3][3] ), .P(\C_P[3][3] )
         );
  f_add_29 R0_0_3 ( .f_a(A[3]), .f_b(B[3]), .G(\C_G[4][4] ), .P(\C_P[4][4] )
         );
  f_add_28 R0_0_4 ( .f_a(A[4]), .f_b(B[4]), .G(\C_G[5][5] ), .P(\C_P[5][5] )
         );
  f_add_27 R0_0_5 ( .f_a(A[5]), .f_b(B[5]), .G(\C_G[6][6] ), .P(\C_P[6][6] )
         );
  f_add_26 R0_0_6 ( .f_a(A[6]), .f_b(B[6]), .G(\C_G[7][7] ), .P(\C_P[7][7] )
         );
  f_add_25 R0_0_7 ( .f_a(A[7]), .f_b(B[7]), .G(\C_G[8][8] ), .P(\C_P[8][8] )
         );
  f_add_24 R0_0_8 ( .f_a(A[8]), .f_b(B[8]), .G(\C_G[9][9] ), .P(\C_P[9][9] )
         );
  f_add_23 R0_0_9 ( .f_a(A[9]), .f_b(B[9]), .G(\C_G[10][10] ), .P(
        \C_P[10][10] ) );
  f_add_22 R0_0_10 ( .f_a(A[10]), .f_b(B[10]), .G(\C_G[11][11] ), .P(
        \C_P[11][11] ) );
  f_add_21 R0_0_11 ( .f_a(A[11]), .f_b(B[11]), .G(\C_G[12][12] ), .P(
        \C_P[12][12] ) );
  f_add_20 R0_0_12 ( .f_a(A[12]), .f_b(B[12]), .G(\C_G[13][13] ), .P(
        \C_P[13][13] ) );
  f_add_19 R0_0_13 ( .f_a(A[13]), .f_b(B[13]), .G(\C_G[14][14] ), .P(
        \C_P[14][14] ) );
  f_add_18 R0_0_14 ( .f_a(A[14]), .f_b(B[14]), .G(\C_G[15][15] ), .P(
        \C_P[15][15] ) );
  f_add_17 R0_0_15 ( .f_a(A[15]), .f_b(B[15]), .G(\C_G[16][16] ), .P(
        \C_P[16][16] ) );
  f_add_16 R0_0_16 ( .f_a(A[16]), .f_b(B[16]), .G(\C_G[17][17] ), .P(
        \C_P[17][17] ) );
  f_add_15 R0_0_17 ( .f_a(A[17]), .f_b(B[17]), .G(\C_G[18][18] ), .P(
        \C_P[18][18] ) );
  f_add_14 R0_0_18 ( .f_a(A[18]), .f_b(B[18]), .G(\C_G[19][19] ), .P(
        \C_P[19][19] ) );
  f_add_13 R0_0_19 ( .f_a(A[19]), .f_b(B[19]), .G(\C_G[20][20] ), .P(
        \C_P[20][20] ) );
  f_add_12 R0_0_20 ( .f_a(A[20]), .f_b(B[20]), .G(\C_G[21][21] ), .P(
        \C_P[21][21] ) );
  f_add_11 R0_0_21 ( .f_a(A[21]), .f_b(B[21]), .G(\C_G[22][22] ), .P(
        \C_P[22][22] ) );
  f_add_10 R0_0_22 ( .f_a(A[22]), .f_b(B[22]), .G(\C_G[23][23] ), .P(
        \C_P[23][23] ) );
  f_add_9 R0_0_23 ( .f_a(A[23]), .f_b(B[23]), .G(\C_G[24][24] ), .P(
        \C_P[24][24] ) );
  f_add_8 R0_0_24 ( .f_a(A[24]), .f_b(B[24]), .G(\C_G[25][25] ), .P(
        \C_P[25][25] ) );
  f_add_7 R0_0_25 ( .f_a(A[25]), .f_b(B[25]), .G(\C_G[26][26] ), .P(
        \C_P[26][26] ) );
  f_add_6 R0_0_26 ( .f_a(A[26]), .f_b(B[26]), .G(\C_G[27][27] ), .P(
        \C_P[27][27] ) );
  f_add_5 R0_0_27 ( .f_a(A[27]), .f_b(B[27]), .G(\C_G[28][28] ), .P(
        \C_P[28][28] ) );
  f_add_4 R0_0_28 ( .f_a(A[28]), .f_b(B[28]), .G(\C_G[29][29] ), .P(
        \C_P[29][29] ) );
  f_add_3 R0_0_29 ( .f_a(A[29]), .f_b(B[29]), .G(\C_G[30][30] ), .P(
        \C_P[30][30] ) );
  f_add_2 R0_0_30 ( .f_a(A[30]), .f_b(B[30]), .G(\C_G[31][31] ), .P(
        \C_P[31][31] ) );
  f_add_1 R0_0_31 ( .f_a(A[31]), .f_b(B[31]), .G(\C_G[32][32] ), .P(
        \C_P[32][32] ) );
  g_0 G_B_1_2 ( .Ga(\C_G[2][2] ), .Gb(\C_G[1][1] ), .P(\C_P[2][2] ), .G_out(
        \C_G[2][1] ) );
  pg_0 PG_B1_1_4 ( .Ga(\C_G[4][4] ), .Gb(\C_G[3][3] ), .P1(\C_P[4][4] ), .P2(
        \C_P[3][3] ), .G_out(\C_G[4][3] ), .P_out(\C_P[4][3] ) );
  pg_26 PG_B1_1_6 ( .Ga(\C_G[6][6] ), .Gb(\C_G[5][5] ), .P1(\C_P[6][6] ), .P2(
        \C_P[5][5] ), .G_out(\C_G[6][5] ), .P_out(\C_P[6][5] ) );
  pg_25 PG_B1_1_8 ( .Ga(\C_G[8][8] ), .Gb(\C_G[7][7] ), .P1(\C_P[8][8] ), .P2(
        \C_P[7][7] ), .G_out(\C_G[8][7] ), .P_out(\C_P[8][7] ) );
  pg_24 PG_B1_1_10 ( .Ga(\C_G[10][10] ), .Gb(\C_G[9][9] ), .P1(\C_P[10][10] ), 
        .P2(\C_P[9][9] ), .G_out(\C_G[10][9] ), .P_out(\C_P[10][9] ) );
  pg_23 PG_B1_1_12 ( .Ga(\C_G[12][12] ), .Gb(\C_G[11][11] ), .P1(\C_P[12][12] ), .P2(\C_P[11][11] ), .G_out(\C_G[12][11] ), .P_out(\C_P[12][11] ) );
  pg_22 PG_B1_1_14 ( .Ga(\C_G[14][14] ), .Gb(\C_G[13][13] ), .P1(\C_P[14][14] ), .P2(\C_P[13][13] ), .G_out(\C_G[14][13] ), .P_out(\C_P[14][13] ) );
  pg_21 PG_B1_1_16 ( .Ga(\C_G[16][16] ), .Gb(\C_G[15][15] ), .P1(\C_P[16][16] ), .P2(\C_P[15][15] ), .G_out(\C_G[16][15] ), .P_out(\C_P[16][15] ) );
  pg_20 PG_B1_1_18 ( .Ga(\C_G[18][18] ), .Gb(\C_G[17][17] ), .P1(\C_P[18][18] ), .P2(\C_P[17][17] ), .G_out(\C_G[18][17] ), .P_out(\C_P[18][17] ) );
  pg_19 PG_B1_1_20 ( .Ga(\C_G[20][20] ), .Gb(\C_G[19][19] ), .P1(\C_P[20][20] ), .P2(\C_P[19][19] ), .G_out(\C_G[20][19] ), .P_out(\C_P[20][19] ) );
  pg_18 PG_B1_1_22 ( .Ga(\C_G[22][22] ), .Gb(\C_G[21][21] ), .P1(\C_P[22][22] ), .P2(\C_P[21][21] ), .G_out(\C_G[22][21] ), .P_out(\C_P[22][21] ) );
  pg_17 PG_B1_1_24 ( .Ga(\C_G[24][24] ), .Gb(\C_G[23][23] ), .P1(\C_P[24][24] ), .P2(\C_P[23][23] ), .G_out(\C_G[24][23] ), .P_out(\C_P[24][23] ) );
  pg_16 PG_B1_1_26 ( .Ga(\C_G[26][26] ), .Gb(\C_G[25][25] ), .P1(\C_P[26][26] ), .P2(\C_P[25][25] ), .G_out(\C_G[26][25] ), .P_out(\C_P[26][25] ) );
  pg_15 PG_B1_1_28 ( .Ga(\C_G[28][28] ), .Gb(\C_G[27][27] ), .P1(\C_P[28][28] ), .P2(\C_P[27][27] ), .G_out(\C_G[28][27] ), .P_out(\C_P[28][27] ) );
  pg_14 PG_B1_1_30 ( .Ga(\C_G[30][30] ), .Gb(\C_G[29][29] ), .P1(\C_P[30][30] ), .P2(\C_P[29][29] ), .G_out(\C_G[30][29] ), .P_out(\C_P[30][29] ) );
  pg_13 PG_B1_1_32 ( .Ga(\C_G[32][32] ), .Gb(\C_G[31][31] ), .P1(\C_P[32][32] ), .P2(\C_P[31][31] ), .G_out(\C_G[32][31] ), .P_out(\C_P[32][31] ) );
  g_8 G_B_2_4 ( .Ga(\C_G[4][3] ), .Gb(\C_G[2][1] ), .P(\C_P[4][3] ), .G_out(
        n10) );
  pg_12 PG_B1_2_8 ( .Ga(\C_G[8][7] ), .Gb(\C_G[6][5] ), .P1(\C_P[8][7] ), .P2(
        \C_P[6][5] ), .G_out(\C_G[8][5] ), .P_out(\C_P[8][5] ) );
  pg_11 PG_B1_2_12 ( .Ga(\C_G[12][11] ), .Gb(\C_G[10][9] ), .P1(\C_P[12][11] ), 
        .P2(\C_P[10][9] ), .G_out(\C_G[12][9] ), .P_out(\C_P[12][9] ) );
  pg_10 PG_B1_2_16 ( .Ga(\C_G[16][15] ), .Gb(\C_G[14][13] ), .P1(\C_P[16][15] ), .P2(\C_P[14][13] ), .G_out(\C_G[16][13] ), .P_out(\C_P[16][13] ) );
  pg_9 PG_B1_2_20 ( .Ga(\C_G[20][19] ), .Gb(\C_G[18][17] ), .P1(\C_P[20][19] ), 
        .P2(\C_P[18][17] ), .G_out(\C_G[20][17] ), .P_out(\C_P[20][17] ) );
  pg_8 PG_B1_2_24 ( .Ga(\C_G[24][23] ), .Gb(\C_G[22][21] ), .P1(\C_P[24][23] ), 
        .P2(\C_P[22][21] ), .G_out(\C_G[24][21] ), .P_out(\C_P[24][21] ) );
  pg_7 PG_B1_2_28 ( .Ga(\C_G[28][27] ), .Gb(\C_G[26][25] ), .P1(\C_P[28][27] ), 
        .P2(\C_P[26][25] ), .G_out(\C_G[28][25] ), .P_out(\C_P[28][25] ) );
  pg_6 PG_B1_2_32 ( .Ga(\C_G[32][31] ), .Gb(\C_G[30][29] ), .P1(\C_P[32][31] ), 
        .P2(\C_P[30][29] ), .G_out(\C_G[32][29] ), .P_out(\C_P[32][29] ) );
  g_7 G_B_3_8 ( .Ga(\C_G[8][5] ), .Gb(n10), .P(\C_P[8][5] ), .G_out(n9) );
  pg_5 PG_B1_3_16 ( .Ga(\C_G[16][13] ), .Gb(\C_G[12][9] ), .P1(\C_P[16][13] ), 
        .P2(\C_P[12][9] ), .G_out(\C_G[16][9] ), .P_out(\C_P[16][9] ) );
  pg_4 PG_B1_3_24 ( .Ga(\C_G[24][21] ), .Gb(\C_G[20][17] ), .P1(\C_P[24][21] ), 
        .P2(\C_P[20][17] ), .G_out(\C_G[24][17] ), .P_out(\C_P[24][17] ) );
  pg_3 PG_B1_3_32 ( .Ga(\C_G[32][29] ), .Gb(\C_G[28][25] ), .P1(\C_P[32][29] ), 
        .P2(\C_P[28][25] ), .G_out(\C_G[32][25] ), .P_out(\C_P[32][25] ) );
  g_6 G_B_4_12 ( .Ga(n30), .Gb(n33), .P(\C_P[12][9] ), .G_out(Co[3]) );
  g_5 G_B_4_16 ( .Ga(\C_G[16][9] ), .Gb(n9), .P(\C_P[16][9] ), .G_out(n8) );
  pg_2 PG_B0_4_28 ( .Ga(\C_G[28][25] ), .Gb(\C_G[24][17] ), .P1(\C_P[28][25] ), 
        .P2(\C_P[24][17] ), .G_out(\C_G[28][17] ), .P_out(\C_P[28][17] ) );
  pg_1 PG_B1_4_32 ( .Ga(\C_G[32][25] ), .Gb(n31), .P1(\C_P[32][25] ), .P2(
        \C_P[24][17] ), .G_out(\C_G[32][17] ), .P_out(\C_P[32][17] ) );
  g_4 G_B_5_20 ( .Ga(\C_G[20][17] ), .Gb(n8), .P(\C_P[20][17] ), .G_out(Co[5])
         );
  g_3 G_B_5_24 ( .Ga(n31), .Gb(n8), .P(\C_P[24][17] ), .G_out(Co[6]) );
  g_2 G_B_5_28 ( .Ga(\C_G[28][17] ), .Gb(n8), .P(\C_P[28][17] ), .G_out(Co[7])
         );
  g_1 G_B_5_32 ( .Ga(\C_G[32][17] ), .Gb(Co[4]), .P(\C_P[32][17] ), .G_out(
        Co[8]) );
  CLKBUF_X1 U1 ( .A(n9), .Z(n33) );
  BUF_X1 U2 ( .A(n33), .Z(Co[2]) );
  BUF_X2 U3 ( .A(n8), .Z(Co[4]) );
  CLKBUF_X1 U4 ( .A(\C_G[12][9] ), .Z(n30) );
  CLKBUF_X1 U5 ( .A(\C_G[24][17] ), .Z(n31) );
  CLKBUF_X1 U6 ( .A(n10), .Z(Co[1]) );
endmodule


module FA_0 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n2, n3, n16;

  XOR2_X1 U3 ( .A(Ci), .B(n16), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n3) );
  XOR2_X1 U1 ( .A(A), .B(B), .Z(n16) );
  INV_X1 U2 ( .A(n2), .ZN(Co) );
  AOI22_X1 U5 ( .A1(B), .A2(A), .B1(n3), .B2(Ci), .ZN(n2) );
endmodule


module FA_61 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n16, n17;

  XOR2_X1 U3 ( .A(Ci), .B(n16), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n16) );
  INV_X1 U1 ( .A(n17), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n16), .B2(Ci), .ZN(n17) );
endmodule


module FA_62 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n16, n17;

  XOR2_X1 U3 ( .A(Ci), .B(n16), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n16) );
  INV_X1 U1 ( .A(n17), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n16), .B2(Ci), .ZN(n17) );
endmodule


module FA_63 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n16, n17;

  XOR2_X1 U3 ( .A(Ci), .B(n16), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n16) );
  INV_X1 U1 ( .A(n17), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n16), .B2(Ci), .ZN(n17) );
endmodule


module RCA_NBIT4_0 ( A, B, Ci, Co, So );
  input [3:0] A;
  input [3:0] B;
  output [3:0] So;
  input Ci;
  output Co;

  wire   [3:1] C_TMP;

  FA_0 FAI_1 ( .A(A[0]), .B(B[0]), .Ci(Ci), .S(So[0]), .Co(C_TMP[1]) );
  FA_63 FAI_2 ( .A(A[1]), .B(B[1]), .Ci(C_TMP[1]), .S(So[1]), .Co(C_TMP[2]) );
  FA_62 FAI_3 ( .A(A[2]), .B(B[2]), .Ci(C_TMP[2]), .S(So[2]), .Co(C_TMP[3]) );
  FA_61 FAI_4 ( .A(A[3]), .B(B[3]), .Ci(C_TMP[3]), .S(So[3]), .Co(Co) );
endmodule


module mux_0 ( A, B, SEL, Y );
  input [3:0] A;
  input [3:0] B;
  output [3:0] Y;
  input SEL;
  wire   n5, n6, n7, n8, n9;

  INV_X1 U1 ( .A(n6), .ZN(Y[3]) );
  AOI22_X1 U2 ( .A1(SEL), .A2(A[3]), .B1(B[3]), .B2(n5), .ZN(n6) );
  INV_X1 U3 ( .A(SEL), .ZN(n5) );
  INV_X1 U4 ( .A(n8), .ZN(Y[1]) );
  AOI22_X1 U5 ( .A1(A[1]), .A2(SEL), .B1(B[1]), .B2(n5), .ZN(n8) );
  INV_X1 U6 ( .A(n7), .ZN(Y[2]) );
  AOI22_X1 U7 ( .A1(A[2]), .A2(SEL), .B1(B[2]), .B2(n5), .ZN(n7) );
  INV_X1 U8 ( .A(n9), .ZN(Y[0]) );
  AOI22_X1 U9 ( .A1(A[0]), .A2(SEL), .B1(B[0]), .B2(n5), .ZN(n9) );
endmodule


module FA_57 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n16, n17;

  XOR2_X1 U3 ( .A(Ci), .B(n16), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n16) );
  INV_X1 U1 ( .A(n17), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n16), .B2(Ci), .ZN(n17) );
endmodule


module FA_58 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n16, n17;

  XOR2_X1 U3 ( .A(Ci), .B(n16), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n16) );
  INV_X1 U1 ( .A(n17), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n16), .B2(Ci), .ZN(n17) );
endmodule


module FA_59 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n16, n17;

  XOR2_X1 U3 ( .A(Ci), .B(n16), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n16) );
  INV_X1 U1 ( .A(n17), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n16), .B2(Ci), .ZN(n17) );
endmodule


module FA_60 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n16, n17;

  XOR2_X1 U3 ( .A(Ci), .B(n16), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n16) );
  INV_X1 U1 ( .A(n17), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n16), .B2(Ci), .ZN(n17) );
endmodule


module RCA_NBIT4_15 ( A, B, Ci, Co, So );
  input [3:0] A;
  input [3:0] B;
  output [3:0] So;
  input Ci;
  output Co;

  wire   [3:1] C_TMP;

  FA_60 FAI_1 ( .A(A[0]), .B(B[0]), .Ci(Ci), .S(So[0]), .Co(C_TMP[1]) );
  FA_59 FAI_2 ( .A(A[1]), .B(B[1]), .Ci(C_TMP[1]), .S(So[1]), .Co(C_TMP[2]) );
  FA_58 FAI_3 ( .A(A[2]), .B(B[2]), .Ci(C_TMP[2]), .S(So[2]), .Co(C_TMP[3]) );
  FA_57 FAI_4 ( .A(A[3]), .B(B[3]), .Ci(C_TMP[3]), .S(So[3]), .Co(Co) );
endmodule


module csb_ANBIT4_0 ( A_c, B_c, Ci_c, So_c );
  input [3:0] A_c;
  input [3:0] B_c;
  output [3:0] So_c;
  input Ci_c;

  wire   [3:0] S_TMP_Ba;
  wire   [3:0] S_TMP_Bb;

  RCA_NBIT4_0 Ba ( .A(A_c), .B(B_c), .Ci(1'b1), .So(S_TMP_Ba) );
  RCA_NBIT4_15 Bb ( .A(A_c), .B(B_c), .Ci(1'b0), .So(S_TMP_Bb) );
  mux_0 Mu ( .A(S_TMP_Ba), .B(S_TMP_Bb), .SEL(Ci_c), .Y(So_c) );
endmodule


module mux_7 ( A, B, SEL, Y );
  input [3:0] A;
  input [3:0] B;
  output [3:0] Y;
  input SEL;
  wire   n5, n6, n7, n8, n9;

  INV_X1 U1 ( .A(n8), .ZN(Y[1]) );
  INV_X1 U2 ( .A(n7), .ZN(Y[2]) );
  INV_X1 U3 ( .A(n6), .ZN(Y[3]) );
  INV_X1 U4 ( .A(n9), .ZN(Y[0]) );
  AOI22_X1 U5 ( .A1(SEL), .A2(A[3]), .B1(B[3]), .B2(n5), .ZN(n6) );
  AOI22_X1 U6 ( .A1(A[2]), .A2(SEL), .B1(B[2]), .B2(n5), .ZN(n7) );
  AOI22_X1 U7 ( .A1(A[1]), .A2(SEL), .B1(B[1]), .B2(n5), .ZN(n8) );
  AOI22_X1 U8 ( .A1(A[0]), .A2(SEL), .B1(B[0]), .B2(n5), .ZN(n9) );
  INV_X1 U9 ( .A(SEL), .ZN(n5) );
endmodule


module FA_49 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n16, n17;

  XOR2_X1 U3 ( .A(Ci), .B(n16), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n16) );
  INV_X1 U1 ( .A(n17), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n16), .B2(Ci), .ZN(n17) );
endmodule


module FA_50 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n16, n17;

  XOR2_X1 U3 ( .A(Ci), .B(n16), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n16) );
  INV_X1 U1 ( .A(n17), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n16), .B2(Ci), .ZN(n17) );
endmodule


module FA_51 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n16, n17;

  XOR2_X1 U3 ( .A(Ci), .B(n16), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n16) );
  INV_X1 U1 ( .A(n17), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n16), .B2(Ci), .ZN(n17) );
endmodule


module FA_52 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n16, n17;

  XOR2_X1 U3 ( .A(Ci), .B(n16), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n16) );
  INV_X1 U1 ( .A(n17), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n16), .B2(Ci), .ZN(n17) );
endmodule


module RCA_NBIT4_13 ( A, B, Ci, Co, So );
  input [3:0] A;
  input [3:0] B;
  output [3:0] So;
  input Ci;
  output Co;

  wire   [3:1] C_TMP;

  FA_52 FAI_1 ( .A(A[0]), .B(B[0]), .Ci(Ci), .S(So[0]), .Co(C_TMP[1]) );
  FA_51 FAI_2 ( .A(A[1]), .B(B[1]), .Ci(C_TMP[1]), .S(So[1]), .Co(C_TMP[2]) );
  FA_50 FAI_3 ( .A(A[2]), .B(B[2]), .Ci(C_TMP[2]), .S(So[2]), .Co(C_TMP[3]) );
  FA_49 FAI_4 ( .A(A[3]), .B(B[3]), .Ci(C_TMP[3]), .S(So[3]), .Co(Co) );
endmodule


module FA_53 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n16, n17;

  XOR2_X1 U3 ( .A(Ci), .B(n16), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n16) );
  INV_X1 U1 ( .A(n17), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n16), .B2(Ci), .ZN(n17) );
endmodule


module FA_54 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n16, n17;

  XOR2_X1 U3 ( .A(Ci), .B(n16), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n16) );
  INV_X1 U1 ( .A(n17), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n16), .B2(Ci), .ZN(n17) );
endmodule


module FA_55 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n16, n17;

  XOR2_X1 U3 ( .A(Ci), .B(n16), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n16) );
  INV_X1 U1 ( .A(n17), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n16), .B2(Ci), .ZN(n17) );
endmodule


module FA_56 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n16, n17, n18;

  XOR2_X1 U3 ( .A(Ci), .B(n16), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n17) );
  XOR2_X1 U1 ( .A(A), .B(B), .Z(n16) );
  INV_X1 U2 ( .A(n18), .ZN(Co) );
  AOI22_X1 U5 ( .A1(B), .A2(A), .B1(n17), .B2(Ci), .ZN(n18) );
endmodule


module RCA_NBIT4_14 ( A, B, Ci, Co, So );
  input [3:0] A;
  input [3:0] B;
  output [3:0] So;
  input Ci;
  output Co;

  wire   [3:1] C_TMP;

  FA_56 FAI_1 ( .A(A[0]), .B(B[0]), .Ci(Ci), .S(So[0]), .Co(C_TMP[1]) );
  FA_55 FAI_2 ( .A(A[1]), .B(B[1]), .Ci(C_TMP[1]), .S(So[1]), .Co(C_TMP[2]) );
  FA_54 FAI_3 ( .A(A[2]), .B(B[2]), .Ci(C_TMP[2]), .S(So[2]), .Co(C_TMP[3]) );
  FA_53 FAI_4 ( .A(A[3]), .B(B[3]), .Ci(C_TMP[3]), .S(So[3]), .Co(Co) );
endmodule


module csb_ANBIT4_7 ( A_c, B_c, Ci_c, So_c );
  input [3:0] A_c;
  input [3:0] B_c;
  output [3:0] So_c;
  input Ci_c;

  wire   [3:0] S_TMP_Ba;
  wire   [3:0] S_TMP_Bb;

  RCA_NBIT4_14 Ba ( .A(A_c), .B(B_c), .Ci(1'b1), .So(S_TMP_Ba) );
  RCA_NBIT4_13 Bb ( .A(A_c), .B(B_c), .Ci(1'b0), .So(S_TMP_Bb) );
  mux_7 Mu ( .A(S_TMP_Ba), .B(S_TMP_Bb), .SEL(Ci_c), .Y(So_c) );
endmodule


module mux_6 ( A, B, SEL, Y );
  input [3:0] A;
  input [3:0] B;
  output [3:0] Y;
  input SEL;
  wire   n5, n7, n8, n9, n27, n28;

  NAND2_X1 U1 ( .A1(n27), .A2(n28), .ZN(Y[3]) );
  NAND2_X1 U2 ( .A1(SEL), .A2(A[3]), .ZN(n27) );
  NAND2_X1 U3 ( .A1(B[3]), .A2(n5), .ZN(n28) );
  INV_X1 U4 ( .A(n7), .ZN(Y[2]) );
  INV_X1 U5 ( .A(n8), .ZN(Y[1]) );
  INV_X1 U6 ( .A(n9), .ZN(Y[0]) );
  AOI22_X1 U7 ( .A1(A[2]), .A2(SEL), .B1(B[2]), .B2(n5), .ZN(n7) );
  AOI22_X1 U8 ( .A1(A[1]), .A2(SEL), .B1(B[1]), .B2(n5), .ZN(n8) );
  AOI22_X1 U9 ( .A1(A[0]), .A2(SEL), .B1(B[0]), .B2(n5), .ZN(n9) );
  INV_X1 U10 ( .A(SEL), .ZN(n5) );
endmodule


module FA_41 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n16, n17;

  XOR2_X1 U4 ( .A(A), .B(B), .Z(n16) );
  XOR2_X1 U1 ( .A(Ci), .B(n16), .Z(S) );
  INV_X1 U2 ( .A(n17), .ZN(Co) );
  AOI22_X1 U3 ( .A1(B), .A2(A), .B1(n16), .B2(Ci), .ZN(n17) );
endmodule


module FA_42 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n16, n17;

  XOR2_X1 U3 ( .A(Ci), .B(n16), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n16) );
  INV_X1 U1 ( .A(n17), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n16), .B2(Ci), .ZN(n17) );
endmodule


module FA_43 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n16, n17;

  XOR2_X1 U3 ( .A(Ci), .B(n16), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n16) );
  INV_X1 U1 ( .A(n17), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n16), .B2(Ci), .ZN(n17) );
endmodule


module FA_44 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n16, n17;

  XOR2_X1 U3 ( .A(Ci), .B(n16), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n16) );
  INV_X1 U1 ( .A(n17), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n16), .B2(Ci), .ZN(n17) );
endmodule


module RCA_NBIT4_11 ( A, B, Ci, Co, So );
  input [3:0] A;
  input [3:0] B;
  output [3:0] So;
  input Ci;
  output Co;

  wire   [3:1] C_TMP;

  FA_44 FAI_1 ( .A(A[0]), .B(B[0]), .Ci(Ci), .S(So[0]), .Co(C_TMP[1]) );
  FA_43 FAI_2 ( .A(A[1]), .B(B[1]), .Ci(C_TMP[1]), .S(So[1]), .Co(C_TMP[2]) );
  FA_42 FAI_3 ( .A(A[2]), .B(B[2]), .Ci(C_TMP[2]), .S(So[2]), .Co(C_TMP[3]) );
  FA_41 FAI_4 ( .A(A[3]), .B(B[3]), .Ci(C_TMP[3]), .S(So[3]), .Co(Co) );
endmodule


module FA_45 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n16, n17;

  XOR2_X1 U3 ( .A(Ci), .B(n16), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n16) );
  INV_X1 U1 ( .A(n17), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n16), .B2(Ci), .ZN(n17) );
endmodule


module FA_46 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n16, n17;

  XOR2_X1 U3 ( .A(Ci), .B(n16), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n16) );
  INV_X1 U1 ( .A(n17), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n16), .B2(Ci), .ZN(n17) );
endmodule


module FA_47 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n16, n17;

  XOR2_X1 U3 ( .A(Ci), .B(n16), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n16) );
  INV_X1 U1 ( .A(n17), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n16), .B2(Ci), .ZN(n17) );
endmodule


module FA_48 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n16, n17;

  XOR2_X1 U3 ( .A(Ci), .B(n16), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n16) );
  INV_X1 U1 ( .A(n17), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n16), .B2(Ci), .ZN(n17) );
endmodule


module RCA_NBIT4_12 ( A, B, Ci, Co, So );
  input [3:0] A;
  input [3:0] B;
  output [3:0] So;
  input Ci;
  output Co;

  wire   [3:1] C_TMP;

  FA_48 FAI_1 ( .A(A[0]), .B(B[0]), .Ci(Ci), .S(So[0]), .Co(C_TMP[1]) );
  FA_47 FAI_2 ( .A(A[1]), .B(B[1]), .Ci(C_TMP[1]), .S(So[1]), .Co(C_TMP[2]) );
  FA_46 FAI_3 ( .A(A[2]), .B(B[2]), .Ci(C_TMP[2]), .S(So[2]), .Co(C_TMP[3]) );
  FA_45 FAI_4 ( .A(A[3]), .B(B[3]), .Ci(C_TMP[3]), .S(So[3]), .Co(Co) );
endmodule


module csb_ANBIT4_6 ( A_c, B_c, Ci_c, So_c );
  input [3:0] A_c;
  input [3:0] B_c;
  output [3:0] So_c;
  input Ci_c;

  wire   [3:0] S_TMP_Ba;
  wire   [3:0] S_TMP_Bb;

  RCA_NBIT4_12 Ba ( .A(A_c), .B(B_c), .Ci(1'b1), .So(S_TMP_Ba) );
  RCA_NBIT4_11 Bb ( .A(A_c), .B(B_c), .Ci(1'b0), .So(S_TMP_Bb) );
  mux_6 Mu ( .A(S_TMP_Ba), .B(S_TMP_Bb), .SEL(Ci_c), .Y(So_c) );
endmodule


module mux_5 ( A, B, SEL, Y );
  input [3:0] A;
  input [3:0] B;
  output [3:0] Y;
  input SEL;
  wire   n5, n9;

  MUX2_X1 U1 ( .A(B[1]), .B(A[1]), .S(SEL), .Z(Y[1]) );
  MUX2_X1 U2 ( .A(B[2]), .B(A[2]), .S(SEL), .Z(Y[2]) );
  MUX2_X1 U3 ( .A(B[3]), .B(A[3]), .S(SEL), .Z(Y[3]) );
  INV_X1 U4 ( .A(n9), .ZN(Y[0]) );
  INV_X1 U5 ( .A(SEL), .ZN(n5) );
  AOI22_X1 U6 ( .A1(SEL), .A2(A[0]), .B1(n5), .B2(B[0]), .ZN(n9) );
endmodule


module FA_33 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n16, n17;

  XOR2_X1 U3 ( .A(Ci), .B(n16), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n16) );
  INV_X1 U1 ( .A(n17), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n16), .B2(Ci), .ZN(n17) );
endmodule


module FA_34 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n16, n17;

  XOR2_X1 U3 ( .A(Ci), .B(n16), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n16) );
  INV_X1 U1 ( .A(n17), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n16), .B2(Ci), .ZN(n17) );
endmodule


module FA_35 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n16, n17;

  XOR2_X1 U3 ( .A(Ci), .B(n16), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n16) );
  INV_X1 U1 ( .A(n17), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n16), .B2(Ci), .ZN(n17) );
endmodule


module FA_36 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n16, n17;

  XOR2_X1 U3 ( .A(Ci), .B(n16), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n16) );
  INV_X1 U1 ( .A(n17), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n16), .B2(Ci), .ZN(n17) );
endmodule


module RCA_NBIT4_9 ( A, B, Ci, Co, So );
  input [3:0] A;
  input [3:0] B;
  output [3:0] So;
  input Ci;
  output Co;

  wire   [3:1] C_TMP;

  FA_36 FAI_1 ( .A(A[0]), .B(B[0]), .Ci(Ci), .S(So[0]), .Co(C_TMP[1]) );
  FA_35 FAI_2 ( .A(A[1]), .B(B[1]), .Ci(C_TMP[1]), .S(So[1]), .Co(C_TMP[2]) );
  FA_34 FAI_3 ( .A(A[2]), .B(B[2]), .Ci(C_TMP[2]), .S(So[2]), .Co(C_TMP[3]) );
  FA_33 FAI_4 ( .A(A[3]), .B(B[3]), .Ci(C_TMP[3]), .S(So[3]), .Co(Co) );
endmodule


module FA_37 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n16, n17;

  XOR2_X1 U3 ( .A(Ci), .B(n16), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n16) );
  INV_X1 U1 ( .A(n17), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n16), .B2(Ci), .ZN(n17) );
endmodule


module FA_38 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n16, n17;

  XOR2_X1 U3 ( .A(Ci), .B(n16), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n16) );
  INV_X1 U1 ( .A(n17), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n16), .B2(Ci), .ZN(n17) );
endmodule


module FA_39 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n16, n17;

  XOR2_X1 U3 ( .A(Ci), .B(n16), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n16) );
  INV_X1 U1 ( .A(n17), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n16), .B2(Ci), .ZN(n17) );
endmodule


module FA_40 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n16, n17;

  XOR2_X1 U3 ( .A(Ci), .B(n16), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n16) );
  INV_X1 U1 ( .A(n17), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n16), .B2(Ci), .ZN(n17) );
endmodule


module RCA_NBIT4_10 ( A, B, Ci, Co, So );
  input [3:0] A;
  input [3:0] B;
  output [3:0] So;
  input Ci;
  output Co;

  wire   [3:1] C_TMP;

  FA_40 FAI_1 ( .A(A[0]), .B(B[0]), .Ci(Ci), .S(So[0]), .Co(C_TMP[1]) );
  FA_39 FAI_2 ( .A(A[1]), .B(B[1]), .Ci(C_TMP[1]), .S(So[1]), .Co(C_TMP[2]) );
  FA_38 FAI_3 ( .A(A[2]), .B(B[2]), .Ci(C_TMP[2]), .S(So[2]), .Co(C_TMP[3]) );
  FA_37 FAI_4 ( .A(A[3]), .B(B[3]), .Ci(C_TMP[3]), .S(So[3]), .Co(Co) );
endmodule


module csb_ANBIT4_5 ( A_c, B_c, Ci_c, So_c );
  input [3:0] A_c;
  input [3:0] B_c;
  output [3:0] So_c;
  input Ci_c;

  wire   [3:0] S_TMP_Ba;
  wire   [3:0] S_TMP_Bb;

  RCA_NBIT4_10 Ba ( .A(A_c), .B(B_c), .Ci(1'b1), .So(S_TMP_Ba) );
  RCA_NBIT4_9 Bb ( .A(A_c), .B(B_c), .Ci(1'b0), .So(S_TMP_Bb) );
  mux_5 Mu ( .A(S_TMP_Ba), .B(S_TMP_Bb), .SEL(Ci_c), .Y(So_c) );
endmodule


module mux_4 ( A, B, SEL, Y );
  input [3:0] A;
  input [3:0] B;
  output [3:0] Y;
  input SEL;
  wire   n9, net6861;

  MUX2_X1 U1 ( .A(B[1]), .B(A[1]), .S(SEL), .Z(Y[1]) );
  MUX2_X1 U2 ( .A(B[2]), .B(A[2]), .S(SEL), .Z(Y[2]) );
  MUX2_X1 U3 ( .A(B[3]), .B(A[3]), .S(SEL), .Z(Y[3]) );
  INV_X1 U4 ( .A(SEL), .ZN(net6861) );
  INV_X1 U5 ( .A(n9), .ZN(Y[0]) );
  AOI22_X1 U6 ( .A1(SEL), .A2(A[0]), .B1(net6861), .B2(B[0]), .ZN(n9) );
endmodule


module FA_25 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n16, n17;

  XOR2_X1 U3 ( .A(Ci), .B(n16), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n16) );
  INV_X1 U1 ( .A(n17), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n16), .B2(Ci), .ZN(n17) );
endmodule


module FA_26 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n16, n17;

  XOR2_X1 U3 ( .A(Ci), .B(n16), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n16) );
  INV_X1 U1 ( .A(n17), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n16), .B2(Ci), .ZN(n17) );
endmodule


module FA_27 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n16, n17;

  XOR2_X1 U3 ( .A(Ci), .B(n16), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n16) );
  INV_X1 U1 ( .A(n17), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n16), .B2(Ci), .ZN(n17) );
endmodule


module FA_28 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n16, n17;

  XOR2_X1 U3 ( .A(Ci), .B(n16), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n16) );
  INV_X1 U1 ( .A(n17), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n16), .B2(Ci), .ZN(n17) );
endmodule


module RCA_NBIT4_7 ( A, B, Ci, Co, So );
  input [3:0] A;
  input [3:0] B;
  output [3:0] So;
  input Ci;
  output Co;

  wire   [3:1] C_TMP;

  FA_28 FAI_1 ( .A(A[0]), .B(B[0]), .Ci(Ci), .S(So[0]), .Co(C_TMP[1]) );
  FA_27 FAI_2 ( .A(A[1]), .B(B[1]), .Ci(C_TMP[1]), .S(So[1]), .Co(C_TMP[2]) );
  FA_26 FAI_3 ( .A(A[2]), .B(B[2]), .Ci(C_TMP[2]), .S(So[2]), .Co(C_TMP[3]) );
  FA_25 FAI_4 ( .A(A[3]), .B(B[3]), .Ci(C_TMP[3]), .S(So[3]), .Co(Co) );
endmodule


module FA_29 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n16, n17;

  XOR2_X1 U3 ( .A(Ci), .B(n16), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n16) );
  INV_X1 U1 ( .A(n17), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n16), .B2(Ci), .ZN(n17) );
endmodule


module FA_30 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n16, n17;

  XOR2_X1 U3 ( .A(Ci), .B(n16), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n16) );
  INV_X1 U1 ( .A(n17), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n16), .B2(Ci), .ZN(n17) );
endmodule


module FA_31 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n16, n17;

  XOR2_X1 U3 ( .A(Ci), .B(n16), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n16) );
  INV_X1 U1 ( .A(n17), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n16), .B2(Ci), .ZN(n17) );
endmodule


module FA_32 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n16, n17;

  XOR2_X1 U3 ( .A(Ci), .B(n16), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n16) );
  INV_X1 U1 ( .A(n17), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n16), .B2(Ci), .ZN(n17) );
endmodule


module RCA_NBIT4_8 ( A, B, Ci, Co, So );
  input [3:0] A;
  input [3:0] B;
  output [3:0] So;
  input Ci;
  output Co;

  wire   [3:1] C_TMP;

  FA_32 FAI_1 ( .A(A[0]), .B(B[0]), .Ci(Ci), .S(So[0]), .Co(C_TMP[1]) );
  FA_31 FAI_2 ( .A(A[1]), .B(B[1]), .Ci(C_TMP[1]), .S(So[1]), .Co(C_TMP[2]) );
  FA_30 FAI_3 ( .A(A[2]), .B(B[2]), .Ci(C_TMP[2]), .S(So[2]), .Co(C_TMP[3]) );
  FA_29 FAI_4 ( .A(A[3]), .B(B[3]), .Ci(C_TMP[3]), .S(So[3]), .Co(Co) );
endmodule


module csb_ANBIT4_4 ( A_c, B_c, Ci_c, So_c );
  input [3:0] A_c;
  input [3:0] B_c;
  output [3:0] So_c;
  input Ci_c;

  wire   [3:0] S_TMP_Ba;
  wire   [3:0] S_TMP_Bb;

  RCA_NBIT4_8 Ba ( .A(A_c), .B(B_c), .Ci(1'b1), .So(S_TMP_Ba) );
  RCA_NBIT4_7 Bb ( .A(A_c), .B(B_c), .Ci(1'b0), .So(S_TMP_Bb) );
  mux_4 Mu ( .A(S_TMP_Ba), .B(S_TMP_Bb), .SEL(Ci_c), .Y(So_c) );
endmodule


module mux_3 ( A, B, SEL, Y );
  input [3:0] A;
  input [3:0] B;
  output [3:0] Y;
  input SEL;


  MUX2_X1 U1 ( .A(B[0]), .B(A[0]), .S(SEL), .Z(Y[0]) );
  MUX2_X1 U2 ( .A(B[1]), .B(A[1]), .S(SEL), .Z(Y[1]) );
  MUX2_X1 U3 ( .A(B[2]), .B(A[2]), .S(SEL), .Z(Y[2]) );
  MUX2_X1 U4 ( .A(B[3]), .B(A[3]), .S(SEL), .Z(Y[3]) );
endmodule


module FA_17 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n16, n17;

  XOR2_X1 U3 ( .A(Ci), .B(n16), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n16) );
  INV_X1 U1 ( .A(n17), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n16), .B2(Ci), .ZN(n17) );
endmodule


module FA_18 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n16, n17;

  XOR2_X1 U3 ( .A(Ci), .B(n16), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n16) );
  INV_X1 U1 ( .A(n17), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n16), .B2(Ci), .ZN(n17) );
endmodule


module FA_19 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n16, n17;

  XOR2_X1 U3 ( .A(Ci), .B(n16), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n16) );
  INV_X1 U1 ( .A(n17), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n16), .B2(Ci), .ZN(n17) );
endmodule


module FA_20 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n16, n17;

  XOR2_X1 U3 ( .A(Ci), .B(n16), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n16) );
  INV_X1 U1 ( .A(n17), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n16), .B2(Ci), .ZN(n17) );
endmodule


module RCA_NBIT4_5 ( A, B, Ci, Co, So );
  input [3:0] A;
  input [3:0] B;
  output [3:0] So;
  input Ci;
  output Co;

  wire   [3:1] C_TMP;

  FA_20 FAI_1 ( .A(A[0]), .B(B[0]), .Ci(Ci), .S(So[0]), .Co(C_TMP[1]) );
  FA_19 FAI_2 ( .A(A[1]), .B(B[1]), .Ci(C_TMP[1]), .S(So[1]), .Co(C_TMP[2]) );
  FA_18 FAI_3 ( .A(A[2]), .B(B[2]), .Ci(C_TMP[2]), .S(So[2]), .Co(C_TMP[3]) );
  FA_17 FAI_4 ( .A(A[3]), .B(B[3]), .Ci(C_TMP[3]), .S(So[3]), .Co(Co) );
endmodule


module FA_21 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n16, n17;

  XOR2_X1 U3 ( .A(Ci), .B(n16), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n16) );
  INV_X1 U1 ( .A(n17), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n16), .B2(Ci), .ZN(n17) );
endmodule


module FA_22 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n16, n17;

  XOR2_X1 U3 ( .A(Ci), .B(n16), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n16) );
  INV_X1 U1 ( .A(n17), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n16), .B2(Ci), .ZN(n17) );
endmodule


module FA_23 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n16, n17;

  XOR2_X1 U3 ( .A(Ci), .B(n16), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n16) );
  INV_X1 U1 ( .A(n17), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n16), .B2(Ci), .ZN(n17) );
endmodule


module FA_24 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n16, n17;

  XOR2_X1 U3 ( .A(Ci), .B(n16), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n16) );
  INV_X1 U1 ( .A(n17), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n16), .B2(Ci), .ZN(n17) );
endmodule


module RCA_NBIT4_6 ( A, B, Ci, Co, So );
  input [3:0] A;
  input [3:0] B;
  output [3:0] So;
  input Ci;
  output Co;

  wire   [3:1] C_TMP;

  FA_24 FAI_1 ( .A(A[0]), .B(B[0]), .Ci(Ci), .S(So[0]), .Co(C_TMP[1]) );
  FA_23 FAI_2 ( .A(A[1]), .B(B[1]), .Ci(C_TMP[1]), .S(So[1]), .Co(C_TMP[2]) );
  FA_22 FAI_3 ( .A(A[2]), .B(B[2]), .Ci(C_TMP[2]), .S(So[2]), .Co(C_TMP[3]) );
  FA_21 FAI_4 ( .A(A[3]), .B(B[3]), .Ci(C_TMP[3]), .S(So[3]), .Co(Co) );
endmodule


module csb_ANBIT4_3 ( A_c, B_c, Ci_c, So_c );
  input [3:0] A_c;
  input [3:0] B_c;
  output [3:0] So_c;
  input Ci_c;

  wire   [3:0] S_TMP_Ba;
  wire   [3:0] S_TMP_Bb;

  RCA_NBIT4_6 Ba ( .A(A_c), .B(B_c), .Ci(1'b1), .So(S_TMP_Ba) );
  RCA_NBIT4_5 Bb ( .A(A_c), .B(B_c), .Ci(1'b0), .So(S_TMP_Bb) );
  mux_3 Mu ( .A(S_TMP_Ba), .B(S_TMP_Bb), .SEL(Ci_c), .Y(So_c) );
endmodule


module mux_2 ( A, B, SEL, Y );
  input [3:0] A;
  input [3:0] B;
  output [3:0] Y;
  input SEL;


  MUX2_X1 U1 ( .A(B[0]), .B(A[0]), .S(SEL), .Z(Y[0]) );
  MUX2_X1 U2 ( .A(B[1]), .B(A[1]), .S(SEL), .Z(Y[1]) );
  MUX2_X1 U3 ( .A(B[2]), .B(A[2]), .S(SEL), .Z(Y[2]) );
  MUX2_X1 U4 ( .A(B[3]), .B(A[3]), .S(SEL), .Z(Y[3]) );
endmodule


module FA_9 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n16, n17;

  XOR2_X1 U3 ( .A(Ci), .B(n16), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n16) );
  INV_X1 U1 ( .A(n17), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n16), .B2(Ci), .ZN(n17) );
endmodule


module FA_10 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n16, n17;

  XOR2_X1 U3 ( .A(Ci), .B(n16), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n16) );
  INV_X1 U1 ( .A(n17), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n16), .B2(Ci), .ZN(n17) );
endmodule


module FA_11 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n16, n17;

  XOR2_X1 U3 ( .A(Ci), .B(n16), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n16) );
  INV_X1 U1 ( .A(n17), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n16), .B2(Ci), .ZN(n17) );
endmodule


module FA_12 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n16, n17;

  XOR2_X1 U3 ( .A(Ci), .B(n16), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n16) );
  INV_X1 U1 ( .A(n17), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n16), .B2(Ci), .ZN(n17) );
endmodule


module RCA_NBIT4_3 ( A, B, Ci, Co, So );
  input [3:0] A;
  input [3:0] B;
  output [3:0] So;
  input Ci;
  output Co;

  wire   [3:1] C_TMP;

  FA_12 FAI_1 ( .A(A[0]), .B(B[0]), .Ci(Ci), .S(So[0]), .Co(C_TMP[1]) );
  FA_11 FAI_2 ( .A(A[1]), .B(B[1]), .Ci(C_TMP[1]), .S(So[1]), .Co(C_TMP[2]) );
  FA_10 FAI_3 ( .A(A[2]), .B(B[2]), .Ci(C_TMP[2]), .S(So[2]), .Co(C_TMP[3]) );
  FA_9 FAI_4 ( .A(A[3]), .B(B[3]), .Ci(C_TMP[3]), .S(So[3]), .Co(Co) );
endmodule


module FA_13 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n16, n17;

  XOR2_X1 U3 ( .A(Ci), .B(n16), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n16) );
  INV_X1 U1 ( .A(n17), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n16), .B2(Ci), .ZN(n17) );
endmodule


module FA_14 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n16, n17;

  XOR2_X1 U3 ( .A(Ci), .B(n16), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n16) );
  INV_X1 U1 ( .A(n17), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n16), .B2(Ci), .ZN(n17) );
endmodule


module FA_15 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n16, n17;

  XOR2_X1 U3 ( .A(Ci), .B(n16), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n16) );
  INV_X1 U1 ( .A(n17), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n16), .B2(Ci), .ZN(n17) );
endmodule


module FA_16 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n16, n17;

  XOR2_X1 U3 ( .A(Ci), .B(n16), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n16) );
  INV_X1 U1 ( .A(n17), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n16), .B2(Ci), .ZN(n17) );
endmodule


module RCA_NBIT4_4 ( A, B, Ci, Co, So );
  input [3:0] A;
  input [3:0] B;
  output [3:0] So;
  input Ci;
  output Co;

  wire   [3:1] C_TMP;

  FA_16 FAI_1 ( .A(A[0]), .B(B[0]), .Ci(Ci), .S(So[0]), .Co(C_TMP[1]) );
  FA_15 FAI_2 ( .A(A[1]), .B(B[1]), .Ci(C_TMP[1]), .S(So[1]), .Co(C_TMP[2]) );
  FA_14 FAI_3 ( .A(A[2]), .B(B[2]), .Ci(C_TMP[2]), .S(So[2]), .Co(C_TMP[3]) );
  FA_13 FAI_4 ( .A(A[3]), .B(B[3]), .Ci(C_TMP[3]), .S(So[3]), .Co(Co) );
endmodule


module csb_ANBIT4_2 ( A_c, B_c, Ci_c, So_c );
  input [3:0] A_c;
  input [3:0] B_c;
  output [3:0] So_c;
  input Ci_c;

  wire   [3:0] S_TMP_Ba;
  wire   [3:0] S_TMP_Bb;

  RCA_NBIT4_4 Ba ( .A(A_c), .B(B_c), .Ci(1'b1), .So(S_TMP_Ba) );
  RCA_NBIT4_3 Bb ( .A(A_c), .B(B_c), .Ci(1'b0), .So(S_TMP_Bb) );
  mux_2 Mu ( .A(S_TMP_Ba), .B(S_TMP_Bb), .SEL(Ci_c), .Y(So_c) );
endmodule


module mux_1 ( A, B, SEL, Y );
  input [3:0] A;
  input [3:0] B;
  output [3:0] Y;
  input SEL;
  wire   net6854, net6855;
  assign Y[1] = net6854;
  assign Y[0] = net6855;

  MUX2_X1 U1 ( .A(B[0]), .B(A[0]), .S(SEL), .Z(net6855) );
  MUX2_X1 U2 ( .A(B[2]), .B(A[2]), .S(SEL), .Z(Y[2]) );
  MUX2_X1 U3 ( .A(B[3]), .B(A[3]), .S(SEL), .Z(Y[3]) );
  MUX2_X1 U4 ( .A(B[1]), .B(A[1]), .S(SEL), .Z(net6854) );
endmodule


module FA_1 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n16, n17;

  XOR2_X1 U3 ( .A(Ci), .B(n16), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n16) );
  INV_X1 U1 ( .A(n17), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n16), .B2(Ci), .ZN(n17) );
endmodule


module FA_2 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n16, n17;

  XOR2_X1 U3 ( .A(Ci), .B(n16), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n16) );
  INV_X1 U1 ( .A(n17), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n16), .B2(Ci), .ZN(n17) );
endmodule


module FA_3 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n16, n17;

  XOR2_X1 U3 ( .A(Ci), .B(n16), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n16) );
  INV_X1 U1 ( .A(n17), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n16), .B2(Ci), .ZN(n17) );
endmodule


module FA_4 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n16, n17;

  XOR2_X1 U3 ( .A(Ci), .B(n16), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n16) );
  INV_X1 U1 ( .A(n17), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n16), .B2(Ci), .ZN(n17) );
endmodule


module RCA_NBIT4_1 ( A, B, Ci, Co, So );
  input [3:0] A;
  input [3:0] B;
  output [3:0] So;
  input Ci;
  output Co;

  wire   [3:1] C_TMP;

  FA_4 FAI_1 ( .A(A[0]), .B(B[0]), .Ci(Ci), .S(So[0]), .Co(C_TMP[1]) );
  FA_3 FAI_2 ( .A(A[1]), .B(B[1]), .Ci(C_TMP[1]), .S(So[1]), .Co(C_TMP[2]) );
  FA_2 FAI_3 ( .A(A[2]), .B(B[2]), .Ci(C_TMP[2]), .S(So[2]), .Co(C_TMP[3]) );
  FA_1 FAI_4 ( .A(A[3]), .B(B[3]), .Ci(C_TMP[3]), .S(So[3]), .Co(Co) );
endmodule


module FA_5 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n16, n17;

  XOR2_X1 U3 ( .A(Ci), .B(n16), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n16) );
  INV_X1 U1 ( .A(n17), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n16), .B2(Ci), .ZN(n17) );
endmodule


module FA_6 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n16, n17;

  XOR2_X1 U3 ( .A(Ci), .B(n16), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n16) );
  INV_X1 U1 ( .A(n17), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n16), .B2(Ci), .ZN(n17) );
endmodule


module FA_7 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n16, n17;

  XOR2_X1 U3 ( .A(Ci), .B(n16), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n16) );
  INV_X1 U1 ( .A(n17), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n16), .B2(Ci), .ZN(n17) );
endmodule


module FA_8 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n16, n17;

  XOR2_X1 U3 ( .A(Ci), .B(n16), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n16) );
  INV_X1 U1 ( .A(n17), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n16), .B2(Ci), .ZN(n17) );
endmodule


module RCA_NBIT4_2 ( A, B, Ci, Co, So );
  input [3:0] A;
  input [3:0] B;
  output [3:0] So;
  input Ci;
  output Co;

  wire   [3:1] C_TMP;

  FA_8 FAI_1 ( .A(A[0]), .B(B[0]), .Ci(Ci), .S(So[0]), .Co(C_TMP[1]) );
  FA_7 FAI_2 ( .A(A[1]), .B(B[1]), .Ci(C_TMP[1]), .S(So[1]), .Co(C_TMP[2]) );
  FA_6 FAI_3 ( .A(A[2]), .B(B[2]), .Ci(C_TMP[2]), .S(So[2]), .Co(C_TMP[3]) );
  FA_5 FAI_4 ( .A(A[3]), .B(B[3]), .Ci(C_TMP[3]), .S(So[3]), .Co(Co) );
endmodule


module csb_ANBIT4_1 ( A_c, B_c, Ci_c, So_c );
  input [3:0] A_c;
  input [3:0] B_c;
  output [3:0] So_c;
  input Ci_c;

  wire   [3:0] S_TMP_Ba;
  wire   [3:0] S_TMP_Bb;

  RCA_NBIT4_2 Ba ( .A(A_c), .B(B_c), .Ci(1'b1), .So(S_TMP_Ba) );
  RCA_NBIT4_1 Bb ( .A(A_c), .B(B_c), .Ci(1'b0), .So(S_TMP_Bb) );
  mux_1 Mu ( .A(S_TMP_Ba), .B(S_TMP_Bb), .SEL(Ci_c), .Y(So_c) );
endmodule


module SUM_GENERATOR_NBIT_PER_BLOCK4_NBLOCKS8 ( A, B, Ci, S );
  input [31:0] A;
  input [31:0] B;
  input [7:0] Ci;
  output [31:0] S;


  csb_ANBIT4_0 cbl_1 ( .A_c(A[3:0]), .B_c(B[3:0]), .Ci_c(Ci[0]), .So_c(S[3:0])
         );
  csb_ANBIT4_7 cbl_2 ( .A_c(A[7:4]), .B_c(B[7:4]), .Ci_c(Ci[1]), .So_c(S[7:4])
         );
  csb_ANBIT4_6 cbl_3 ( .A_c(A[11:8]), .B_c(B[11:8]), .Ci_c(Ci[2]), .So_c(
        S[11:8]) );
  csb_ANBIT4_5 cbl_4 ( .A_c(A[15:12]), .B_c(B[15:12]), .Ci_c(Ci[3]), .So_c(
        S[15:12]) );
  csb_ANBIT4_4 cbl_5 ( .A_c(A[19:16]), .B_c(B[19:16]), .Ci_c(Ci[4]), .So_c(
        S[19:16]) );
  csb_ANBIT4_3 cbl_6 ( .A_c(A[23:20]), .B_c(B[23:20]), .Ci_c(Ci[5]), .So_c(
        S[23:20]) );
  csb_ANBIT4_2 cbl_7 ( .A_c(A[27:24]), .B_c(B[27:24]), .Ci_c(Ci[6]), .So_c(
        S[27:24]) );
  csb_ANBIT4_1 cbl_8 ( .A_c(A[31:28]), .B_c(B[31:28]), .Ci_c(Ci[7]), .So_c(
        S[31:28]) );
endmodule


module P4_ADDER ( A, B, Cin, S, Cout );
  input [31:0] A;
  input [31:0] B;
  output [31:0] S;
  input Cin;
  output Cout;
  wire   n24, n25, n26, n27, n28, n29;
  wire   [7:0] C_TMP;

  CARRY_GENERATOR_NBIT32_NBIT_PER_BLOCK4 UCARRY ( .A(A), .B(B), .Cin(Cin), 
        .Co({Cout, C_TMP}) );
  SUM_GENERATOR_NBIT_PER_BLOCK4_NBLOCKS8 USUM ( .A({A[31:16], n26, A[14:12], 
        n28, A[10:8], n24, A[6:4], n29, A[2:0]}), .B({B[31:16], n27, B[14:8], 
        n25, B[6:0]}), .Ci(C_TMP), .S(S) );
  BUF_X1 U1 ( .A(A[7]), .Z(n24) );
  BUF_X1 U2 ( .A(B[7]), .Z(n25) );
  BUF_X1 U3 ( .A(A[15]), .Z(n26) );
  BUF_X1 U4 ( .A(B[15]), .Z(n27) );
  BUF_X1 U5 ( .A(A[11]), .Z(n28) );
  BUF_X1 U6 ( .A(A[3]), .Z(n29) );
endmodule

