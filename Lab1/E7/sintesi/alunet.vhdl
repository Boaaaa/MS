
library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_ALU is

-- define attributes
attribute ENUM_ENCODING : STRING;

-- define any necessary types
type TYPE_OP is (ADD, SUB, MULT, BITAND, BITOR, BITXOR, FUNCLSL, FUNCLSR, 
   FUNCRL, FUNCRR);
attribute ENUM_ENCODING of TYPE_OP : type is 
   "0000 0001 0010 0011 0100 0101 0110 0111 1000 1001";
   
   -- Declarations for conversion functions.
   function TYPE_OP_to_std_logic_vector(arg : in TYPE_OP) return 
               std_logic_vector;

end CONV_PACK_ALU;

package body CONV_PACK_ALU is
   
   -- enum type to std_logic_vector function
   function TYPE_OP_to_std_logic_vector(arg : in TYPE_OP) return 
   std_logic_vector is
   -- synopsys built_in SYN_FEED_THRU;
   begin
      case arg is
         when ADD => return "0000";
         when SUB => return "0001";
         when MULT => return "0010";
         when BITAND => return "0011";
         when BITOR => return "0100";
         when BITXOR => return "0101";
         when FUNCLSL => return "0110";
         when FUNCLSR => return "0111";
         when FUNCRL => return "1000";
         when FUNCRR => return "1001";
         when others => assert FALSE -- this should not happen.
               report "un-convertible value"
               severity warning;
               return "0000";
      end case;
   end;

end CONV_PACK_ALU;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_ALU.all;

entity ALU_DW02_mult_0 is

   port( A, B : in std_logic_vector (15 downto 0);  TC : in std_logic;  PRODUCT
         : out std_logic_vector (31 downto 0));

end ALU_DW02_mult_0;

architecture SYN_csa of ALU_DW02_mult_0 is

   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component FA_X1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal ab_15_0_port, ab_14_1_port, ab_14_0_port, ab_13_2_port, ab_13_1_port,
      ab_13_0_port, ab_12_3_port, ab_12_2_port, ab_12_1_port, ab_12_0_port, 
      ab_11_4_port, ab_11_3_port, ab_11_2_port, ab_11_1_port, ab_11_0_port, 
      ab_10_5_port, ab_10_4_port, ab_10_3_port, ab_10_2_port, ab_10_1_port, 
      ab_10_0_port, ab_9_6_port, ab_9_5_port, ab_9_4_port, ab_9_3_port, 
      ab_9_2_port, ab_9_1_port, ab_9_0_port, ab_8_7_port, ab_8_6_port, 
      ab_8_5_port, ab_8_4_port, ab_8_3_port, ab_8_2_port, ab_8_1_port, 
      ab_8_0_port, ab_7_8_port, ab_7_7_port, ab_7_6_port, ab_7_5_port, 
      ab_7_4_port, ab_7_3_port, ab_7_2_port, ab_7_1_port, ab_7_0_port, 
      ab_6_9_port, ab_6_8_port, ab_6_7_port, ab_6_6_port, ab_6_5_port, 
      ab_6_4_port, ab_6_3_port, ab_6_2_port, ab_6_1_port, ab_6_0_port, 
      ab_5_10_port, ab_5_9_port, ab_5_8_port, ab_5_7_port, ab_5_6_port, 
      ab_5_5_port, ab_5_4_port, ab_5_3_port, ab_5_2_port, ab_5_1_port, 
      ab_5_0_port, ab_4_11_port, ab_4_10_port, ab_4_9_port, ab_4_8_port, 
      ab_4_7_port, ab_4_6_port, ab_4_5_port, ab_4_4_port, ab_4_3_port, 
      ab_4_2_port, ab_4_1_port, ab_4_0_port, ab_3_12_port, ab_3_11_port, 
      ab_3_10_port, ab_3_9_port, ab_3_8_port, ab_3_7_port, ab_3_6_port, 
      ab_3_5_port, ab_3_4_port, ab_3_3_port, ab_3_2_port, ab_3_1_port, 
      ab_3_0_port, ab_2_13_port, ab_2_12_port, ab_2_11_port, ab_2_10_port, 
      ab_2_9_port, ab_2_8_port, ab_2_7_port, ab_2_6_port, ab_2_5_port, 
      ab_2_4_port, ab_2_3_port, ab_2_2_port, ab_2_1_port, ab_2_0_port, 
      ab_1_14_port, ab_1_13_port, ab_1_12_port, ab_1_11_port, ab_1_10_port, 
      ab_1_9_port, ab_1_8_port, ab_1_7_port, ab_1_6_port, ab_1_5_port, 
      ab_1_4_port, ab_1_3_port, ab_1_2_port, ab_1_1_port, ab_1_0_port, 
      ab_0_15_port, ab_0_14_port, ab_0_13_port, ab_0_12_port, ab_0_11_port, 
      ab_0_10_port, ab_0_9_port, ab_0_8_port, ab_0_7_port, ab_0_6_port, 
      ab_0_5_port, ab_0_4_port, ab_0_3_port, ab_0_2_port, ab_0_1_port, 
      CARRYB_14_0_port, CARRYB_13_1_port, CARRYB_13_0_port, CARRYB_12_2_port, 
      CARRYB_12_1_port, CARRYB_12_0_port, CARRYB_11_3_port, CARRYB_11_2_port, 
      CARRYB_11_1_port, CARRYB_11_0_port, CARRYB_10_4_port, CARRYB_10_3_port, 
      CARRYB_10_2_port, CARRYB_10_1_port, CARRYB_10_0_port, CARRYB_9_5_port, 
      CARRYB_9_4_port, CARRYB_9_3_port, CARRYB_9_2_port, CARRYB_9_1_port, 
      CARRYB_9_0_port, CARRYB_8_6_port, CARRYB_8_5_port, CARRYB_8_4_port, 
      CARRYB_8_3_port, CARRYB_8_2_port, CARRYB_8_1_port, CARRYB_8_0_port, 
      CARRYB_7_7_port, CARRYB_7_6_port, CARRYB_7_5_port, CARRYB_7_4_port, 
      CARRYB_7_3_port, CARRYB_7_2_port, CARRYB_7_1_port, CARRYB_7_0_port, 
      CARRYB_6_8_port, CARRYB_6_7_port, CARRYB_6_6_port, CARRYB_6_5_port, 
      CARRYB_6_4_port, CARRYB_6_3_port, CARRYB_6_2_port, CARRYB_6_1_port, 
      CARRYB_6_0_port, CARRYB_5_9_port, CARRYB_5_8_port, CARRYB_5_7_port, 
      CARRYB_5_6_port, CARRYB_5_5_port, CARRYB_5_4_port, CARRYB_5_3_port, 
      CARRYB_5_2_port, CARRYB_5_1_port, CARRYB_5_0_port, CARRYB_4_10_port, 
      CARRYB_4_9_port, CARRYB_4_8_port, CARRYB_4_7_port, CARRYB_4_6_port, 
      CARRYB_4_5_port, CARRYB_4_4_port, CARRYB_4_3_port, CARRYB_4_2_port, 
      CARRYB_4_1_port, CARRYB_4_0_port, CARRYB_3_11_port, CARRYB_3_10_port, 
      CARRYB_3_9_port, CARRYB_3_8_port, CARRYB_3_7_port, CARRYB_3_6_port, 
      CARRYB_3_5_port, CARRYB_3_4_port, CARRYB_3_3_port, CARRYB_3_2_port, 
      CARRYB_3_1_port, CARRYB_3_0_port, CARRYB_2_12_port, CARRYB_2_11_port, 
      CARRYB_2_10_port, CARRYB_2_9_port, CARRYB_2_8_port, CARRYB_2_7_port, 
      CARRYB_2_6_port, CARRYB_2_5_port, CARRYB_2_4_port, CARRYB_2_3_port, 
      CARRYB_2_2_port, CARRYB_2_1_port, CARRYB_2_0_port, SUMB_14_1_port, 
      SUMB_13_2_port, SUMB_13_1_port, SUMB_12_3_port, SUMB_12_2_port, 
      SUMB_12_1_port, SUMB_11_4_port, SUMB_11_3_port, SUMB_11_2_port, 
      SUMB_11_1_port, SUMB_10_5_port, SUMB_10_4_port, SUMB_10_3_port, 
      SUMB_10_2_port, SUMB_10_1_port, SUMB_9_6_port, SUMB_9_5_port, 
      SUMB_9_4_port, SUMB_9_3_port, SUMB_9_2_port, SUMB_9_1_port, SUMB_8_7_port
      , SUMB_8_6_port, SUMB_8_5_port, SUMB_8_4_port, SUMB_8_3_port, 
      SUMB_8_2_port, SUMB_8_1_port, SUMB_7_8_port, SUMB_7_7_port, SUMB_7_6_port
      , SUMB_7_5_port, SUMB_7_4_port, SUMB_7_3_port, SUMB_7_2_port, 
      SUMB_7_1_port, SUMB_6_9_port, SUMB_6_8_port, SUMB_6_7_port, SUMB_6_6_port
      , SUMB_6_5_port, SUMB_6_4_port, SUMB_6_3_port, SUMB_6_2_port, 
      SUMB_6_1_port, SUMB_5_10_port, SUMB_5_9_port, SUMB_5_8_port, 
      SUMB_5_7_port, SUMB_5_6_port, SUMB_5_5_port, SUMB_5_4_port, SUMB_5_3_port
      , SUMB_5_2_port, SUMB_5_1_port, SUMB_4_11_port, SUMB_4_10_port, 
      SUMB_4_9_port, SUMB_4_8_port, SUMB_4_7_port, SUMB_4_6_port, SUMB_4_5_port
      , SUMB_4_4_port, SUMB_4_3_port, SUMB_4_2_port, SUMB_4_1_port, 
      SUMB_3_12_port, SUMB_3_11_port, SUMB_3_10_port, SUMB_3_9_port, 
      SUMB_3_8_port, SUMB_3_7_port, SUMB_3_6_port, SUMB_3_5_port, SUMB_3_4_port
      , SUMB_3_3_port, SUMB_3_2_port, SUMB_3_1_port, SUMB_2_13_port, 
      SUMB_2_12_port, SUMB_2_11_port, SUMB_2_10_port, SUMB_2_9_port, 
      SUMB_2_8_port, SUMB_2_7_port, SUMB_2_6_port, SUMB_2_5_port, SUMB_2_4_port
      , SUMB_2_3_port, SUMB_2_2_port, SUMB_2_1_port, n2, n3, n4, n5, n6, n7, n8
      , n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, 
      n23, n24, n25, n26, n27, n28, n29, n31, n32, n33, n34, n35, n36, n37, n38
      , n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, 
      n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n_1017, n_1018, n_1019,
      n_1020, n_1021, n_1022, n_1023, n_1024, n_1025, n_1026, n_1027, n_1028, 
      n_1029, n_1030 : std_logic;

