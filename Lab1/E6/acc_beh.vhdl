
library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_ACC is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_ACC;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_ACC.all;

entity ACC_DW01_add_0 is

   port( A, B : in std_logic_vector (31 downto 0);  CI : in std_logic;  SUM : 
         out std_logic_vector (31 downto 0);  CO : out std_logic);

end ACC_DW01_add_0;

architecture SYN_rpl of ACC_DW01_add_0 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component FA_X1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal carry_31_port, carry_30_port, carry_29_port, carry_28_port, 
      carry_27_port, carry_26_port, carry_25_port, carry_24_port, carry_23_port
      , carry_22_port, carry_21_port, carry_20_port, carry_19_port, 
      carry_18_port, carry_17_port, carry_16_port, carry_15_port, carry_14_port
      , carry_13_port, carry_12_port, carry_11_port, carry_10_port, 
      carry_9_port, carry_8_port, carry_7_port, carry_6_port, carry_5_port, 
      carry_4_port, carry_3_port, carry_2_port, n1, n_1002 : std_logic;

begin
   
   U1_31 : FA_X1 port map( A => A(31), B => B(31), CI => carry_31_port, CO => 
                           n_1002, S => SUM(31));
   U1_30 : FA_X1 port map( A => A(30), B => B(30), CI => carry_30_port, CO => 
                           carry_31_port, S => SUM(30));
   U1_29 : FA_X1 port map( A => A(29), B => B(29), CI => carry_29_port, CO => 
                           carry_30_port, S => SUM(29));
   U1_28 : FA_X1 port map( A => A(28), B => B(28), CI => carry_28_port, CO => 
                           carry_29_port, S => SUM(28));
   U1_27 : FA_X1 port map( A => A(27), B => B(27), CI => carry_27_port, CO => 
                           carry_28_port, S => SUM(27));
   U1_26 : FA_X1 port map( A => A(26), B => B(26), CI => carry_26_port, CO => 
                           carry_27_port, S => SUM(26));
   U1_25 : FA_X1 port map( A => A(25), B => B(25), CI => carry_25_port, CO => 
                           carry_26_port, S => SUM(25));
   U1_24 : FA_X1 port map( A => A(24), B => B(24), CI => carry_24_port, CO => 
                           carry_25_port, S => SUM(24));
   U1_23 : FA_X1 port map( A => A(23), B => B(23), CI => carry_23_port, CO => 
                           carry_24_port, S => SUM(23));
   U1_22 : FA_X1 port map( A => A(22), B => B(22), CI => carry_22_port, CO => 
                           carry_23_port, S => SUM(22));
   U1_21 : FA_X1 port map( A => A(21), B => B(21), CI => carry_21_port, CO => 
                           carry_22_port, S => SUM(21));
   U1_20 : FA_X1 port map( A => A(20), B => B(20), CI => carry_20_port, CO => 
                           carry_21_port, S => SUM(20));
   U1_19 : FA_X1 port map( A => A(19), B => B(19), CI => carry_19_port, CO => 
                           carry_20_port, S => SUM(19));
   U1_18 : FA_X1 port map( A => A(18), B => B(18), CI => carry_18_port, CO => 
                           carry_19_port, S => SUM(18));
   U1_17 : FA_X1 port map( A => A(17), B => B(17), CI => carry_17_port, CO => 
                           carry_18_port, S => SUM(17));
   U1_16 : FA_X1 port map( A => A(16), B => B(16), CI => carry_16_port, CO => 
                           carry_17_port, S => SUM(16));
   U1_15 : FA_X1 port map( A => A(15), B => B(15), CI => carry_15_port, CO => 
                           carry_16_port, S => SUM(15));
   U1_14 : FA_X1 port map( A => A(14), B => B(14), CI => carry_14_port, CO => 
                           carry_15_port, S => SUM(14));
   U1_13 : FA_X1 port map( A => A(13), B => B(13), CI => carry_13_port, CO => 
                           carry_14_port, S => SUM(13));
   U1_12 : FA_X1 port map( A => A(12), B => B(12), CI => carry_12_port, CO => 
                           carry_13_port, S => SUM(12));
   U1_11 : FA_X1 port map( A => A(11), B => B(11), CI => carry_11_port, CO => 
                           carry_12_port, S => SUM(11));
   U1_10 : FA_X1 port map( A => A(10), B => B(10), CI => carry_10_port, CO => 
                           carry_11_port, S => SUM(10));
   U1_9 : FA_X1 port map( A => A(9), B => B(9), CI => carry_9_port, CO => 
                           carry_10_port, S => SUM(9));
   U1_8 : FA_X1 port map( A => A(8), B => B(8), CI => carry_8_port, CO => 
                           carry_9_port, S => SUM(8));
   U1_7 : FA_X1 port map( A => A(7), B => B(7), CI => carry_7_port, CO => 
                           carry_8_port, S => SUM(7));
   U1_6 : FA_X1 port map( A => A(6), B => B(6), CI => carry_6_port, CO => 
                           carry_7_port, S => SUM(6));
   U1_5 : FA_X1 port map( A => A(5), B => B(5), CI => carry_5_port, CO => 
                           carry_6_port, S => SUM(5));
   U1_4 : FA_X1 port map( A => A(4), B => B(4), CI => carry_4_port, CO => 
                           carry_5_port, S => SUM(4));
   U1_3 : FA_X1 port map( A => A(3), B => B(3), CI => carry_3_port, CO => 
                           carry_4_port, S => SUM(3));
   U1_2 : FA_X1 port map( A => A(2), B => B(2), CI => carry_2_port, CO => 
                           carry_3_port, S => SUM(2));
   U1_1 : FA_X1 port map( A => A(1), B => B(1), CI => n1, CO => carry_2_port, S
                           => SUM(1));
   U1 : AND2_X1 port map( A1 => B(0), A2 => A(0), ZN => n1);
   U2 : XOR2_X1 port map( A => B(0), B => A(0), Z => SUM(0));

