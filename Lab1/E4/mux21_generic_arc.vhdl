
library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_MUX21_GENERIC_NBIT16_1 is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_MUX21_GENERIC_NBIT16_1;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_MUX21_GENERIC_NBIT16_1.all;

entity ND2_BIT_1 is

   port( A : in std_logic_vector (15 downto 0);  B : in std_logic;  Y : out 
         std_logic_vector (15 downto 0));

end ND2_BIT_1;

architecture SYN_BEHAVIOTAL of ND2_BIT_1 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A(9), ZN => Y(9));
   U2 : NAND2_X1 port map( A1 => A(8), A2 => B, ZN => Y(8));
   U3 : NAND2_X1 port map( A1 => A(7), A2 => B, ZN => Y(7));
   U4 : NAND2_X1 port map( A1 => A(6), A2 => B, ZN => Y(6));
   U5 : NAND2_X1 port map( A1 => A(5), A2 => B, ZN => Y(5));
   U6 : NAND2_X1 port map( A1 => A(4), A2 => B, ZN => Y(4));
   U7 : NAND2_X1 port map( A1 => A(3), A2 => B, ZN => Y(3));
   U8 : NAND2_X1 port map( A1 => A(2), A2 => B, ZN => Y(2));
   U9 : NAND2_X1 port map( A1 => A(1), A2 => B, ZN => Y(1));
   U10 : NAND2_X1 port map( A1 => A(15), A2 => B, ZN => Y(15));
   U11 : NAND2_X1 port map( A1 => A(14), A2 => B, ZN => Y(14));
   U12 : NAND2_X1 port map( A1 => A(13), A2 => B, ZN => Y(13));
   U13 : NAND2_X1 port map( A1 => A(12), A2 => B, ZN => Y(12));
   U14 : NAND2_X1 port map( A1 => A(11), A2 => B, ZN => Y(11));
   U15 : NAND2_X1 port map( A1 => A(10), A2 => B, ZN => Y(10));
   U16 : NAND2_X1 port map( A1 => A(0), A2 => B, ZN => Y(0));

end SYN_BEHAVIOTAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_MUX21_GENERIC_NBIT16_1.all;

entity ND2 is

   port( A, B : in std_logic_vector (15 downto 0);  Y : out std_logic_vector 
         (15 downto 0));

end ND2;

architecture SYN_BEHAVIOTAL of ND2 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B(9), A2 => A(9), ZN => Y(9));
   U2 : NAND2_X1 port map( A1 => B(8), A2 => A(8), ZN => Y(8));
   U3 : NAND2_X1 port map( A1 => B(7), A2 => A(7), ZN => Y(7));
   U4 : NAND2_X1 port map( A1 => B(6), A2 => A(6), ZN => Y(6));
   U5 : NAND2_X1 port map( A1 => B(5), A2 => A(5), ZN => Y(5));
   U6 : NAND2_X1 port map( A1 => B(4), A2 => A(4), ZN => Y(4));
   U7 : NAND2_X1 port map( A1 => B(3), A2 => A(3), ZN => Y(3));
   U8 : NAND2_X1 port map( A1 => B(2), A2 => A(2), ZN => Y(2));
   U9 : NAND2_X1 port map( A1 => B(1), A2 => A(1), ZN => Y(1));
   U10 : NAND2_X1 port map( A1 => B(15), A2 => A(15), ZN => Y(15));
   U11 : NAND2_X1 port map( A1 => B(14), A2 => A(14), ZN => Y(14));
   U12 : NAND2_X1 port map( A1 => B(13), A2 => A(13), ZN => Y(13));
   U13 : NAND2_X1 port map( A1 => B(12), A2 => A(12), ZN => Y(12));
   U14 : NAND2_X1 port map( A1 => B(11), A2 => A(11), ZN => Y(11));
   U15 : NAND2_X1 port map( A1 => B(10), A2 => A(10), ZN => Y(10));
   U16 : NAND2_X1 port map( A1 => B(0), A2 => A(0), ZN => Y(0));