begin
   
   S4_0 : FA_X1 port map( A => ab_15_0_port, B => CARRYB_14_0_port, CI => 
                           SUMB_14_1_port, CO => n_1017, S => PRODUCT(15));
   S1_14_0 : FA_X1 port map( A => ab_14_0_port, B => CARRYB_13_0_port, CI => 
                           SUMB_13_1_port, CO => CARRYB_14_0_port, S => 
                           PRODUCT(14));
   S2_14_1 : FA_X1 port map( A => ab_14_1_port, B => CARRYB_13_1_port, CI => 
                           SUMB_13_2_port, CO => n_1018, S => SUMB_14_1_port);
   S1_13_0 : FA_X1 port map( A => ab_13_0_port, B => CARRYB_12_0_port, CI => 
                           SUMB_12_1_port, CO => CARRYB_13_0_port, S => 
                           PRODUCT(13));
   S2_13_1 : FA_X1 port map( A => ab_13_1_port, B => CARRYB_12_1_port, CI => 
                           SUMB_12_2_port, CO => CARRYB_13_1_port, S => 
                           SUMB_13_1_port);
   S2_13_2 : FA_X1 port map( A => ab_13_2_port, B => CARRYB_12_2_port, CI => 
                           SUMB_12_3_port, CO => n_1019, S => SUMB_13_2_port);
   S1_12_0 : FA_X1 port map( A => ab_12_0_port, B => CARRYB_11_0_port, CI => 
                           SUMB_11_1_port, CO => CARRYB_12_0_port, S => 
                           PRODUCT(12));
   S2_12_1 : FA_X1 port map( A => ab_12_1_port, B => CARRYB_11_1_port, CI => 
                           SUMB_11_2_port, CO => CARRYB_12_1_port, S => 
                           SUMB_12_1_port);
   S2_12_2 : FA_X1 port map( A => ab_12_2_port, B => CARRYB_11_2_port, CI => 
                           SUMB_11_3_port, CO => CARRYB_12_2_port, S => 
                           SUMB_12_2_port);
   S2_12_3 : FA_X1 port map( A => ab_12_3_port, B => CARRYB_11_3_port, CI => 
                           SUMB_11_4_port, CO => n_1020, S => SUMB_12_3_port);
   S1_11_0 : FA_X1 port map( A => ab_11_0_port, B => CARRYB_10_0_port, CI => 
                           SUMB_10_1_port, CO => CARRYB_11_0_port, S => 
                           PRODUCT(11));
   S2_11_1 : FA_X1 port map( A => ab_11_1_port, B => CARRYB_10_1_port, CI => 
                           SUMB_10_2_port, CO => CARRYB_11_1_port, S => 
                           SUMB_11_1_port);
   S2_11_2 : FA_X1 port map( A => ab_11_2_port, B => CARRYB_10_2_port, CI => 
                           SUMB_10_3_port, CO => CARRYB_11_2_port, S => 
                           SUMB_11_2_port);
   S2_11_3 : FA_X1 port map( A => ab_11_3_port, B => CARRYB_10_3_port, CI => 
                           SUMB_10_4_port, CO => CARRYB_11_3_port, S => 
                           SUMB_11_3_port);
   S2_11_4 : FA_X1 port map( A => ab_11_4_port, B => CARRYB_10_4_port, CI => 
                           SUMB_10_5_port, CO => n_1021, S => SUMB_11_4_port);
   S1_10_0 : FA_X1 port map( A => ab_10_0_port, B => CARRYB_9_0_port, CI => 
                           SUMB_9_1_port, CO => CARRYB_10_0_port, S => 
                           PRODUCT(10));
   S2_10_1 : FA_X1 port map( A => ab_10_1_port, B => CARRYB_9_1_port, CI => 
                           SUMB_9_2_port, CO => CARRYB_10_1_port, S => 
                           SUMB_10_1_port);
   S2_10_2 : FA_X1 port map( A => ab_10_2_port, B => CARRYB_9_2_port, CI => 
                           SUMB_9_3_port, CO => CARRYB_10_2_port, S => 
                           SUMB_10_2_port);
   S2_10_3 : FA_X1 port map( A => ab_10_3_port, B => CARRYB_9_3_port, CI => 
                           SUMB_9_4_port, CO => CARRYB_10_3_port, S => 
                           SUMB_10_3_port);
   S2_10_4 : FA_X1 port map( A => ab_10_4_port, B => CARRYB_9_4_port, CI => 
                           SUMB_9_5_port, CO => CARRYB_10_4_port, S => 
                           SUMB_10_4_port);
   S2_10_5 : FA_X1 port map( A => ab_10_5_port, B => CARRYB_9_5_port, CI => 
                           SUMB_9_6_port, CO => n_1022, S => SUMB_10_5_port);
   S1_9_0 : FA_X1 port map( A => ab_9_0_port, B => CARRYB_8_0_port, CI => 
                           SUMB_8_1_port, CO => CARRYB_9_0_port, S => 
                           PRODUCT(9));
   S2_9_1 : FA_X1 port map( A => ab_9_1_port, B => CARRYB_8_1_port, CI => 
                           SUMB_8_2_port, CO => CARRYB_9_1_port, S => 
                           SUMB_9_1_port);
   S2_9_2 : FA_X1 port map( A => ab_9_2_port, B => CARRYB_8_2_port, CI => 
                           SUMB_8_3_port, CO => CARRYB_9_2_port, S => 
                           SUMB_9_2_port);
   S2_9_3 : FA_X1 port map( A => ab_9_3_port, B => CARRYB_8_3_port, CI => 
                           SUMB_8_4_port, CO => CARRYB_9_3_port, S => 
                           SUMB_9_3_port);
   S2_9_4 : FA_X1 port map( A => ab_9_4_port, B => CARRYB_8_4_port, CI => 
                           SUMB_8_5_port, CO => CARRYB_9_4_port, S => 
                           SUMB_9_4_port);
   S2_9_5 : FA_X1 port map( A => ab_9_5_port, B => CARRYB_8_5_port, CI => 
                           SUMB_8_6_port, CO => CARRYB_9_5_port, S => 
                           SUMB_9_5_port);
   S2_9_6 : FA_X1 port map( A => ab_9_6_port, B => CARRYB_8_6_port, CI => 
                           SUMB_8_7_port, CO => n_1023, S => SUMB_9_6_port);
   S1_8_0 : FA_X1 port map( A => ab_8_0_port, B => CARRYB_7_0_port, CI => 
                           SUMB_7_1_port, CO => CARRYB_8_0_port, S => 
                           PRODUCT(8));
   S2_8_1 : FA_X1 port map( A => ab_8_1_port, B => CARRYB_7_1_port, CI => 
                           SUMB_7_2_port, CO => CARRYB_8_1_port, S => 
                           SUMB_8_1_port);
   S2_8_2 : FA_X1 port map( A => ab_8_2_port, B => CARRYB_7_2_port, CI => 
                           SUMB_7_3_port, CO => CARRYB_8_2_port, S => 
                           SUMB_8_2_port);
   S2_8_3 : FA_X1 port map( A => ab_8_3_port, B => CARRYB_7_3_port, CI => 
                           SUMB_7_4_port, CO => CARRYB_8_3_port, S => 
                           SUMB_8_3_port);
   S2_8_4 : FA_X1 port map( A => ab_8_4_port, B => CARRYB_7_4_port, CI => 
                           SUMB_7_5_port, CO => CARRYB_8_4_port, S => 
                           SUMB_8_4_port);
   S2_8_5 : FA_X1 port map( A => ab_8_5_port, B => CARRYB_7_5_port, CI => 
                           SUMB_7_6_port, CO => CARRYB_8_5_port, S => 
                           SUMB_8_5_port);
   S2_8_6 : FA_X1 port map( A => ab_8_6_port, B => CARRYB_7_6_port, CI => 
                           SUMB_7_7_port, CO => CARRYB_8_6_port, S => 
                           SUMB_8_6_port);
   S2_8_7 : FA_X1 port map( A => ab_8_7_port, B => CARRYB_7_7_port, CI => 
                           SUMB_7_8_port, CO => n_1024, S => SUMB_8_7_port);
   S1_7_0 : FA_X1 port map( A => ab_7_0_port, B => CARRYB_6_0_port, CI => 
                           SUMB_6_1_port, CO => CARRYB_7_0_port, S => 
                           PRODUCT(7));
   S2_7_1 : FA_X1 port map( A => ab_7_1_port, B => CARRYB_6_1_port, CI => 
                           SUMB_6_2_port, CO => CARRYB_7_1_port, S => 
                           SUMB_7_1_port);
   S2_7_2 : FA_X1 port map( A => ab_7_2_port, B => CARRYB_6_2_port, CI => 
                           SUMB_6_3_port, CO => CARRYB_7_2_port, S => 
                           SUMB_7_2_port);
   S2_7_3 : FA_X1 port map( A => ab_7_3_port, B => CARRYB_6_3_port, CI => 
                           SUMB_6_4_port, CO => CARRYB_7_3_port, S => 
                           SUMB_7_3_port);
   S2_7_4 : FA_X1 port map( A => ab_7_4_port, B => CARRYB_6_4_port, CI => 
                           SUMB_6_5_port, CO => CARRYB_7_4_port, S => 
                           SUMB_7_4_port);
   S2_7_5 : FA_X1 port map( A => ab_7_5_port, B => CARRYB_6_5_port, CI => 
                           SUMB_6_6_port, CO => CARRYB_7_5_port, S => 
                           SUMB_7_5_port);
   S2_7_6 : FA_X1 port map( A => ab_7_6_port, B => CARRYB_6_6_port, CI => 
                           SUMB_6_7_port, CO => CARRYB_7_6_port, S => 
                           SUMB_7_6_port);
   S2_7_7 : FA_X1 port map( A => ab_7_7_port, B => CARRYB_6_7_port, CI => 
                           SUMB_6_8_port, CO => CARRYB_7_7_port, S => 
                           SUMB_7_7_port);
   S2_7_8 : FA_X1 port map( A => ab_7_8_port, B => CARRYB_6_8_port, CI => 
                           SUMB_6_9_port, CO => n_1025, S => SUMB_7_8_port);
   S1_6_0 : FA_X1 port map( A => ab_6_0_port, B => CARRYB_5_0_port, CI => 
                           SUMB_5_1_port, CO => CARRYB_6_0_port, S => 
                           PRODUCT(6));
   S2_6_1 : FA_X1 port map( A => ab_6_1_port, B => CARRYB_5_1_port, CI => 
                           SUMB_5_2_port, CO => CARRYB_6_1_port, S => 
                           SUMB_6_1_port);
   S2_6_2 : FA_X1 port map( A => ab_6_2_port, B => CARRYB_5_2_port, CI => 
                           SUMB_5_3_port, CO => CARRYB_6_2_port, S => 
                           SUMB_6_2_port);
   S2_6_3 : FA_X1 port map( A => ab_6_3_port, B => CARRYB_5_3_port, CI => 
                           SUMB_5_4_port, CO => CARRYB_6_3_port, S => 
                           SUMB_6_3_port);
   S2_6_4 : FA_X1 port map( A => ab_6_4_port, B => CARRYB_5_4_port, CI => 
                           SUMB_5_5_port, CO => CARRYB_6_4_port, S => 
                           SUMB_6_4_port);
   S2_6_5 : FA_X1 port map( A => ab_6_5_port, B => CARRYB_5_5_port, CI => 
                           SUMB_5_6_port, CO => CARRYB_6_5_port, S => 
                           SUMB_6_5_port);
   S2_6_6 : FA_X1 port map( A => ab_6_6_port, B => CARRYB_5_6_port, CI => 
                           SUMB_5_7_port, CO => CARRYB_6_6_port, S => 
                           SUMB_6_6_port);
   S2_6_7 : FA_X1 port map( A => ab_6_7_port, B => CARRYB_5_7_port, CI => 
                           SUMB_5_8_port, CO => CARRYB_6_7_port, S => 
                           SUMB_6_7_port);
   S2_6_8 : FA_X1 port map( A => ab_6_8_port, B => CARRYB_5_8_port, CI => 
                           SUMB_5_9_port, CO => CARRYB_6_8_port, S => 
                           SUMB_6_8_port);
   S2_6_9 : FA_X1 port map( A => ab_6_9_port, B => CARRYB_5_9_port, CI => 
                           SUMB_5_10_port, CO => n_1026, S => SUMB_6_9_port);
   S1_5_0 : FA_X1 port map( A => ab_5_0_port, B => CARRYB_4_0_port, CI => 
                           SUMB_4_1_port, CO => CARRYB_5_0_port, S => 
                           PRODUCT(5));
   S2_5_1 : FA_X1 port map( A => ab_5_1_port, B => CARRYB_4_1_port, CI => 
                           SUMB_4_2_port, CO => CARRYB_5_1_port, S => 
                           SUMB_5_1_port);
   S2_5_2 : FA_X1 port map( A => ab_5_2_port, B => CARRYB_4_2_port, CI => 
                           SUMB_4_3_port, CO => CARRYB_5_2_port, S => 
                           SUMB_5_2_port);
   S2_5_3 : FA_X1 port map( A => ab_5_3_port, B => CARRYB_4_3_port, CI => 
                           SUMB_4_4_port, CO => CARRYB_5_3_port, S => 
                           SUMB_5_3_port);
   S2_5_4 : FA_X1 port map( A => ab_5_4_port, B => CARRYB_4_4_port, CI => 
                           SUMB_4_5_port, CO => CARRYB_5_4_port, S => 
                           SUMB_5_4_port);
   S2_5_5 : FA_X1 port map( A => ab_5_5_port, B => CARRYB_4_5_port, CI => 
                           SUMB_4_6_port, CO => CARRYB_5_5_port, S => 
                           SUMB_5_5_port);
   S2_5_6 : FA_X1 port map( A => ab_5_6_port, B => CARRYB_4_6_port, CI => 
                           SUMB_4_7_port, CO => CARRYB_5_6_port, S => 
                           SUMB_5_6_port);
   S2_5_7 : FA_X1 port map( A => ab_5_7_port, B => CARRYB_4_7_port, CI => 
                           SUMB_4_8_port, CO => CARRYB_5_7_port, S => 
                           SUMB_5_7_port);
   S2_5_8 : FA_X1 port map( A => ab_5_8_port, B => CARRYB_4_8_port, CI => 
                           SUMB_4_9_port, CO => CARRYB_5_8_port, S => 
                           SUMB_5_8_port);
   S2_5_9 : FA_X1 port map( A => ab_5_9_port, B => CARRYB_4_9_port, CI => 
                           SUMB_4_10_port, CO => CARRYB_5_9_port, S => 
                           SUMB_5_9_port);
   S2_5_10 : FA_X1 port map( A => ab_5_10_port, B => CARRYB_4_10_port, CI => 
                           SUMB_4_11_port, CO => n_1027, S => SUMB_5_10_port);
   S1_4_0 : FA_X1 port map( A => ab_4_0_port, B => CARRYB_3_0_port, CI => 
                           SUMB_3_1_port, CO => CARRYB_4_0_port, S => 
                           PRODUCT(4));
   S2_4_1 : FA_X1 port map( A => ab_4_1_port, B => CARRYB_3_1_port, CI => 
                           SUMB_3_2_port, CO => CARRYB_4_1_port, S => 
                           SUMB_4_1_port);
   S2_4_2 : FA_X1 port map( A => ab_4_2_port, B => CARRYB_3_2_port, CI => 
                           SUMB_3_3_port, CO => CARRYB_4_2_port, S => 
                           SUMB_4_2_port);
   S2_4_3 : FA_X1 port map( A => ab_4_3_port, B => CARRYB_3_3_port, CI => 
                           SUMB_3_4_port, CO => CARRYB_4_3_port, S => 
                           SUMB_4_3_port);
   S2_4_4 : FA_X1 port map( A => ab_4_4_port, B => CARRYB_3_4_port, CI => 
                           SUMB_3_5_port, CO => CARRYB_4_4_port, S => 
                           SUMB_4_4_port);
   S2_4_5 : FA_X1 port map( A => ab_4_5_port, B => CARRYB_3_5_port, CI => 
                           SUMB_3_6_port, CO => CARRYB_4_5_port, S => 
                           SUMB_4_5_port);
   S2_4_6 : FA_X1 port map( A => ab_4_6_port, B => CARRYB_3_6_port, CI => 
                           SUMB_3_7_port, CO => CARRYB_4_6_port, S => 
                           SUMB_4_6_port);
   S2_4_7 : FA_X1 port map( A => ab_4_7_port, B => CARRYB_3_7_port, CI => 
                           SUMB_3_8_port, CO => CARRYB_4_7_port, S => 
                           SUMB_4_7_port);
   S2_4_8 : FA_X1 port map( A => ab_4_8_port, B => CARRYB_3_8_port, CI => 
                           SUMB_3_9_port, CO => CARRYB_4_8_port, S => 
                           SUMB_4_8_port);
   S2_4_9 : FA_X1 port map( A => ab_4_9_port, B => CARRYB_3_9_port, CI => 
                           SUMB_3_10_port, CO => CARRYB_4_9_port, S => 
                           SUMB_4_9_port);
   S2_4_10 : FA_X1 port map( A => ab_4_10_port, B => CARRYB_3_10_port, CI => 
                           SUMB_3_11_port, CO => CARRYB_4_10_port, S => 
                           SUMB_4_10_port);
   S2_4_11 : FA_X1 port map( A => ab_4_11_port, B => CARRYB_3_11_port, CI => 
                           SUMB_3_12_port, CO => n_1028, S => SUMB_4_11_port);
   S1_3_0 : FA_X1 port map( A => ab_3_0_port, B => CARRYB_2_0_port, CI => 
                           SUMB_2_1_port, CO => CARRYB_3_0_port, S => 
                           PRODUCT(3));
   S2_3_1 : FA_X1 port map( A => ab_3_1_port, B => CARRYB_2_1_port, CI => 
                           SUMB_2_2_port, CO => CARRYB_3_1_port, S => 
                           SUMB_3_1_port);
   S2_3_2 : FA_X1 port map( A => ab_3_2_port, B => CARRYB_2_2_port, CI => 
                           SUMB_2_3_port, CO => CARRYB_3_2_port, S => 
                           SUMB_3_2_port);
   S2_3_3 : FA_X1 port map( A => ab_3_3_port, B => CARRYB_2_3_port, CI => 
                           SUMB_2_4_port, CO => CARRYB_3_3_port, S => 
                           SUMB_3_3_port);
   S2_3_4 : FA_X1 port map( A => ab_3_4_port, B => CARRYB_2_4_port, CI => 
                           SUMB_2_5_port, CO => CARRYB_3_4_port, S => 
                           SUMB_3_4_port);
   S2_3_5 : FA_X1 port map( A => ab_3_5_port, B => CARRYB_2_5_port, CI => 
                           SUMB_2_6_port, CO => CARRYB_3_5_port, S => 
                           SUMB_3_5_port);
   S2_3_6 : FA_X1 port map( A => ab_3_6_port, B => CARRYB_2_6_port, CI => 
                           SUMB_2_7_port, CO => CARRYB_3_6_port, S => 
                           SUMB_3_6_port);
   S2_3_7 : FA_X1 port map( A => ab_3_7_port, B => CARRYB_2_7_port, CI => 
                           SUMB_2_8_port, CO => CARRYB_3_7_port, S => 
                           SUMB_3_7_port);
   S2_3_8 : FA_X1 port map( A => ab_3_8_port, B => CARRYB_2_8_port, CI => 
                           SUMB_2_9_port, CO => CARRYB_3_8_port, S => 
                           SUMB_3_8_port);
   S2_3_9 : FA_X1 port map( A => ab_3_9_port, B => CARRYB_2_9_port, CI => 
                           SUMB_2_10_port, CO => CARRYB_3_9_port, S => 
                           SUMB_3_9_port);
   S2_3_10 : FA_X1 port map( A => ab_3_10_port, B => CARRYB_2_10_port, CI => 
                           SUMB_2_11_port, CO => CARRYB_3_10_port, S => 
                           SUMB_3_10_port);
   S2_3_11 : FA_X1 port map( A => ab_3_11_port, B => CARRYB_2_11_port, CI => 
                           SUMB_2_12_port, CO => CARRYB_3_11_port, S => 
                           SUMB_3_11_port);
   S2_3_12 : FA_X1 port map( A => ab_3_12_port, B => CARRYB_2_12_port, CI => 
                           SUMB_2_13_port, CO => n_1029, S => SUMB_3_12_port);
   S1_2_0 : FA_X1 port map( A => ab_2_0_port, B => n2, CI => n15, CO => 
                           CARRYB_2_0_port, S => PRODUCT(2));
   S2_2_1 : FA_X1 port map( A => ab_2_1_port, B => n3, CI => n16, CO => 
                           CARRYB_2_1_port, S => SUMB_2_1_port);
   S2_2_2 : FA_X1 port map( A => ab_2_2_port, B => n4, CI => n26, CO => 
                           CARRYB_2_2_port, S => SUMB_2_2_port);
   S2_2_3 : FA_X1 port map( A => ab_2_3_port, B => n14, CI => n25, CO => 
                           CARRYB_2_3_port, S => SUMB_2_3_port);
   S2_2_4 : FA_X1 port map( A => ab_2_4_port, B => n13, CI => n24, CO => 
                           CARRYB_2_4_port, S => SUMB_2_4_port);
   S2_2_5 : FA_X1 port map( A => ab_2_5_port, B => n12, CI => n23, CO => 
                           CARRYB_2_5_port, S => SUMB_2_5_port);
   S2_2_6 : FA_X1 port map( A => ab_2_6_port, B => n11, CI => n22, CO => 
                           CARRYB_2_6_port, S => SUMB_2_6_port);
   S2_2_7 : FA_X1 port map( A => ab_2_7_port, B => n10, CI => n21, CO => 
                           CARRYB_2_7_port, S => SUMB_2_7_port);
   S2_2_8 : FA_X1 port map( A => ab_2_8_port, B => n9, CI => n20, CO => 
                           CARRYB_2_8_port, S => SUMB_2_8_port);
   S2_2_9 : FA_X1 port map( A => ab_2_9_port, B => n8, CI => n19, CO => 
                           CARRYB_2_9_port, S => SUMB_2_9_port);
   S2_2_10 : FA_X1 port map( A => ab_2_10_port, B => n7, CI => n18, CO => 
                           CARRYB_2_10_port, S => SUMB_2_10_port);
   S2_2_11 : FA_X1 port map( A => ab_2_11_port, B => n6, CI => n17, CO => 
                           CARRYB_2_11_port, S => SUMB_2_11_port);
   S2_2_12 : FA_X1 port map( A => ab_2_12_port, B => n5, CI => n27, CO => 
                           CARRYB_2_12_port, S => SUMB_2_12_port);
   S2_2_13 : FA_X1 port map( A => ab_2_13_port, B => n29, CI => n28, CO => 
                           n_1030, S => SUMB_2_13_port);
   U2 : AND2_X1 port map( A1 => ab_0_1_port, A2 => ab_1_0_port, ZN => n2);
   U3 : AND2_X1 port map( A1 => ab_0_2_port, A2 => ab_1_1_port, ZN => n3);
   U4 : AND2_X1 port map( A1 => ab_0_3_port, A2 => ab_1_2_port, ZN => n4);
   U5 : AND2_X1 port map( A1 => ab_0_13_port, A2 => ab_1_12_port, ZN => n5);
   U6 : AND2_X1 port map( A1 => ab_0_12_port, A2 => ab_1_11_port, ZN => n6);
   U7 : AND2_X1 port map( A1 => ab_0_11_port, A2 => ab_1_10_port, ZN => n7);
   U8 : AND2_X1 port map( A1 => ab_0_10_port, A2 => ab_1_9_port, ZN => n8);
   U9 : AND2_X1 port map( A1 => ab_0_9_port, A2 => ab_1_8_port, ZN => n9);
   U10 : AND2_X1 port map( A1 => ab_0_8_port, A2 => ab_1_7_port, ZN => n10);
   U11 : AND2_X1 port map( A1 => ab_0_7_port, A2 => ab_1_6_port, ZN => n11);
   U12 : AND2_X1 port map( A1 => ab_0_6_port, A2 => ab_1_5_port, ZN => n12);
   U13 : AND2_X1 port map( A1 => ab_0_5_port, A2 => ab_1_4_port, ZN => n13);
   U14 : AND2_X1 port map( A1 => ab_0_4_port, A2 => ab_1_3_port, ZN => n14);
   U15 : XOR2_X1 port map( A => ab_1_1_port, B => ab_0_2_port, Z => n15);
   U16 : XOR2_X1 port map( A => ab_1_2_port, B => ab_0_3_port, Z => n16);
   U17 : XOR2_X1 port map( A => ab_1_12_port, B => ab_0_13_port, Z => n17);
   U18 : XOR2_X1 port map( A => ab_1_11_port, B => ab_0_12_port, Z => n18);
   U19 : XOR2_X1 port map( A => ab_1_10_port, B => ab_0_11_port, Z => n19);
   U20 : XOR2_X1 port map( A => ab_1_9_port, B => ab_0_10_port, Z => n20);
   U21 : XOR2_X1 port map( A => ab_1_8_port, B => ab_0_9_port, Z => n21);
   U22 : XOR2_X1 port map( A => ab_1_7_port, B => ab_0_8_port, Z => n22);
   U23 : XOR2_X1 port map( A => ab_1_6_port, B => ab_0_7_port, Z => n23);
   U24 : XOR2_X1 port map( A => ab_1_5_port, B => ab_0_6_port, Z => n24);
   U25 : XOR2_X1 port map( A => ab_1_4_port, B => ab_0_5_port, Z => n25);
   U26 : XOR2_X1 port map( A => ab_1_3_port, B => ab_0_4_port, Z => n26);
   U27 : XOR2_X1 port map( A => ab_1_13_port, B => ab_0_14_port, Z => n27);
   U28 : XOR2_X1 port map( A => ab_1_14_port, B => ab_0_15_port, Z => n28);
   U29 : AND2_X1 port map( A1 => ab_0_14_port, A2 => ab_1_13_port, ZN => n29);
   U30 : XOR2_X1 port map( A => ab_1_0_port, B => ab_0_1_port, Z => PRODUCT(1))
                           ;
   U31 : INV_X1 port map( A => B(0), ZN => n62);
   U32 : INV_X1 port map( A => A(0), ZN => n46);
   U33 : INV_X1 port map( A => B(1), ZN => n61);
   U34 : INV_X1 port map( A => A(1), ZN => n45);
   U35 : INV_X1 port map( A => B(2), ZN => n60);
   U36 : INV_X1 port map( A => A(2), ZN => n44);
   U37 : INV_X1 port map( A => B(3), ZN => n59);
   U38 : INV_X1 port map( A => A(3), ZN => n43);
   U39 : INV_X1 port map( A => B(4), ZN => n58);
   U40 : INV_X1 port map( A => A(4), ZN => n42);
   U41 : INV_X1 port map( A => B(5), ZN => n57);
   U42 : INV_X1 port map( A => A(5), ZN => n41);
   U43 : INV_X1 port map( A => B(6), ZN => n56);
   U44 : INV_X1 port map( A => A(6), ZN => n40);
   U45 : INV_X1 port map( A => B(7), ZN => n55);
   U46 : INV_X1 port map( A => A(7), ZN => n39);
   U47 : INV_X1 port map( A => B(8), ZN => n54);
   U48 : INV_X1 port map( A => A(8), ZN => n38);
   U49 : INV_X1 port map( A => B(9), ZN => n53);
   U50 : INV_X1 port map( A => A(9), ZN => n37);
   U51 : INV_X1 port map( A => B(15), ZN => n47);
   U52 : INV_X1 port map( A => B(10), ZN => n52);
   U53 : INV_X1 port map( A => A(10), ZN => n36);
   U54 : INV_X1 port map( A => B(11), ZN => n51);
   U55 : INV_X1 port map( A => A(11), ZN => n35);
   U56 : INV_X1 port map( A => B(12), ZN => n50);
   U57 : INV_X1 port map( A => A(12), ZN => n34);
   U58 : INV_X1 port map( A => B(13), ZN => n49);
   U59 : INV_X1 port map( A => A(13), ZN => n33);
   U60 : INV_X1 port map( A => B(14), ZN => n48);
   U61 : INV_X1 port map( A => A(14), ZN => n32);
   U62 : INV_X1 port map( A => A(15), ZN => n31);
   U63 : NOR2_X1 port map( A1 => n37, A2 => n56, ZN => ab_9_6_port);
   U64 : NOR2_X1 port map( A1 => n37, A2 => n57, ZN => ab_9_5_port);
   U65 : NOR2_X1 port map( A1 => n37, A2 => n58, ZN => ab_9_4_port);
   U66 : NOR2_X1 port map( A1 => n37, A2 => n59, ZN => ab_9_3_port);
   U67 : NOR2_X1 port map( A1 => n37, A2 => n60, ZN => ab_9_2_port);
   U68 : NOR2_X1 port map( A1 => n37, A2 => n61, ZN => ab_9_1_port);
   U69 : NOR2_X1 port map( A1 => n37, A2 => n62, ZN => ab_9_0_port);
   U70 : NOR2_X1 port map( A1 => n55, A2 => n38, ZN => ab_8_7_port);
   U71 : NOR2_X1 port map( A1 => n56, A2 => n38, ZN => ab_8_6_port);
   U72 : NOR2_X1 port map( A1 => n57, A2 => n38, ZN => ab_8_5_port);
   U73 : NOR2_X1 port map( A1 => n58, A2 => n38, ZN => ab_8_4_port);
   U74 : NOR2_X1 port map( A1 => n59, A2 => n38, ZN => ab_8_3_port);
   U75 : NOR2_X1 port map( A1 => n60, A2 => n38, ZN => ab_8_2_port);
   U76 : NOR2_X1 port map( A1 => n61, A2 => n38, ZN => ab_8_1_port);
   U77 : NOR2_X1 port map( A1 => n62, A2 => n38, ZN => ab_8_0_port);
   U78 : NOR2_X1 port map( A1 => n54, A2 => n39, ZN => ab_7_8_port);
   U79 : NOR2_X1 port map( A1 => n55, A2 => n39, ZN => ab_7_7_port);
   U80 : NOR2_X1 port map( A1 => n56, A2 => n39, ZN => ab_7_6_port);
   U81 : NOR2_X1 port map( A1 => n57, A2 => n39, ZN => ab_7_5_port);
   U82 : NOR2_X1 port map( A1 => n58, A2 => n39, ZN => ab_7_4_port);
   U83 : NOR2_X1 port map( A1 => n59, A2 => n39, ZN => ab_7_3_port);
   U84 : NOR2_X1 port map( A1 => n60, A2 => n39, ZN => ab_7_2_port);
   U85 : NOR2_X1 port map( A1 => n61, A2 => n39, ZN => ab_7_1_port);
   U86 : NOR2_X1 port map( A1 => n62, A2 => n39, ZN => ab_7_0_port);
   U87 : NOR2_X1 port map( A1 => n53, A2 => n40, ZN => ab_6_9_port);
   U88 : NOR2_X1 port map( A1 => n54, A2 => n40, ZN => ab_6_8_port);
   U89 : NOR2_X1 port map( A1 => n55, A2 => n40, ZN => ab_6_7_port);
   U90 : NOR2_X1 port map( A1 => n56, A2 => n40, ZN => ab_6_6_port);
   U91 : NOR2_X1 port map( A1 => n57, A2 => n40, ZN => ab_6_5_port);
   U92 : NOR2_X1 port map( A1 => n58, A2 => n40, ZN => ab_6_4_port);
   U93 : NOR2_X1 port map( A1 => n59, A2 => n40, ZN => ab_6_3_port);
   U94 : NOR2_X1 port map( A1 => n60, A2 => n40, ZN => ab_6_2_port);
   U95 : NOR2_X1 port map( A1 => n61, A2 => n40, ZN => ab_6_1_port);
   U96 : NOR2_X1 port map( A1 => n62, A2 => n40, ZN => ab_6_0_port);
   U97 : NOR2_X1 port map( A1 => n53, A2 => n41, ZN => ab_5_9_port);
   U98 : NOR2_X1 port map( A1 => n54, A2 => n41, ZN => ab_5_8_port);
   U99 : NOR2_X1 port map( A1 => n55, A2 => n41, ZN => ab_5_7_port);
   U100 : NOR2_X1 port map( A1 => n56, A2 => n41, ZN => ab_5_6_port);
   U101 : NOR2_X1 port map( A1 => n57, A2 => n41, ZN => ab_5_5_port);
   U102 : NOR2_X1 port map( A1 => n58, A2 => n41, ZN => ab_5_4_port);
   U103 : NOR2_X1 port map( A1 => n59, A2 => n41, ZN => ab_5_3_port);
   U104 : NOR2_X1 port map( A1 => n60, A2 => n41, ZN => ab_5_2_port);
   U105 : NOR2_X1 port map( A1 => n61, A2 => n41, ZN => ab_5_1_port);
   U106 : NOR2_X1 port map( A1 => n52, A2 => n41, ZN => ab_5_10_port);
   U107 : NOR2_X1 port map( A1 => n62, A2 => n41, ZN => ab_5_0_port);
   U108 : NOR2_X1 port map( A1 => n53, A2 => n42, ZN => ab_4_9_port);
   U109 : NOR2_X1 port map( A1 => n54, A2 => n42, ZN => ab_4_8_port);
   U110 : NOR2_X1 port map( A1 => n55, A2 => n42, ZN => ab_4_7_port);
   U111 : NOR2_X1 port map( A1 => n56, A2 => n42, ZN => ab_4_6_port);
   U112 : NOR2_X1 port map( A1 => n57, A2 => n42, ZN => ab_4_5_port);
   U113 : NOR2_X1 port map( A1 => n58, A2 => n42, ZN => ab_4_4_port);
   U114 : NOR2_X1 port map( A1 => n59, A2 => n42, ZN => ab_4_3_port);
   U115 : NOR2_X1 port map( A1 => n60, A2 => n42, ZN => ab_4_2_port);
   U116 : NOR2_X1 port map( A1 => n61, A2 => n42, ZN => ab_4_1_port);
   U117 : NOR2_X1 port map( A1 => n51, A2 => n42, ZN => ab_4_11_port);
   U118 : NOR2_X1 port map( A1 => n52, A2 => n42, ZN => ab_4_10_port);
   U119 : NOR2_X1 port map( A1 => n62, A2 => n42, ZN => ab_4_0_port);
   U120 : NOR2_X1 port map( A1 => n53, A2 => n43, ZN => ab_3_9_port);
   U121 : NOR2_X1 port map( A1 => n54, A2 => n43, ZN => ab_3_8_port);
   U122 : NOR2_X1 port map( A1 => n55, A2 => n43, ZN => ab_3_7_port);
   U123 : NOR2_X1 port map( A1 => n56, A2 => n43, ZN => ab_3_6_port);
   U124 : NOR2_X1 port map( A1 => n57, A2 => n43, ZN => ab_3_5_port);
   U125 : NOR2_X1 port map( A1 => n58, A2 => n43, ZN => ab_3_4_port);
   U126 : NOR2_X1 port map( A1 => n59, A2 => n43, ZN => ab_3_3_port);
   U127 : NOR2_X1 port map( A1 => n60, A2 => n43, ZN => ab_3_2_port);
   U128 : NOR2_X1 port map( A1 => n61, A2 => n43, ZN => ab_3_1_port);
   U129 : NOR2_X1 port map( A1 => n50, A2 => n43, ZN => ab_3_12_port);
   U130 : NOR2_X1 port map( A1 => n51, A2 => n43, ZN => ab_3_11_port);
   U131 : NOR2_X1 port map( A1 => n52, A2 => n43, ZN => ab_3_10_port);
   U132 : NOR2_X1 port map( A1 => n62, A2 => n43, ZN => ab_3_0_port);
   U133 : NOR2_X1 port map( A1 => n53, A2 => n44, ZN => ab_2_9_port);
   U134 : NOR2_X1 port map( A1 => n54, A2 => n44, ZN => ab_2_8_port);
   U135 : NOR2_X1 port map( A1 => n55, A2 => n44, ZN => ab_2_7_port);
   U136 : NOR2_X1 port map( A1 => n56, A2 => n44, ZN => ab_2_6_port);
   U137 : NOR2_X1 port map( A1 => n57, A2 => n44, ZN => ab_2_5_port);
   U138 : NOR2_X1 port map( A1 => n58, A2 => n44, ZN => ab_2_4_port);
   U139 : NOR2_X1 port map( A1 => n59, A2 => n44, ZN => ab_2_3_port);
   U140 : NOR2_X1 port map( A1 => n60, A2 => n44, ZN => ab_2_2_port);
   U141 : NOR2_X1 port map( A1 => n61, A2 => n44, ZN => ab_2_1_port);
   U142 : NOR2_X1 port map( A1 => n49, A2 => n44, ZN => ab_2_13_port);
   U143 : NOR2_X1 port map( A1 => n50, A2 => n44, ZN => ab_2_12_port);
   U144 : NOR2_X1 port map( A1 => n51, A2 => n44, ZN => ab_2_11_port);
   U145 : NOR2_X1 port map( A1 => n52, A2 => n44, ZN => ab_2_10_port);
   U146 : NOR2_X1 port map( A1 => n62, A2 => n44, ZN => ab_2_0_port);
   U147 : NOR2_X1 port map( A1 => n53, A2 => n45, ZN => ab_1_9_port);
   U148 : NOR2_X1 port map( A1 => n54, A2 => n45, ZN => ab_1_8_port);
   U149 : NOR2_X1 port map( A1 => n55, A2 => n45, ZN => ab_1_7_port);
   U150 : NOR2_X1 port map( A1 => n56, A2 => n45, ZN => ab_1_6_port);
   U151 : NOR2_X1 port map( A1 => n57, A2 => n45, ZN => ab_1_5_port);
   U152 : NOR2_X1 port map( A1 => n58, A2 => n45, ZN => ab_1_4_port);
   U153 : NOR2_X1 port map( A1 => n59, A2 => n45, ZN => ab_1_3_port);
   U154 : NOR2_X1 port map( A1 => n60, A2 => n45, ZN => ab_1_2_port);
   U155 : NOR2_X1 port map( A1 => n61, A2 => n45, ZN => ab_1_1_port);
   U156 : NOR2_X1 port map( A1 => n48, A2 => n45, ZN => ab_1_14_port);
   U157 : NOR2_X1 port map( A1 => n49, A2 => n45, ZN => ab_1_13_port);
   U158 : NOR2_X1 port map( A1 => n50, A2 => n45, ZN => ab_1_12_port);
   U159 : NOR2_X1 port map( A1 => n51, A2 => n45, ZN => ab_1_11_port);
   U160 : NOR2_X1 port map( A1 => n52, A2 => n45, ZN => ab_1_10_port);
   U161 : NOR2_X1 port map( A1 => n62, A2 => n45, ZN => ab_1_0_port);
   U162 : NOR2_X1 port map( A1 => n62, A2 => n31, ZN => ab_15_0_port);
   U163 : NOR2_X1 port map( A1 => n61, A2 => n32, ZN => ab_14_1_port);
   U164 : NOR2_X1 port map( A1 => n62, A2 => n32, ZN => ab_14_0_port);
   U165 : NOR2_X1 port map( A1 => n60, A2 => n33, ZN => ab_13_2_port);
   U166 : NOR2_X1 port map( A1 => n61, A2 => n33, ZN => ab_13_1_port);
   U167 : NOR2_X1 port map( A1 => n62, A2 => n33, ZN => ab_13_0_port);
   U168 : NOR2_X1 port map( A1 => n59, A2 => n34, ZN => ab_12_3_port);
   U169 : NOR2_X1 port map( A1 => n60, A2 => n34, ZN => ab_12_2_port);
   U170 : NOR2_X1 port map( A1 => n61, A2 => n34, ZN => ab_12_1_port);
   U171 : NOR2_X1 port map( A1 => n62, A2 => n34, ZN => ab_12_0_port);
   U172 : NOR2_X1 port map( A1 => n58, A2 => n35, ZN => ab_11_4_port);
   U173 : NOR2_X1 port map( A1 => n59, A2 => n35, ZN => ab_11_3_port);
   U174 : NOR2_X1 port map( A1 => n60, A2 => n35, ZN => ab_11_2_port);
   U175 : NOR2_X1 port map( A1 => n61, A2 => n35, ZN => ab_11_1_port);
   U176 : NOR2_X1 port map( A1 => n62, A2 => n35, ZN => ab_11_0_port);
   U177 : NOR2_X1 port map( A1 => n57, A2 => n36, ZN => ab_10_5_port);
   U178 : NOR2_X1 port map( A1 => n58, A2 => n36, ZN => ab_10_4_port);
   U179 : NOR2_X1 port map( A1 => n59, A2 => n36, ZN => ab_10_3_port);
   U180 : NOR2_X1 port map( A1 => n60, A2 => n36, ZN => ab_10_2_port);
   U181 : NOR2_X1 port map( A1 => n61, A2 => n36, ZN => ab_10_1_port);
   U182 : NOR2_X1 port map( A1 => n62, A2 => n36, ZN => ab_10_0_port);
   U183 : NOR2_X1 port map( A1 => n53, A2 => n46, ZN => ab_0_9_port);
   U184 : NOR2_X1 port map( A1 => n54, A2 => n46, ZN => ab_0_8_port);
   U185 : NOR2_X1 port map( A1 => n55, A2 => n46, ZN => ab_0_7_port);
   U186 : NOR2_X1 port map( A1 => n56, A2 => n46, ZN => ab_0_6_port);
   U187 : NOR2_X1 port map( A1 => n57, A2 => n46, ZN => ab_0_5_port);
   U188 : NOR2_X1 port map( A1 => n58, A2 => n46, ZN => ab_0_4_port);
   U189 : NOR2_X1 port map( A1 => n59, A2 => n46, ZN => ab_0_3_port);
   U190 : NOR2_X1 port map( A1 => n60, A2 => n46, ZN => ab_0_2_port);
   U191 : NOR2_X1 port map( A1 => n61, A2 => n46, ZN => ab_0_1_port);
   U192 : NOR2_X1 port map( A1 => n47, A2 => n46, ZN => ab_0_15_port);
   U193 : NOR2_X1 port map( A1 => n48, A2 => n46, ZN => ab_0_14_port);
   U194 : NOR2_X1 port map( A1 => n49, A2 => n46, ZN => ab_0_13_port);
   U195 : NOR2_X1 port map( A1 => n50, A2 => n46, ZN => ab_0_12_port);
   U196 : NOR2_X1 port map( A1 => n51, A2 => n46, ZN => ab_0_11_port);
   U197 : NOR2_X1 port map( A1 => n52, A2 => n46, ZN => ab_0_10_port);
   U198 : NOR2_X1 port map( A1 => n62, A2 => n46, ZN => PRODUCT(0));