end SYN_rpl;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_ACC.all;

entity ACC is

   port( A, B : in std_logic_vector (31 downto 0);  CLK, RST_n, ACCUMULATE : in
         std_logic;  Y : out std_logic_vector (31 downto 0));

end ACC;

architecture SYN_BEHAVIORAL of ACC is

   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component INV_X4
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component ACC_DW01_add_0
      port( A, B : in std_logic_vector (31 downto 0);  CI : in std_logic;  SUM 
            : out std_logic_vector (31 downto 0);  CO : out std_logic);
   end component;
   
   component DFFR_X1
      port( D, CK, RN : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal sig_Y_b_31_port, sig_Y_b_30_port, sig_Y_b_29_port, sig_Y_b_28_port, 
      sig_Y_b_27_port, sig_Y_b_26_port, sig_Y_b_25_port, sig_Y_b_24_port, 
      sig_Y_b_23_port, sig_Y_b_22_port, sig_Y_b_21_port, sig_Y_b_20_port, 
      sig_Y_b_19_port, sig_Y_b_18_port, sig_Y_b_17_port, sig_Y_b_16_port, 
      sig_Y_b_15_port, sig_Y_b_14_port, sig_Y_b_13_port, sig_Y_b_12_port, 
      sig_Y_b_11_port, sig_Y_b_10_port, sig_Y_b_9_port, sig_Y_b_8_port, 
      sig_Y_b_7_port, sig_Y_b_6_port, sig_Y_b_5_port, sig_Y_b_4_port, 
      sig_Y_b_3_port, sig_Y_b_2_port, sig_Y_b_1_port, sig_Y_b_0_port, 
      out_add_b_31_port, out_add_b_30_port, out_add_b_29_port, 
      out_add_b_28_port, out_add_b_27_port, out_add_b_26_port, 
      out_add_b_25_port, out_add_b_24_port, out_add_b_23_port, 
      out_add_b_22_port, out_add_b_21_port, out_add_b_20_port, 
      out_add_b_19_port, out_add_b_18_port, out_add_b_17_port, 
      out_add_b_16_port, out_add_b_15_port, out_add_b_14_port, 
      out_add_b_13_port, out_add_b_12_port, out_add_b_11_port, 
      out_add_b_10_port, out_add_b_9_port, out_add_b_8_port, out_add_b_7_port, 
      out_add_b_6_port, out_add_b_5_port, out_add_b_4_port, out_add_b_3_port, 
      out_add_b_2_port, out_add_b_1_port, out_add_b_0_port, n1, n69, n70, n71, 
      n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86
      , n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, 
      n101, n_1003, n_1004, n_1005, n_1006, n_1007, n_1008, n_1009, n_1010, 
      n_1011, n_1012, n_1013, n_1014, n_1015, n_1016, n_1017, n_1018, n_1019, 
      n_1020, n_1021, n_1022, n_1023, n_1024, n_1025, n_1026, n_1027, n_1028, 
      n_1029, n_1030, n_1031, n_1032, n_1033, n_1034, n_1035, n_1036, n_1037, 
      n_1038, n_1039, n_1040, n_1041, n_1042, n_1043, n_1044, n_1045, n_1046, 
      n_1047, n_1048, n_1049, n_1050, n_1051, n_1052, n_1053, n_1054, n_1055, 
      n_1056, n_1057, n_1058, n_1059, n_1060, n_1061, n_1062, n_1063, n_1064, 
      n_1065, n_1066, n_1067 : std_logic;

begin
   
   n1 <= '0';
   sig_Y_b_reg_0_inst : DFFR_X1 port map( D => out_add_b_0_port, CK => CLK, RN 
                           => n101, Q => sig_Y_b_0_port, QN => n_1003);
   Y_reg_0_inst : DFFR_X1 port map( D => out_add_b_0_port, CK => CLK, RN => 
                           n101, Q => Y(0), QN => n_1004);
   Y_reg_1_inst : DFFR_X1 port map( D => out_add_b_1_port, CK => CLK, RN => 
                           n101, Q => Y(1), QN => n_1005);
   sig_Y_b_reg_1_inst : DFFR_X1 port map( D => out_add_b_1_port, CK => CLK, RN 
                           => n101, Q => sig_Y_b_1_port, QN => n_1006);
   Y_reg_2_inst : DFFR_X1 port map( D => out_add_b_2_port, CK => CLK, RN => 
                           n101, Q => Y(2), QN => n_1007);
   sig_Y_b_reg_2_inst : DFFR_X1 port map( D => out_add_b_2_port, CK => CLK, RN 
                           => n101, Q => sig_Y_b_2_port, QN => n_1008);
   Y_reg_3_inst : DFFR_X1 port map( D => out_add_b_3_port, CK => CLK, RN => 
                           n101, Q => Y(3), QN => n_1009);
   sig_Y_b_reg_3_inst : DFFR_X1 port map( D => out_add_b_3_port, CK => CLK, RN 
                           => n101, Q => sig_Y_b_3_port, QN => n_1010);
   Y_reg_4_inst : DFFR_X1 port map( D => out_add_b_4_port, CK => CLK, RN => 
                           n101, Q => Y(4), QN => n_1011);
   sig_Y_b_reg_4_inst : DFFR_X1 port map( D => out_add_b_4_port, CK => CLK, RN 
                           => n101, Q => sig_Y_b_4_port, QN => n_1012);
   Y_reg_5_inst : DFFR_X1 port map( D => out_add_b_5_port, CK => CLK, RN => 
                           n101, Q => Y(5), QN => n_1013);
   sig_Y_b_reg_5_inst : DFFR_X1 port map( D => out_add_b_5_port, CK => CLK, RN 
                           => n101, Q => sig_Y_b_5_port, QN => n_1014);
   Y_reg_6_inst : DFFR_X1 port map( D => out_add_b_6_port, CK => CLK, RN => 
                           n101, Q => Y(6), QN => n_1015);
   sig_Y_b_reg_6_inst : DFFR_X1 port map( D => out_add_b_6_port, CK => CLK, RN 
                           => n101, Q => sig_Y_b_6_port, QN => n_1016);
   Y_reg_7_inst : DFFR_X1 port map( D => out_add_b_7_port, CK => CLK, RN => 
                           n101, Q => Y(7), QN => n_1017);
   sig_Y_b_reg_7_inst : DFFR_X1 port map( D => out_add_b_7_port, CK => CLK, RN 
                           => n101, Q => sig_Y_b_7_port, QN => n_1018);
   Y_reg_8_inst : DFFR_X1 port map( D => out_add_b_8_port, CK => CLK, RN => 
                           n101, Q => Y(8), QN => n_1019);
   sig_Y_b_reg_8_inst : DFFR_X1 port map( D => out_add_b_8_port, CK => CLK, RN 
                           => n101, Q => sig_Y_b_8_port, QN => n_1020);
   Y_reg_9_inst : DFFR_X1 port map( D => out_add_b_9_port, CK => CLK, RN => 
                           n101, Q => Y(9), QN => n_1021);
   sig_Y_b_reg_9_inst : DFFR_X1 port map( D => out_add_b_9_port, CK => CLK, RN 
                           => n101, Q => sig_Y_b_9_port, QN => n_1022);
   Y_reg_10_inst : DFFR_X1 port map( D => out_add_b_10_port, CK => CLK, RN => 
                           n101, Q => Y(10), QN => n_1023);
   sig_Y_b_reg_10_inst : DFFR_X1 port map( D => out_add_b_10_port, CK => CLK, 
                           RN => n101, Q => sig_Y_b_10_port, QN => n_1024);
   Y_reg_11_inst : DFFR_X1 port map( D => out_add_b_11_port, CK => CLK, RN => 
                           n101, Q => Y(11), QN => n_1025);
   sig_Y_b_reg_11_inst : DFFR_X1 port map( D => out_add_b_11_port, CK => CLK, 
                           RN => n101, Q => sig_Y_b_11_port, QN => n_1026);
   Y_reg_12_inst : DFFR_X1 port map( D => out_add_b_12_port, CK => CLK, RN => 
                           n101, Q => Y(12), QN => n_1027);
   sig_Y_b_reg_12_inst : DFFR_X1 port map( D => out_add_b_12_port, CK => CLK, 
                           RN => n101, Q => sig_Y_b_12_port, QN => n_1028);
   Y_reg_13_inst : DFFR_X1 port map( D => out_add_b_13_port, CK => CLK, RN => 
                           n101, Q => Y(13), QN => n_1029);
   sig_Y_b_reg_13_inst : DFFR_X1 port map( D => out_add_b_13_port, CK => CLK, 
                           RN => n101, Q => sig_Y_b_13_port, QN => n_1030);
   Y_reg_14_inst : DFFR_X1 port map( D => out_add_b_14_port, CK => CLK, RN => 
                           n101, Q => Y(14), QN => n_1031);
   sig_Y_b_reg_14_inst : DFFR_X1 port map( D => out_add_b_14_port, CK => CLK, 
                           RN => n101, Q => sig_Y_b_14_port, QN => n_1032);
   Y_reg_15_inst : DFFR_X1 port map( D => out_add_b_15_port, CK => CLK, RN => 
                           n101, Q => Y(15), QN => n_1033);
   sig_Y_b_reg_15_inst : DFFR_X1 port map( D => out_add_b_15_port, CK => CLK, 
                           RN => n101, Q => sig_Y_b_15_port, QN => n_1034);
   Y_reg_16_inst : DFFR_X1 port map( D => out_add_b_16_port, CK => CLK, RN => 
                           n101, Q => Y(16), QN => n_1035);
   sig_Y_b_reg_16_inst : DFFR_X1 port map( D => out_add_b_16_port, CK => CLK, 
                           RN => n101, Q => sig_Y_b_16_port, QN => n_1036);
   Y_reg_17_inst : DFFR_X1 port map( D => out_add_b_17_port, CK => CLK, RN => 
                           n101, Q => Y(17), QN => n_1037);
   sig_Y_b_reg_17_inst : DFFR_X1 port map( D => out_add_b_17_port, CK => CLK, 
                           RN => n101, Q => sig_Y_b_17_port, QN => n_1038);
   Y_reg_18_inst : DFFR_X1 port map( D => out_add_b_18_port, CK => CLK, RN => 
                           n101, Q => Y(18), QN => n_1039);
   sig_Y_b_reg_18_inst : DFFR_X1 port map( D => out_add_b_18_port, CK => CLK, 
                           RN => n101, Q => sig_Y_b_18_port, QN => n_1040);
   Y_reg_19_inst : DFFR_X1 port map( D => out_add_b_19_port, CK => CLK, RN => 
                           n101, Q => Y(19), QN => n_1041);
   sig_Y_b_reg_19_inst : DFFR_X1 port map( D => out_add_b_19_port, CK => CLK, 
                           RN => n101, Q => sig_Y_b_19_port, QN => n_1042);
   Y_reg_20_inst : DFFR_X1 port map( D => out_add_b_20_port, CK => CLK, RN => 
                           n101, Q => Y(20), QN => n_1043);
   sig_Y_b_reg_20_inst : DFFR_X1 port map( D => out_add_b_20_port, CK => CLK, 
                           RN => n101, Q => sig_Y_b_20_port, QN => n_1044);
   Y_reg_21_inst : DFFR_X1 port map( D => out_add_b_21_port, CK => CLK, RN => 
                           n101, Q => Y(21), QN => n_1045);
   sig_Y_b_reg_21_inst : DFFR_X1 port map( D => out_add_b_21_port, CK => CLK, 
                           RN => n101, Q => sig_Y_b_21_port, QN => n_1046);
   Y_reg_22_inst : DFFR_X1 port map( D => out_add_b_22_port, CK => CLK, RN => 
                           n101, Q => Y(22), QN => n_1047);
   sig_Y_b_reg_22_inst : DFFR_X1 port map( D => out_add_b_22_port, CK => CLK, 
                           RN => n101, Q => sig_Y_b_22_port, QN => n_1048);
   Y_reg_23_inst : DFFR_X1 port map( D => out_add_b_23_port, CK => CLK, RN => 
                           n101, Q => Y(23), QN => n_1049);
   sig_Y_b_reg_23_inst : DFFR_X1 port map( D => out_add_b_23_port, CK => CLK, 
                           RN => n101, Q => sig_Y_b_23_port, QN => n_1050);
   Y_reg_24_inst : DFFR_X1 port map( D => out_add_b_24_port, CK => CLK, RN => 
                           n101, Q => Y(24), QN => n_1051);
   sig_Y_b_reg_24_inst : DFFR_X1 port map( D => out_add_b_24_port, CK => CLK, 
                           RN => n101, Q => sig_Y_b_24_port, QN => n_1052);
   Y_reg_25_inst : DFFR_X1 port map( D => out_add_b_25_port, CK => CLK, RN => 
                           n101, Q => Y(25), QN => n_1053);
   sig_Y_b_reg_25_inst : DFFR_X1 port map( D => out_add_b_25_port, CK => CLK, 
                           RN => n101, Q => sig_Y_b_25_port, QN => n_1054);
   Y_reg_26_inst : DFFR_X1 port map( D => out_add_b_26_port, CK => CLK, RN => 
                           n101, Q => Y(26), QN => n_1055);
   sig_Y_b_reg_26_inst : DFFR_X1 port map( D => out_add_b_26_port, CK => CLK, 
                           RN => n101, Q => sig_Y_b_26_port, QN => n_1056);
   Y_reg_27_inst : DFFR_X1 port map( D => out_add_b_27_port, CK => CLK, RN => 
                           n101, Q => Y(27), QN => n_1057);
   sig_Y_b_reg_27_inst : DFFR_X1 port map( D => out_add_b_27_port, CK => CLK, 
                           RN => n101, Q => sig_Y_b_27_port, QN => n_1058);
   Y_reg_28_inst : DFFR_X1 port map( D => out_add_b_28_port, CK => CLK, RN => 
                           n101, Q => Y(28), QN => n_1059);
   sig_Y_b_reg_28_inst : DFFR_X1 port map( D => out_add_b_28_port, CK => CLK, 
                           RN => n101, Q => sig_Y_b_28_port, QN => n_1060);
   Y_reg_29_inst : DFFR_X1 port map( D => out_add_b_29_port, CK => CLK, RN => 
                           n101, Q => Y(29), QN => n_1061);
   sig_Y_b_reg_29_inst : DFFR_X1 port map( D => out_add_b_29_port, CK => CLK, 
                           RN => n101, Q => sig_Y_b_29_port, QN => n_1062);
   Y_reg_30_inst : DFFR_X1 port map( D => out_add_b_30_port, CK => CLK, RN => 
                           n101, Q => Y(30), QN => n_1063);
   sig_Y_b_reg_30_inst : DFFR_X1 port map( D => out_add_b_30_port, CK => CLK, 
                           RN => n101, Q => sig_Y_b_30_port, QN => n_1064);
   Y_reg_31_inst : DFFR_X1 port map( D => out_add_b_31_port, CK => CLK, RN => 
                           n101, Q => Y(31), QN => n_1065);
   sig_Y_b_reg_31_inst : DFFR_X1 port map( D => out_add_b_31_port, CK => CLK, 
                           RN => n101, Q => sig_Y_b_31_port, QN => n_1066);
   add_100 : ACC_DW01_add_0 port map( A(31) => A(31), A(30) => A(30), A(29) => 
                           A(29), A(28) => A(28), A(27) => A(27), A(26) => 
                           A(26), A(25) => A(25), A(24) => A(24), A(23) => 
                           A(23), A(22) => A(22), A(21) => A(21), A(20) => 
                           A(20), A(19) => A(19), A(18) => A(18), A(17) => 
                           A(17), A(16) => A(16), A(15) => A(15), A(14) => 
                           A(14), A(13) => A(13), A(12) => A(12), A(11) => 
                           A(11), A(10) => A(10), A(9) => A(9), A(8) => A(8), 
                           A(7) => A(7), A(6) => A(6), A(5) => A(5), A(4) => 
                           A(4), A(3) => A(3), A(2) => A(2), A(1) => A(1), A(0)
                           => A(0), B(31) => n69, B(30) => n70, B(29) => n71, 
                           B(28) => n72, B(27) => n73, B(26) => n74, B(25) => 
                           n75, B(24) => n76, B(23) => n77, B(22) => n78, B(21)
                           => n79, B(20) => n80, B(19) => n81, B(18) => n82, 
                           B(17) => n83, B(16) => n84, B(15) => n85, B(14) => 
                           n86, B(13) => n87, B(12) => n88, B(11) => n89, B(10)
                           => n90, B(9) => n91, B(8) => n92, B(7) => n93, B(6) 
                           => n94, B(5) => n95, B(4) => n96, B(3) => n97, B(2) 
                           => n98, B(1) => n99, B(0) => n100, CI => n1, SUM(31)
                           => out_add_b_31_port, SUM(30) => out_add_b_30_port, 
                           SUM(29) => out_add_b_29_port, SUM(28) => 
                           out_add_b_28_port, SUM(27) => out_add_b_27_port, 
                           SUM(26) => out_add_b_26_port, SUM(25) => 
                           out_add_b_25_port, SUM(24) => out_add_b_24_port, 
                           SUM(23) => out_add_b_23_port, SUM(22) => 
                           out_add_b_22_port, SUM(21) => out_add_b_21_port, 
                           SUM(20) => out_add_b_20_port, SUM(19) => 
                           out_add_b_19_port, SUM(18) => out_add_b_18_port, 
                           SUM(17) => out_add_b_17_port, SUM(16) => 
                           out_add_b_16_port, SUM(15) => out_add_b_15_port, 
                           SUM(14) => out_add_b_14_port, SUM(13) => 
                           out_add_b_13_port, SUM(12) => out_add_b_12_port, 
                           SUM(11) => out_add_b_11_port, SUM(10) => 
                           out_add_b_10_port, SUM(9) => out_add_b_9_port, 
                           SUM(8) => out_add_b_8_port, SUM(7) => 
                           out_add_b_7_port, SUM(6) => out_add_b_6_port, SUM(5)
                           => out_add_b_5_port, SUM(4) => out_add_b_4_port, 
                           SUM(3) => out_add_b_3_port, SUM(2) => 
                           out_add_b_2_port, SUM(1) => out_add_b_1_port, SUM(0)
                           => out_add_b_0_port, CO => n_1067);
   U70 : INV_X4 port map( A => RST_n, ZN => n101);
   U71 : MUX2_X1 port map( A => sig_Y_b_27_port, B => B(27), S => ACCUMULATE, Z
                           => n73);
   U72 : MUX2_X1 port map( A => sig_Y_b_26_port, B => B(26), S => ACCUMULATE, Z
                           => n74);
   U73 : MUX2_X1 port map( A => sig_Y_b_25_port, B => B(25), S => ACCUMULATE, Z
                           => n75);
   U74 : MUX2_X1 port map( A => sig_Y_b_24_port, B => B(24), S => ACCUMULATE, Z
                           => n76);
   U75 : MUX2_X1 port map( A => sig_Y_b_23_port, B => B(23), S => ACCUMULATE, Z
                           => n77);
   U76 : MUX2_X1 port map( A => sig_Y_b_22_port, B => B(22), S => ACCUMULATE, Z
                           => n78);
   U77 : MUX2_X1 port map( A => sig_Y_b_21_port, B => B(21), S => ACCUMULATE, Z
                           => n79);
   U78 : MUX2_X1 port map( A => sig_Y_b_20_port, B => B(20), S => ACCUMULATE, Z
                           => n80);
   U79 : MUX2_X1 port map( A => sig_Y_b_19_port, B => B(19), S => ACCUMULATE, Z
                           => n81);
   U80 : MUX2_X1 port map( A => sig_Y_b_18_port, B => B(18), S => ACCUMULATE, Z
                           => n82);
   U81 : MUX2_X1 port map( A => sig_Y_b_17_port, B => B(17), S => ACCUMULATE, Z
                           => n83);
   U82 : MUX2_X1 port map( A => sig_Y_b_16_port, B => B(16), S => ACCUMULATE, Z
                           => n84);
   U83 : MUX2_X1 port map( A => sig_Y_b_15_port, B => B(15), S => ACCUMULATE, Z
                           => n85);
   U84 : MUX2_X1 port map( A => sig_Y_b_14_port, B => B(14), S => ACCUMULATE, Z
                           => n86);
   U85 : MUX2_X1 port map( A => sig_Y_b_13_port, B => B(13), S => ACCUMULATE, Z
                           => n87);
   U86 : MUX2_X1 port map( A => sig_Y_b_12_port, B => B(12), S => ACCUMULATE, Z
                           => n88);
   U87 : MUX2_X1 port map( A => sig_Y_b_11_port, B => B(11), S => ACCUMULATE, Z
                           => n89);
   U88 : MUX2_X1 port map( A => sig_Y_b_10_port, B => B(10), S => ACCUMULATE, Z
                           => n90);
   U89 : MUX2_X1 port map( A => sig_Y_b_9_port, B => B(9), S => ACCUMULATE, Z 
                           => n91);
   U90 : MUX2_X1 port map( A => sig_Y_b_8_port, B => B(8), S => ACCUMULATE, Z 
                           => n92);
   U91 : MUX2_X1 port map( A => sig_Y_b_7_port, B => B(7), S => ACCUMULATE, Z 
                           => n93);
   U92 : MUX2_X1 port map( A => sig_Y_b_6_port, B => B(6), S => ACCUMULATE, Z 
                           => n94);
   U93 : MUX2_X1 port map( A => sig_Y_b_5_port, B => B(5), S => ACCUMULATE, Z 
                           => n95);
   U94 : MUX2_X1 port map( A => sig_Y_b_4_port, B => B(4), S => ACCUMULATE, Z 
                           => n96);
   U95 : MUX2_X1 port map( A => sig_Y_b_3_port, B => B(3), S => ACCUMULATE, Z 
                           => n97);
   U96 : MUX2_X1 port map( A => sig_Y_b_2_port, B => B(2), S => ACCUMULATE, Z 
                           => n98);
   U97 : MUX2_X1 port map( A => sig_Y_b_1_port, B => B(1), S => ACCUMULATE, Z 
                           => n99);
   U98 : MUX2_X1 port map( A => sig_Y_b_0_port, B => B(0), S => ACCUMULATE, Z 
                           => n100);
   U99 : MUX2_X1 port map( A => sig_Y_b_31_port, B => B(31), S => ACCUMULATE, Z
                           => n69);
   U100 : MUX2_X1 port map( A => sig_Y_b_30_port, B => B(30), S => ACCUMULATE, 
                           Z => n70);
   U101 : MUX2_X1 port map( A => sig_Y_b_29_port, B => B(29), S => ACCUMULATE, 
                           Z => n71);
   U102 : MUX2_X1 port map( A => sig_Y_b_28_port, B => B(28), S => ACCUMULATE, 
                           Z => n72);

end SYN_BEHAVIORAL;