end SYN_BEHAVIOTAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_MUX21_GENERIC_NBIT16_1.all;

entity ND2_BIT_0 is

   port( A : in std_logic_vector (15 downto 0);  B : in std_logic;  Y : out 
         std_logic_vector (15 downto 0));

end ND2_BIT_0;

architecture SYN_BEHAVIOTAL of ND2_BIT_0 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A(9), ZN => Y(9));
   U2 : NAND2_X1 port map( A1 => A(8), A2 => B, ZN => Y(8));
   U3 : NAND2_X1 port map( A1 => A(7), A2 => B, ZN => Y(7));
   U4 : NAND2_X1 port map( A1 => A(6), A2 => B, ZN => Y(6));
   U5 : NAND2_X1 port map( A1 => A(5), A2 => B, ZN => Y(5));
   U6 : NAND2_X1 port map( A1 => A(4), A2 => B, ZN => Y(4));
   U7 : NAND2_X1 port map( A1 => A(3), A2 => B, ZN => Y(3));
   U8 : NAND2_X1 port map( A1 => A(2), A2 => B, ZN => Y(2));
   U9 : NAND2_X1 port map( A1 => A(1), A2 => B, ZN => Y(1));
   U10 : NAND2_X1 port map( A1 => A(15), A2 => B, ZN => Y(15));
   U11 : NAND2_X1 port map( A1 => A(14), A2 => B, ZN => Y(14));
   U12 : NAND2_X1 port map( A1 => A(13), A2 => B, ZN => Y(13));
   U13 : NAND2_X1 port map( A1 => A(12), A2 => B, ZN => Y(12));
   U14 : NAND2_X1 port map( A1 => A(11), A2 => B, ZN => Y(11));
   U15 : NAND2_X1 port map( A1 => A(10), A2 => B, ZN => Y(10));
   U16 : NAND2_X1 port map( A1 => A(0), A2 => B, ZN => Y(0));

end SYN_BEHAVIOTAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_MUX21_GENERIC_NBIT16_1.all;

entity IV is

   port( A : in std_logic;  Y : out std_logic);

end IV;

architecture SYN_BEHAVIORAL of IV is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : INV_X1 port map( A => A, ZN => Y);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_MUX21_GENERIC_NBIT16_1.all;

entity MUX21_GENERIC_NBIT16_1 is

   port( A, B : in std_logic_vector (15 downto 0);  SEL : in std_logic;  Y : 
         out std_logic_vector (15 downto 0));

end MUX21_GENERIC_NBIT16_1;

architecture SYN_STRUCTURAL of MUX21_GENERIC_NBIT16_1 is

   component ND2
      port( A, B : in std_logic_vector (15 downto 0);  Y : out std_logic_vector
            (15 downto 0));
   end component;
   
   component ND2_BIT_1
      port( A : in std_logic_vector (15 downto 0);  B : in std_logic;  Y : out 
            std_logic_vector (15 downto 0));
   end component;
   
   component ND2_BIT_0
      port( A : in std_logic_vector (15 downto 0);  B : in std_logic;  Y : out 
            std_logic_vector (15 downto 0));
   end component;
   
   component IV
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   signal SB, Y1_15_port, Y1_14_port, Y1_13_port, Y1_12_port, Y1_11_port, 
      Y1_10_port, Y1_9_port, Y1_8_port, Y1_7_port, Y1_6_port, Y1_5_port, 
      Y1_4_port, Y1_3_port, Y1_2_port, Y1_1_port, Y1_0_port, Y2_15_port, 
      Y2_14_port, Y2_13_port, Y2_12_port, Y2_11_port, Y2_10_port, Y2_9_port, 
      Y2_8_port, Y2_7_port, Y2_6_port, Y2_5_port, Y2_4_port, Y2_3_port, 
      Y2_2_port, Y2_1_port, Y2_0_port : std_logic;