end SYN_csa;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_ALU.all;

entity ALU_DW01_addsub_0 is

   port( A, B : in std_logic_vector (15 downto 0);  CI, ADD_SUB : in std_logic;
         SUM : out std_logic_vector (15 downto 0);  CO : out std_logic);

end ALU_DW01_addsub_0;

architecture SYN_rpl of ALU_DW01_addsub_0 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component FA_X1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal carry_15_port, carry_14_port, carry_13_port, carry_12_port, 
      carry_11_port, carry_10_port, carry_9_port, carry_8_port, carry_7_port, 
      carry_6_port, carry_5_port, carry_4_port, carry_3_port, carry_2_port, 
      carry_1_port, B_AS_15_port, B_AS_14_port, B_AS_13_port, B_AS_12_port, 
      B_AS_11_port, B_AS_10_port, B_AS_9_port, B_AS_8_port, B_AS_7_port, 
      B_AS_6_port, B_AS_5_port, B_AS_4_port, B_AS_3_port, B_AS_2_port, 
      B_AS_1_port, B_AS_0_port, n_1033 : std_logic;

begin
   
   U1_15 : FA_X1 port map( A => A(15), B => B_AS_15_port, CI => carry_15_port, 
                           CO => n_1033, S => SUM(15));
   U1_14 : FA_X1 port map( A => A(14), B => B_AS_14_port, CI => carry_14_port, 
                           CO => carry_15_port, S => SUM(14));
   U1_13 : FA_X1 port map( A => A(13), B => B_AS_13_port, CI => carry_13_port, 
                           CO => carry_14_port, S => SUM(13));
   U1_12 : FA_X1 port map( A => A(12), B => B_AS_12_port, CI => carry_12_port, 
                           CO => carry_13_port, S => SUM(12));
   U1_11 : FA_X1 port map( A => A(11), B => B_AS_11_port, CI => carry_11_port, 
                           CO => carry_12_port, S => SUM(11));
   U1_10 : FA_X1 port map( A => A(10), B => B_AS_10_port, CI => carry_10_port, 
                           CO => carry_11_port, S => SUM(10));
   U1_9 : FA_X1 port map( A => A(9), B => B_AS_9_port, CI => carry_9_port, CO 
                           => carry_10_port, S => SUM(9));
   U1_8 : FA_X1 port map( A => A(8), B => B_AS_8_port, CI => carry_8_port, CO 
                           => carry_9_port, S => SUM(8));
   U1_7 : FA_X1 port map( A => A(7), B => B_AS_7_port, CI => carry_7_port, CO 
                           => carry_8_port, S => SUM(7));
   U1_6 : FA_X1 port map( A => A(6), B => B_AS_6_port, CI => carry_6_port, CO 
                           => carry_7_port, S => SUM(6));
   U1_5 : FA_X1 port map( A => A(5), B => B_AS_5_port, CI => carry_5_port, CO 
                           => carry_6_port, S => SUM(5));
   U1_4 : FA_X1 port map( A => A(4), B => B_AS_4_port, CI => carry_4_port, CO 
                           => carry_5_port, S => SUM(4));
   U1_3 : FA_X1 port map( A => A(3), B => B_AS_3_port, CI => carry_3_port, CO 
                           => carry_4_port, S => SUM(3));
   U1_2 : FA_X1 port map( A => A(2), B => B_AS_2_port, CI => carry_2_port, CO 
                           => carry_3_port, S => SUM(2));
   U1_1 : FA_X1 port map( A => A(1), B => B_AS_1_port, CI => carry_1_port, CO 
                           => carry_2_port, S => SUM(1));
   U1_0 : FA_X1 port map( A => A(0), B => B_AS_0_port, CI => ADD_SUB, CO => 
                           carry_1_port, S => SUM(0));
   U1 : XOR2_X1 port map( A => B(9), B => ADD_SUB, Z => B_AS_9_port);
   U2 : XOR2_X1 port map( A => B(8), B => ADD_SUB, Z => B_AS_8_port);
   U3 : XOR2_X1 port map( A => B(7), B => ADD_SUB, Z => B_AS_7_port);
   U4 : XOR2_X1 port map( A => B(6), B => ADD_SUB, Z => B_AS_6_port);
   U5 : XOR2_X1 port map( A => B(5), B => ADD_SUB, Z => B_AS_5_port);
   U6 : XOR2_X1 port map( A => B(4), B => ADD_SUB, Z => B_AS_4_port);
   U7 : XOR2_X1 port map( A => B(3), B => ADD_SUB, Z => B_AS_3_port);
   U8 : XOR2_X1 port map( A => B(2), B => ADD_SUB, Z => B_AS_2_port);
   U9 : XOR2_X1 port map( A => B(1), B => ADD_SUB, Z => B_AS_1_port);
   U10 : XOR2_X1 port map( A => B(15), B => ADD_SUB, Z => B_AS_15_port);
   U11 : XOR2_X1 port map( A => B(14), B => ADD_SUB, Z => B_AS_14_port);
   U12 : XOR2_X1 port map( A => B(13), B => ADD_SUB, Z => B_AS_13_port);
   U13 : XOR2_X1 port map( A => B(12), B => ADD_SUB, Z => B_AS_12_port);
   U14 : XOR2_X1 port map( A => B(11), B => ADD_SUB, Z => B_AS_11_port);
   U15 : XOR2_X1 port map( A => B(10), B => ADD_SUB, Z => B_AS_10_port);
   U16 : XOR2_X1 port map( A => B(0), B => ADD_SUB, Z => B_AS_0_port);