begin
   
   UIV : IV port map( A => SEL, Y => SB);
   UND1 : ND2_BIT_0 port map( A(15) => A(15), A(14) => A(14), A(13) => A(13), 
                           A(12) => A(12), A(11) => A(11), A(10) => A(10), A(9)
                           => A(9), A(8) => A(8), A(7) => A(7), A(6) => A(6), 
                           A(5) => A(5), A(4) => A(4), A(3) => A(3), A(2) => 
                           A(2), A(1) => A(1), A(0) => A(0), B => SEL, Y(15) =>
                           Y1_15_port, Y(14) => Y1_14_port, Y(13) => Y1_13_port
                           , Y(12) => Y1_12_port, Y(11) => Y1_11_port, Y(10) =>
                           Y1_10_port, Y(9) => Y1_9_port, Y(8) => Y1_8_port, 
                           Y(7) => Y1_7_port, Y(6) => Y1_6_port, Y(5) => 
                           Y1_5_port, Y(4) => Y1_4_port, Y(3) => Y1_3_port, 
                           Y(2) => Y1_2_port, Y(1) => Y1_1_port, Y(0) => 
                           Y1_0_port);
   UND2 : ND2_BIT_1 port map( A(15) => B(15), A(14) => B(14), A(13) => B(13), 
                           A(12) => B(12), A(11) => B(11), A(10) => B(10), A(9)
                           => B(9), A(8) => B(8), A(7) => B(7), A(6) => B(6), 
                           A(5) => B(5), A(4) => B(4), A(3) => B(3), A(2) => 
                           B(2), A(1) => B(1), A(0) => B(0), B => SB, Y(15) => 
                           Y2_15_port, Y(14) => Y2_14_port, Y(13) => Y2_13_port
                           , Y(12) => Y2_12_port, Y(11) => Y2_11_port, Y(10) =>
                           Y2_10_port, Y(9) => Y2_9_port, Y(8) => Y2_8_port, 
                           Y(7) => Y2_7_port, Y(6) => Y2_6_port, Y(5) => 
                           Y2_5_port, Y(4) => Y2_4_port, Y(3) => Y2_3_port, 
                           Y(2) => Y2_2_port, Y(1) => Y2_1_port, Y(0) => 
                           Y2_0_port);
   UND3 : ND2 port map( A(15) => Y1_15_port, A(14) => Y1_14_port, A(13) => 
                           Y1_13_port, A(12) => Y1_12_port, A(11) => Y1_11_port
                           , A(10) => Y1_10_port, A(9) => Y1_9_port, A(8) => 
                           Y1_8_port, A(7) => Y1_7_port, A(6) => Y1_6_port, 
                           A(5) => Y1_5_port, A(4) => Y1_4_port, A(3) => 
                           Y1_3_port, A(2) => Y1_2_port, A(1) => Y1_1_port, 
                           A(0) => Y1_0_port, B(15) => Y2_15_port, B(14) => 
                           Y2_14_port, B(13) => Y2_13_port, B(12) => Y2_12_port
                           , B(11) => Y2_11_port, B(10) => Y2_10_port, B(9) => 
                           Y2_9_port, B(8) => Y2_8_port, B(7) => Y2_7_port, 
                           B(6) => Y2_6_port, B(5) => Y2_5_port, B(4) => 
                           Y2_4_port, B(3) => Y2_3_port, B(2) => Y2_2_port, 
                           B(1) => Y2_1_port, B(0) => Y2_0_port, Y(15) => Y(15)
                           , Y(14) => Y(14), Y(13) => Y(13), Y(12) => Y(12), 
                           Y(11) => Y(11), Y(10) => Y(10), Y(9) => Y(9), Y(8) 
                           => Y(8), Y(7) => Y(7), Y(6) => Y(6), Y(5) => Y(5), 
                           Y(4) => Y(4), Y(3) => Y(3), Y(2) => Y(2), Y(1) => 
                           Y(1), Y(0) => Y(0));

end SYN_STRUCTURAL;