end SYN_rpl;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_ALU.all;

entity ALU is

   port( FUNC : in TYPE_OP;  DATA1, DATA2 : in std_logic_vector (15 downto 0); 
         OUTALU : out std_logic_vector (15 downto 0));

end ALU;

architecture SYN_BEHAVIOR of ALU is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OR3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND4_X1
      port( A1, A2, A3, A4 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI211_X1
      port( C1, C2, A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR3_X4
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR3_X2
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component ALU_DW02_mult_0
      port( A, B : in std_logic_vector (15 downto 0);  TC : in std_logic;  
            PRODUCT : out std_logic_vector (31 downto 0));
   end component;
   
   component ALU_DW01_addsub_0
      port( A, B : in std_logic_vector (15 downto 0);  CI, ADD_SUB : in 
            std_logic;  SUM : out std_logic_vector (15 downto 0);  CO : out 
            std_logic);
   end component;
   
   component DLH_X1
      port( G, D : in std_logic;  Q : out std_logic);
   end component;
   
   signal FUNC_3_port, FUNC_2_port, FUNC_1_port, FUNC_0_port, N60, N61, N62, 
      N63, N64, N65, N66, N67, N68, N69, N70, N71, N72, N73, N74, N75, N76, N77
      , N78, N79, N80, N81, N82, N83, N84, N85, N86, N87, N88, N89, N90, N91, 
      N140, N141, N142, N143, N144, N145, N146, N147, N148, N149, N150, N151, 
      N152, N153, N154, N155, N156, n13, n16, U2_U1_Z_0, n136, n137, n138, n139
      , n140_port, n141_port, n142_port, n143_port, n144_port, n145_port, 
      n146_port, n147_port, n148_port, n149_port, n150_port, n151_port, 
      n152_port, n153_port, n154_port, n155_port, n156_port, n157, n158, n159, 
      n160, n161, n162, n163, n164, n165, n166, n167, n168, n169, n170, n171, 
      n172, n173, n174, n175, n176, n177, n178, n179, n180, n181, n182, n183, 
      n184, n185, n186, n187, n188, n189, n190, n191, n192, n193, n194, n195, 
      n196, n197, n198, n199, n200, n201, n202, n203, n204, n205, n206, n207, 
      n208, n209, n210, n211, n212, n213, n214, n215, n216, n217, n218, n219, 
      n220, n221, n222, n223, n224, n225, n226, n227, n228, n229, n230, n231, 
      n232, n233, n234, n235, n236, n237, n238, n239, n240, n241, n242, n243, 
      n244, n245, n246, n247, n248, n249, n250, n251, n252, n253, n254, n255, 
      n256, n257, n258, n259, n260, n261, n262, n263, n264, n265, n266, n267, 
      n268, n269, n270, n271, n272, n273, n274, n275, n_1034, n_1035, n_1036, 
      n_1037, n_1038, n_1039, n_1040, n_1041, n_1042, n_1043, n_1044, n_1045, 
      n_1046, n_1047, n_1048, n_1049, n_1050 : std_logic;

begin
   (FUNC_3_port, FUNC_2_port, FUNC_1_port, FUNC_0_port) <= 
      TYPE_OP_to_std_logic_vector(FUNC);
   
   n13 <= '0';
   n16 <= '0';
   OUTALU_reg_15_inst : DLH_X1 port map( G => N140, D => N156, Q => OUTALU(15))
                           ;
   OUTALU_reg_14_inst : DLH_X1 port map( G => N140, D => N155, Q => OUTALU(14))
                           ;
   OUTALU_reg_13_inst : DLH_X1 port map( G => N140, D => N154, Q => OUTALU(13))
                           ;
   OUTALU_reg_12_inst : DLH_X1 port map( G => N140, D => N153, Q => OUTALU(12))
                           ;
   OUTALU_reg_11_inst : DLH_X1 port map( G => N140, D => N152, Q => OUTALU(11))
                           ;
   OUTALU_reg_10_inst : DLH_X1 port map( G => N140, D => N151, Q => OUTALU(10))
                           ;
   OUTALU_reg_9_inst : DLH_X1 port map( G => N140, D => N150, Q => OUTALU(9));
   OUTALU_reg_8_inst : DLH_X1 port map( G => N140, D => N149, Q => OUTALU(8));
   OUTALU_reg_7_inst : DLH_X1 port map( G => N140, D => N148, Q => OUTALU(7));
   OUTALU_reg_6_inst : DLH_X1 port map( G => N140, D => N147, Q => OUTALU(6));
   OUTALU_reg_5_inst : DLH_X1 port map( G => N140, D => N146, Q => OUTALU(5));
   OUTALU_reg_4_inst : DLH_X1 port map( G => N140, D => N145, Q => OUTALU(4));
   OUTALU_reg_3_inst : DLH_X1 port map( G => N140, D => N144, Q => OUTALU(3));
   OUTALU_reg_2_inst : DLH_X1 port map( G => N140, D => N143, Q => OUTALU(2));
   OUTALU_reg_1_inst : DLH_X1 port map( G => N140, D => N142, Q => OUTALU(1));
   OUTALU_reg_0_inst : DLH_X1 port map( G => N140, D => N141, Q => OUTALU(0));
   r63 : ALU_DW01_addsub_0 port map( A(15) => DATA1(15), A(14) => DATA1(14), 
                           A(13) => DATA1(13), A(12) => DATA1(12), A(11) => 
                           DATA1(11), A(10) => DATA1(10), A(9) => DATA1(9), 
                           A(8) => DATA1(8), A(7) => DATA1(7), A(6) => DATA1(6)
                           , A(5) => DATA1(5), A(4) => DATA1(4), A(3) => 
                           DATA1(3), A(2) => DATA1(2), A(1) => DATA1(1), A(0) 
                           => DATA1(0), B(15) => DATA2(15), B(14) => DATA2(14),
                           B(13) => DATA2(13), B(12) => DATA2(12), B(11) => 
                           DATA2(11), B(10) => DATA2(10), B(9) => DATA2(9), 
                           B(8) => DATA2(8), B(7) => DATA2(7), B(6) => DATA2(6)
                           , B(5) => DATA2(5), B(4) => DATA2(4), B(3) => 
                           DATA2(3), B(2) => DATA2(2), B(1) => DATA2(1), B(0) 
                           => DATA2(0), CI => n13, ADD_SUB => U2_U1_Z_0, 
                           SUM(15) => N75, SUM(14) => N74, SUM(13) => N73, 
                           SUM(12) => N72, SUM(11) => N71, SUM(10) => N70, 
                           SUM(9) => N69, SUM(8) => N68, SUM(7) => N67, SUM(6) 
                           => N66, SUM(5) => N65, SUM(4) => N64, SUM(3) => N63,
                           SUM(2) => N62, SUM(1) => N61, SUM(0) => N60, CO => 
                           n_1034);
   mult_32 : ALU_DW02_mult_0 port map( A(15) => DATA1(15), A(14) => DATA1(14), 
                           A(13) => DATA1(13), A(12) => DATA1(12), A(11) => 
                           DATA1(11), A(10) => DATA1(10), A(9) => DATA1(9), 
                           A(8) => DATA1(8), A(7) => DATA1(7), A(6) => DATA1(6)
                           , A(5) => DATA1(5), A(4) => DATA1(4), A(3) => 
                           DATA1(3), A(2) => DATA1(2), A(1) => DATA1(1), A(0) 
                           => DATA1(0), B(15) => DATA2(15), B(14) => DATA2(14),
                           B(13) => DATA2(13), B(12) => DATA2(12), B(11) => 
                           DATA2(11), B(10) => DATA2(10), B(9) => DATA2(9), 
                           B(8) => DATA2(8), B(7) => DATA2(7), B(6) => DATA2(6)
                           , B(5) => DATA2(5), B(4) => DATA2(4), B(3) => 
                           DATA2(3), B(2) => DATA2(2), B(1) => DATA2(1), B(0) 
                           => DATA2(0), TC => n16, PRODUCT(31) => n_1035, 
                           PRODUCT(30) => n_1036, PRODUCT(29) => n_1037, 
                           PRODUCT(28) => n_1038, PRODUCT(27) => n_1039, 
                           PRODUCT(26) => n_1040, PRODUCT(25) => n_1041, 
                           PRODUCT(24) => n_1042, PRODUCT(23) => n_1043, 
                           PRODUCT(22) => n_1044, PRODUCT(21) => n_1045, 
                           PRODUCT(20) => n_1046, PRODUCT(19) => n_1047, 
                           PRODUCT(18) => n_1048, PRODUCT(17) => n_1049, 
                           PRODUCT(16) => n_1050, PRODUCT(15) => N91, 
                           PRODUCT(14) => N90, PRODUCT(13) => N89, PRODUCT(12) 
                           => N88, PRODUCT(11) => N87, PRODUCT(10) => N86, 
                           PRODUCT(9) => N85, PRODUCT(8) => N84, PRODUCT(7) => 
                           N83, PRODUCT(6) => N82, PRODUCT(5) => N81, 
                           PRODUCT(4) => N80, PRODUCT(3) => N79, PRODUCT(2) => 
                           N78, PRODUCT(1) => N77, PRODUCT(0) => N76);
   U144 : NOR3_X2 port map( A1 => FUNC_1_port, A2 => FUNC_3_port, A3 => n272, 
                           ZN => n165);
   U145 : NOR3_X4 port map( A1 => FUNC_2_port, A2 => FUNC_3_port, A3 => 
                           FUNC_1_port, ZN => n136);
   U146 : AND2_X1 port map( A1 => n136, A2 => FUNC_0_port, ZN => U2_U1_Z_0);
   U147 : NAND2_X1 port map( A1 => n137, A2 => n138, ZN => N156);
   U148 : MUX2_X1 port map( A => n139, B => n140_port, S => FUNC_2_port, Z => 
                           n138);
   U149 : NAND2_X1 port map( A1 => n141_port, A2 => n142_port, ZN => n140_port)
                           ;
   U150 : MUX2_X1 port map( A => DATA1(15), B => n143_port, S => DATA2(15), Z 
                           => n141_port);
   U151 : NAND2_X1 port map( A1 => DATA1(15), A2 => FUNC_0_port, ZN => 
                           n143_port);
   U152 : AOI21_X1 port map( B1 => n144_port, B2 => FUNC_1_port, A => n145_port
                           , ZN => n139);
   U153 : NOR3_X1 port map( A1 => n146_port, A2 => n147_port, A3 => n148_port, 
                           ZN => n145_port);
   U154 : INV_X1 port map( A => DATA1(0), ZN => n146_port);
   U155 : MUX2_X1 port map( A => N91, B => n149_port, S => FUNC_0_port, Z => 
                           n144_port);
   U156 : AND2_X1 port map( A1 => DATA1(15), A2 => DATA2(15), ZN => n149_port);
   U157 : AOI21_X1 port map( B1 => N75, B2 => n136, A => n150_port, ZN => n137)
                           ;
   U158 : NOR3_X1 port map( A1 => n151_port, A2 => FUNC_0_port, A3 => n152_port
                           , ZN => n150_port);
   U159 : OAI211_X1 port map( C1 => n153_port, C2 => n154_port, A => n155_port,
                           B => n156_port, ZN => N155);
   U160 : AOI21_X1 port map( B1 => N90, B2 => n157, A => n158, ZN => n156_port)
                           ;
   U161 : MUX2_X1 port map( A => n159, B => n160, S => DATA1(14), Z => n158);
   U162 : NAND2_X1 port map( A1 => n161, A2 => n162, ZN => n160);
   U163 : MUX2_X1 port map( A => n163, B => n164, S => DATA2(14), Z => n161);
   U164 : AND2_X1 port map( A1 => n165, A2 => DATA2(14), ZN => n159);
   U165 : AOI22_X1 port map( A1 => N74, A2 => n136, B1 => DATA1(13), B2 => n166
                           , ZN => n155_port);
   U166 : OAI211_X1 port map( C1 => n151_port, C2 => n154_port, A => n167, B =>
                           n168, ZN => N154);
   U167 : AOI21_X1 port map( B1 => N89, B2 => n157, A => n169, ZN => n168);
   U168 : MUX2_X1 port map( A => n170, B => n171, S => DATA1(13), Z => n169);
   U169 : NAND2_X1 port map( A1 => n172, A2 => n162, ZN => n171);
   U170 : MUX2_X1 port map( A => n163, B => n164, S => DATA2(13), Z => n172);
   U171 : AND2_X1 port map( A1 => n165, A2 => DATA2(13), ZN => n170);
   U172 : AOI22_X1 port map( A1 => N73, A2 => n136, B1 => DATA1(12), B2 => n166
                           , ZN => n167);
   U173 : INV_X1 port map( A => DATA1(14), ZN => n151_port);
   U174 : OAI211_X1 port map( C1 => n173, C2 => n154_port, A => n174, B => n175
                           , ZN => N153);
   U175 : AOI21_X1 port map( B1 => N88, B2 => n157, A => n176, ZN => n175);
   U176 : MUX2_X1 port map( A => n177, B => n178, S => DATA1(12), Z => n176);
   U177 : NAND2_X1 port map( A1 => n179, A2 => n162, ZN => n178);
   U178 : MUX2_X1 port map( A => n163, B => n164, S => DATA2(12), Z => n179);
   U179 : AND2_X1 port map( A1 => n165, A2 => DATA2(12), ZN => n177);
   U180 : AOI22_X1 port map( A1 => N72, A2 => n136, B1 => DATA1(11), B2 => n166
                           , ZN => n174);
   U181 : INV_X1 port map( A => DATA1(13), ZN => n173);
   U182 : OAI211_X1 port map( C1 => n154_port, C2 => n180, A => n181, B => n182
                           , ZN => N152);
   U183 : AOI21_X1 port map( B1 => N87, B2 => n157, A => n183, ZN => n182);
   U184 : MUX2_X1 port map( A => n184, B => n185, S => DATA1(11), Z => n183);
   U185 : NAND2_X1 port map( A1 => n186, A2 => n162, ZN => n185);
   U186 : MUX2_X1 port map( A => n163, B => n164, S => DATA2(11), Z => n186);
   U187 : AND2_X1 port map( A1 => n165, A2 => DATA2(11), ZN => n184);
   U188 : AOI22_X1 port map( A1 => N71, A2 => n136, B1 => DATA1(10), B2 => n166
                           , ZN => n181);
   U189 : INV_X1 port map( A => DATA1(12), ZN => n180);
   U190 : OAI211_X1 port map( C1 => n154_port, C2 => n187, A => n188, B => n189
                           , ZN => N151);
   U191 : AOI21_X1 port map( B1 => N86, B2 => n157, A => n190, ZN => n189);
   U192 : MUX2_X1 port map( A => n191, B => n192, S => DATA1(10), Z => n190);
   U193 : NAND2_X1 port map( A1 => n193, A2 => n162, ZN => n192);
   U194 : MUX2_X1 port map( A => n163, B => n164, S => DATA2(10), Z => n193);
   U195 : AND2_X1 port map( A1 => n165, A2 => DATA2(10), ZN => n191);
   U196 : AOI22_X1 port map( A1 => N70, A2 => n136, B1 => DATA1(9), B2 => n166,
                           ZN => n188);
   U197 : INV_X1 port map( A => DATA1(11), ZN => n187);
   U198 : OAI211_X1 port map( C1 => n154_port, C2 => n194, A => n195, B => n196
                           , ZN => N150);
   U199 : AOI21_X1 port map( B1 => N85, B2 => n157, A => n197, ZN => n196);
   U200 : MUX2_X1 port map( A => n198, B => n199, S => DATA1(9), Z => n197);
   U201 : NAND2_X1 port map( A1 => n200, A2 => n162, ZN => n199);
   U202 : MUX2_X1 port map( A => n163, B => n164, S => DATA2(9), Z => n200);
   U203 : AND2_X1 port map( A1 => n165, A2 => DATA2(9), ZN => n198);
   U204 : AOI22_X1 port map( A1 => N69, A2 => n136, B1 => DATA1(8), B2 => n166,
                           ZN => n195);
   U205 : INV_X1 port map( A => DATA1(10), ZN => n194);
   U206 : OAI211_X1 port map( C1 => n154_port, C2 => n201, A => n202, B => n203
                           , ZN => N149);
   U207 : AOI21_X1 port map( B1 => N84, B2 => n157, A => n204, ZN => n203);
   U208 : MUX2_X1 port map( A => n205, B => n206, S => DATA1(8), Z => n204);
   U209 : NAND2_X1 port map( A1 => n207, A2 => n162, ZN => n206);
   U210 : MUX2_X1 port map( A => n163, B => n164, S => DATA2(8), Z => n207);
   U211 : AND2_X1 port map( A1 => n165, A2 => DATA2(8), ZN => n205);
   U212 : AOI22_X1 port map( A1 => N68, A2 => n136, B1 => DATA1(7), B2 => n166,
                           ZN => n202);
   U213 : INV_X1 port map( A => DATA1(9), ZN => n201);
   U214 : OAI211_X1 port map( C1 => n154_port, C2 => n208, A => n209, B => n210
                           , ZN => N148);
   U215 : AOI21_X1 port map( B1 => N83, B2 => n157, A => n211, ZN => n210);
   U216 : MUX2_X1 port map( A => n212, B => n213, S => DATA1(7), Z => n211);
   U217 : NAND2_X1 port map( A1 => n214, A2 => n162, ZN => n213);
   U218 : MUX2_X1 port map( A => n163, B => n164, S => DATA2(7), Z => n214);
   U219 : AND2_X1 port map( A1 => n165, A2 => DATA2(7), ZN => n212);
   U220 : AOI22_X1 port map( A1 => N67, A2 => n136, B1 => DATA1(6), B2 => n166,
                           ZN => n209);
   U221 : INV_X1 port map( A => DATA1(8), ZN => n208);
   U222 : OAI211_X1 port map( C1 => n154_port, C2 => n215, A => n216, B => n217
                           , ZN => N147);
   U223 : AOI21_X1 port map( B1 => N82, B2 => n157, A => n218, ZN => n217);
   U224 : MUX2_X1 port map( A => n219, B => n220, S => DATA1(6), Z => n218);
   U225 : NAND2_X1 port map( A1 => n221, A2 => n162, ZN => n220);
   U226 : MUX2_X1 port map( A => n163, B => n164, S => DATA2(6), Z => n221);
   U227 : AND2_X1 port map( A1 => n165, A2 => DATA2(6), ZN => n219);
   U228 : AOI22_X1 port map( A1 => N66, A2 => n136, B1 => DATA1(5), B2 => n166,
                           ZN => n216);
   U229 : INV_X1 port map( A => DATA1(7), ZN => n215);
   U230 : OAI211_X1 port map( C1 => n154_port, C2 => n222, A => n223, B => n224
                           , ZN => N146);
   U231 : AOI21_X1 port map( B1 => N81, B2 => n157, A => n225, ZN => n224);
   U232 : MUX2_X1 port map( A => n226, B => n227, S => DATA1(5), Z => n225);
   U233 : NAND2_X1 port map( A1 => n228, A2 => n162, ZN => n227);
   U234 : MUX2_X1 port map( A => n163, B => n164, S => DATA2(5), Z => n228);
   U235 : AND2_X1 port map( A1 => n165, A2 => DATA2(5), ZN => n226);
   U236 : AOI22_X1 port map( A1 => N65, A2 => n136, B1 => DATA1(4), B2 => n166,
                           ZN => n223);
   U237 : INV_X1 port map( A => DATA1(6), ZN => n222);
   U238 : OAI211_X1 port map( C1 => n154_port, C2 => n229, A => n230, B => n231
                           , ZN => N145);
   U239 : AOI21_X1 port map( B1 => N80, B2 => n157, A => n232, ZN => n231);
   U240 : MUX2_X1 port map( A => n233, B => n234, S => DATA1(4), Z => n232);
   U241 : NAND2_X1 port map( A1 => n235, A2 => n162, ZN => n234);
   U242 : MUX2_X1 port map( A => n163, B => n164, S => DATA2(4), Z => n235);
   U243 : AND2_X1 port map( A1 => n165, A2 => DATA2(4), ZN => n233);
   U244 : AOI22_X1 port map( A1 => N64, A2 => n136, B1 => DATA1(3), B2 => n166,
                           ZN => n230);
   U245 : INV_X1 port map( A => DATA1(5), ZN => n229);
   U246 : OAI211_X1 port map( C1 => n154_port, C2 => n236, A => n237, B => n238
                           , ZN => N144);
   U247 : AOI21_X1 port map( B1 => N79, B2 => n157, A => n239, ZN => n238);
   U248 : MUX2_X1 port map( A => n240, B => n241, S => DATA1(3), Z => n239);
   U249 : NAND2_X1 port map( A1 => n242, A2 => n162, ZN => n241);
   U250 : MUX2_X1 port map( A => n163, B => n164, S => DATA2(3), Z => n242);
   U251 : AND2_X1 port map( A1 => n165, A2 => DATA2(3), ZN => n240);
   U252 : AOI22_X1 port map( A1 => N63, A2 => n136, B1 => DATA1(2), B2 => n166,
                           ZN => n237);
   U253 : INV_X1 port map( A => DATA1(4), ZN => n236);
   U254 : OAI211_X1 port map( C1 => n154_port, C2 => n243, A => n244, B => n245
                           , ZN => N143);
   U255 : AOI21_X1 port map( B1 => N78, B2 => n157, A => n246, ZN => n245);
   U256 : MUX2_X1 port map( A => n247, B => n248, S => DATA1(2), Z => n246);
   U257 : NAND2_X1 port map( A1 => n249, A2 => n162, ZN => n248);
   U258 : MUX2_X1 port map( A => n163, B => n164, S => DATA2(2), Z => n249);
   U259 : AND2_X1 port map( A1 => n165, A2 => DATA2(2), ZN => n247);
   U260 : AOI22_X1 port map( A1 => N62, A2 => n136, B1 => DATA1(1), B2 => n166,
                           ZN => n244);
   U261 : INV_X1 port map( A => DATA1(3), ZN => n243);
   U262 : OAI211_X1 port map( C1 => n154_port, C2 => n250, A => n251, B => n252
                           , ZN => N142);
   U263 : AOI21_X1 port map( B1 => N77, B2 => n157, A => n253, ZN => n252);
   U264 : MUX2_X1 port map( A => n254, B => n255, S => DATA1(1), Z => n253);
   U265 : NAND2_X1 port map( A1 => n256, A2 => n162, ZN => n255);
   U266 : NAND2_X1 port map( A1 => n165, A2 => n147_port, ZN => n162);
   U267 : MUX2_X1 port map( A => n163, B => n164, S => DATA2(1), Z => n256);
   U268 : AND2_X1 port map( A1 => n165, A2 => DATA2(1), ZN => n254);
   U269 : INV_X1 port map( A => n257, ZN => n157);
   U270 : AOI22_X1 port map( A1 => N61, A2 => n136, B1 => n166, B2 => DATA1(0),
                           ZN => n251);
   U271 : AND2_X1 port map( A1 => n258, A2 => n147_port, ZN => n166);
   U272 : INV_X1 port map( A => DATA1(2), ZN => n250);
   U273 : NAND2_X1 port map( A1 => FUNC_0_port, A2 => n258, ZN => n154_port);
   U274 : NAND2_X1 port map( A1 => n259, A2 => n260, ZN => N141);
   U275 : MUX2_X1 port map( A => n261, B => n262, S => FUNC_2_port, Z => n260);
   U276 : NAND2_X1 port map( A1 => n263, A2 => n142_port, ZN => n262);
   U277 : MUX2_X1 port map( A => DATA1(0), B => n264, S => DATA2(0), Z => n263)
                           ;
   U278 : NAND2_X1 port map( A1 => DATA1(0), A2 => FUNC_0_port, ZN => n264);
   U279 : AOI21_X1 port map( B1 => n265, B2 => FUNC_1_port, A => n266, ZN => 
                           n261);
   U280 : NOR3_X1 port map( A1 => n153_port, A2 => FUNC_0_port, A3 => n148_port
                           , ZN => n266);
   U281 : INV_X1 port map( A => DATA1(15), ZN => n153_port);
   U282 : MUX2_X1 port map( A => N76, B => n267, S => FUNC_0_port, Z => n265);
   U283 : AND2_X1 port map( A1 => DATA1(0), A2 => DATA2(0), ZN => n267);
   U284 : AOI21_X1 port map( B1 => N60, B2 => n136, A => n268, ZN => n259);
   U285 : NOR3_X1 port map( A1 => n269, A2 => n152_port, A3 => n147_port, ZN =>
                           n268);
   U286 : AOI21_X1 port map( B1 => FUNC_1_port, B2 => FUNC_2_port, A => n270, 
                           ZN => n152_port);
   U287 : INV_X1 port map( A => DATA1(1), ZN => n269);
   U288 : NAND4_X1 port map( A1 => n163, A2 => n257, A3 => n164, A4 => n271, ZN
                           => N140);
   U289 : AOI21_X1 port map( B1 => n142_port, B2 => n272, A => n258, ZN => n271
                           );
   U290 : NAND2_X1 port map( A1 => n273, A2 => n274, ZN => n258);
   U291 : OR3_X1 port map( A1 => n142_port, A2 => FUNC_3_port, A3 => n272, ZN 
                           => n274);
   U292 : INV_X1 port map( A => n270, ZN => n273);
   U293 : NOR2_X1 port map( A1 => n148_port, A2 => FUNC_2_port, ZN => n270);
   U294 : NAND2_X1 port map( A1 => FUNC_3_port, A2 => n142_port, ZN => 
                           n148_port);
   U295 : NAND2_X1 port map( A1 => n275, A2 => FUNC_0_port, ZN => n164);
   U296 : NAND2_X1 port map( A1 => n275, A2 => n147_port, ZN => n257);
   U297 : INV_X1 port map( A => FUNC_0_port, ZN => n147_port);
   U298 : NOR3_X1 port map( A1 => FUNC_2_port, A2 => FUNC_3_port, A3 => 
                           n142_port, ZN => n275);
   U299 : INV_X1 port map( A => FUNC_1_port, ZN => n142_port);
   U300 : INV_X1 port map( A => n165, ZN => n163);
   U301 : INV_X1 port map( A => FUNC_2_port, ZN => n272);

end SYN_BEHAVIOR;
