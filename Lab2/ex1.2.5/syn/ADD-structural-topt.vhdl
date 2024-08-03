
library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_P4_ADDER is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_P4_ADDER;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_63 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_63;

architecture SYN_BEHAVIORAL of FA_63 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n16, n17 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n16, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n16);
   U1 : INV_X1 port map( A => n17, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n16, B2 => Ci, ZN => n17);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_62 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_62;

architecture SYN_BEHAVIORAL of FA_62 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n16, n17 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n16, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n16);
   U1 : INV_X1 port map( A => n17, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n16, B2 => Ci, ZN => n17);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_61 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_61;

architecture SYN_BEHAVIORAL of FA_61 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n16, n17 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n16, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n16);
   U1 : INV_X1 port map( A => n17, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n16, B2 => Ci, ZN => n17);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_60 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_60;

architecture SYN_BEHAVIORAL of FA_60 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n16, n17 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n16, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n16);
   U1 : INV_X1 port map( A => n17, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n16, B2 => Ci, ZN => n17);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_59 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_59;

architecture SYN_BEHAVIORAL of FA_59 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n16, n17 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n16, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n16);
   U1 : INV_X1 port map( A => n17, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n16, B2 => Ci, ZN => n17);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_58 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_58;

architecture SYN_BEHAVIORAL of FA_58 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n16, n17 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n16, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n16);
   U1 : INV_X1 port map( A => n17, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n16, B2 => Ci, ZN => n17);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_57 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_57;

architecture SYN_BEHAVIORAL of FA_57 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n16, n17 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n16, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n16);
   U1 : INV_X1 port map( A => n17, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n16, B2 => Ci, ZN => n17);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_56 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_56;

architecture SYN_BEHAVIORAL of FA_56 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n16, n17, n18 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n16, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n17);
   U1 : XOR2_X1 port map( A => A, B => B, Z => n16);
   U2 : INV_X1 port map( A => n18, ZN => Co);
   U5 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n17, B2 => Ci, ZN => n18);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_55 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_55;

architecture SYN_BEHAVIORAL of FA_55 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n16, n17 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n16, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n16);
   U1 : INV_X1 port map( A => n17, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n16, B2 => Ci, ZN => n17);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_54 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_54;

architecture SYN_BEHAVIORAL of FA_54 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n16, n17 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n16, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n16);
   U1 : INV_X1 port map( A => n17, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n16, B2 => Ci, ZN => n17);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_53 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_53;

architecture SYN_BEHAVIORAL of FA_53 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n16, n17 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n16, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n16);
   U1 : INV_X1 port map( A => n17, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n16, B2 => Ci, ZN => n17);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_52 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_52;

architecture SYN_BEHAVIORAL of FA_52 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n16, n17 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n16, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n16);
   U1 : INV_X1 port map( A => n17, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n16, B2 => Ci, ZN => n17);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_51 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_51;

architecture SYN_BEHAVIORAL of FA_51 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n16, n17 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n16, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n16);
   U1 : INV_X1 port map( A => n17, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n16, B2 => Ci, ZN => n17);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_50 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_50;

architecture SYN_BEHAVIORAL of FA_50 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n16, n17 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n16, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n16);
   U1 : INV_X1 port map( A => n17, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n16, B2 => Ci, ZN => n17);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_49 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_49;

architecture SYN_BEHAVIORAL of FA_49 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n16, n17 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n16, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n16);
   U1 : INV_X1 port map( A => n17, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n16, B2 => Ci, ZN => n17);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_48 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_48;

architecture SYN_BEHAVIORAL of FA_48 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n16, n17 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n16, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n16);
   U1 : INV_X1 port map( A => n17, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n16, B2 => Ci, ZN => n17);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_47 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_47;

architecture SYN_BEHAVIORAL of FA_47 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n16, n17 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n16, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n16);
   U1 : INV_X1 port map( A => n17, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n16, B2 => Ci, ZN => n17);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_46 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_46;

architecture SYN_BEHAVIORAL of FA_46 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n16, n17 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n16, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n16);
   U1 : INV_X1 port map( A => n17, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n16, B2 => Ci, ZN => n17);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_45 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_45;

architecture SYN_BEHAVIORAL of FA_45 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n16, n17 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n16, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n16);
   U1 : INV_X1 port map( A => n17, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n16, B2 => Ci, ZN => n17);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_44 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_44;

architecture SYN_BEHAVIORAL of FA_44 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n16, n17 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n16, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n16);
   U1 : INV_X1 port map( A => n17, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n16, B2 => Ci, ZN => n17);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_43 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_43;

architecture SYN_BEHAVIORAL of FA_43 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n16, n17 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n16, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n16);
   U1 : INV_X1 port map( A => n17, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n16, B2 => Ci, ZN => n17);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_42 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_42;

architecture SYN_BEHAVIORAL of FA_42 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n16, n17 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n16, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n16);
   U1 : INV_X1 port map( A => n17, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n16, B2 => Ci, ZN => n17);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_41 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_41;

architecture SYN_BEHAVIORAL of FA_41 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n16, n17 : std_logic;

begin
   
   U4 : XOR2_X1 port map( A => A, B => B, Z => n16);
   U1 : XOR2_X1 port map( A => Ci, B => n16, Z => S);
   U2 : INV_X1 port map( A => n17, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n16, B2 => Ci, ZN => n17);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_40 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_40;

architecture SYN_BEHAVIORAL of FA_40 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n16, n17 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n16, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n16);
   U1 : INV_X1 port map( A => n17, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n16, B2 => Ci, ZN => n17);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_39 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_39;

architecture SYN_BEHAVIORAL of FA_39 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n16, n17 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n16, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n16);
   U1 : INV_X1 port map( A => n17, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n16, B2 => Ci, ZN => n17);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_38 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_38;

architecture SYN_BEHAVIORAL of FA_38 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n16, n17 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n16, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n16);
   U1 : INV_X1 port map( A => n17, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n16, B2 => Ci, ZN => n17);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_37 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_37;

architecture SYN_BEHAVIORAL of FA_37 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n16, n17 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n16, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n16);
   U1 : INV_X1 port map( A => n17, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n16, B2 => Ci, ZN => n17);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_36 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_36;

architecture SYN_BEHAVIORAL of FA_36 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n16, n17 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n16, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n16);
   U1 : INV_X1 port map( A => n17, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n16, B2 => Ci, ZN => n17);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_35 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_35;

architecture SYN_BEHAVIORAL of FA_35 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n16, n17 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n16, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n16);
   U1 : INV_X1 port map( A => n17, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n16, B2 => Ci, ZN => n17);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_34 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_34;

architecture SYN_BEHAVIORAL of FA_34 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n16, n17 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n16, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n16);
   U1 : INV_X1 port map( A => n17, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n16, B2 => Ci, ZN => n17);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_33 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_33;

architecture SYN_BEHAVIORAL of FA_33 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n16, n17 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n16, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n16);
   U1 : INV_X1 port map( A => n17, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n16, B2 => Ci, ZN => n17);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_32 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_32;

architecture SYN_BEHAVIORAL of FA_32 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n16, n17 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n16, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n16);
   U1 : INV_X1 port map( A => n17, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n16, B2 => Ci, ZN => n17);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_31 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_31;

architecture SYN_BEHAVIORAL of FA_31 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n16, n17 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n16, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n16);
   U1 : INV_X1 port map( A => n17, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n16, B2 => Ci, ZN => n17);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_30 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_30;

architecture SYN_BEHAVIORAL of FA_30 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n16, n17 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n16, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n16);
   U1 : INV_X1 port map( A => n17, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n16, B2 => Ci, ZN => n17);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_29 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_29;

architecture SYN_BEHAVIORAL of FA_29 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n16, n17 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n16, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n16);
   U1 : INV_X1 port map( A => n17, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n16, B2 => Ci, ZN => n17);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_28 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_28;

architecture SYN_BEHAVIORAL of FA_28 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n16, n17 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n16, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n16);
   U1 : INV_X1 port map( A => n17, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n16, B2 => Ci, ZN => n17);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_27 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_27;

architecture SYN_BEHAVIORAL of FA_27 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n16, n17 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n16, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n16);
   U1 : INV_X1 port map( A => n17, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n16, B2 => Ci, ZN => n17);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_26 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_26;

architecture SYN_BEHAVIORAL of FA_26 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n16, n17 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n16, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n16);
   U1 : INV_X1 port map( A => n17, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n16, B2 => Ci, ZN => n17);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_25 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_25;

architecture SYN_BEHAVIORAL of FA_25 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n16, n17 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n16, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n16);
   U1 : INV_X1 port map( A => n17, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n16, B2 => Ci, ZN => n17);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_24 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_24;

architecture SYN_BEHAVIORAL of FA_24 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n16, n17 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n16, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n16);
   U1 : INV_X1 port map( A => n17, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n16, B2 => Ci, ZN => n17);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_23 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_23;

architecture SYN_BEHAVIORAL of FA_23 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n16, n17 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n16, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n16);
   U1 : INV_X1 port map( A => n17, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n16, B2 => Ci, ZN => n17);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_22 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_22;

architecture SYN_BEHAVIORAL of FA_22 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n16, n17 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n16, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n16);
   U1 : INV_X1 port map( A => n17, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n16, B2 => Ci, ZN => n17);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_21 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_21;

architecture SYN_BEHAVIORAL of FA_21 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n16, n17 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n16, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n16);
   U1 : INV_X1 port map( A => n17, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n16, B2 => Ci, ZN => n17);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_20 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_20;

architecture SYN_BEHAVIORAL of FA_20 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n16, n17 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n16, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n16);
   U1 : INV_X1 port map( A => n17, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n16, B2 => Ci, ZN => n17);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_19 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_19;

architecture SYN_BEHAVIORAL of FA_19 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n16, n17 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n16, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n16);
   U1 : INV_X1 port map( A => n17, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n16, B2 => Ci, ZN => n17);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_18 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_18;

architecture SYN_BEHAVIORAL of FA_18 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n16, n17 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n16, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n16);
   U1 : INV_X1 port map( A => n17, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n16, B2 => Ci, ZN => n17);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_17 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_17;

architecture SYN_BEHAVIORAL of FA_17 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n16, n17 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n16, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n16);
   U1 : INV_X1 port map( A => n17, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n16, B2 => Ci, ZN => n17);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_16 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_16;

architecture SYN_BEHAVIORAL of FA_16 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n16, n17 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n16, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n16);
   U1 : INV_X1 port map( A => n17, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n16, B2 => Ci, ZN => n17);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_15 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_15;

architecture SYN_BEHAVIORAL of FA_15 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n16, n17 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n16, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n16);
   U1 : INV_X1 port map( A => n17, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n16, B2 => Ci, ZN => n17);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_14 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_14;

architecture SYN_BEHAVIORAL of FA_14 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n16, n17 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n16, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n16);
   U1 : INV_X1 port map( A => n17, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n16, B2 => Ci, ZN => n17);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_13 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_13;

architecture SYN_BEHAVIORAL of FA_13 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n16, n17 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n16, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n16);
   U1 : INV_X1 port map( A => n17, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n16, B2 => Ci, ZN => n17);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_12 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_12;

architecture SYN_BEHAVIORAL of FA_12 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n16, n17 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n16, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n16);
   U1 : INV_X1 port map( A => n17, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n16, B2 => Ci, ZN => n17);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_11 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_11;

architecture SYN_BEHAVIORAL of FA_11 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n16, n17 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n16, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n16);
   U1 : INV_X1 port map( A => n17, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n16, B2 => Ci, ZN => n17);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_10 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_10;

architecture SYN_BEHAVIORAL of FA_10 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n16, n17 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n16, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n16);
   U1 : INV_X1 port map( A => n17, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n16, B2 => Ci, ZN => n17);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_9 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_9;

architecture SYN_BEHAVIORAL of FA_9 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n16, n17 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n16, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n16);
   U1 : INV_X1 port map( A => n17, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n16, B2 => Ci, ZN => n17);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_8 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_8;

architecture SYN_BEHAVIORAL of FA_8 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n16, n17 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n16, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n16);
   U1 : INV_X1 port map( A => n17, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n16, B2 => Ci, ZN => n17);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_7 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_7;

architecture SYN_BEHAVIORAL of FA_7 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n16, n17 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n16, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n16);
   U1 : INV_X1 port map( A => n17, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n16, B2 => Ci, ZN => n17);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_6 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_6;

architecture SYN_BEHAVIORAL of FA_6 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n16, n17 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n16, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n16);
   U1 : INV_X1 port map( A => n17, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n16, B2 => Ci, ZN => n17);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_5 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_5;

architecture SYN_BEHAVIORAL of FA_5 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n16, n17 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n16, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n16);
   U1 : INV_X1 port map( A => n17, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n16, B2 => Ci, ZN => n17);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_4 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_4;

architecture SYN_BEHAVIORAL of FA_4 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n16, n17 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n16, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n16);
   U1 : INV_X1 port map( A => n17, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n16, B2 => Ci, ZN => n17);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_3 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_3;

architecture SYN_BEHAVIORAL of FA_3 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n16, n17 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n16, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n16);
   U1 : INV_X1 port map( A => n17, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n16, B2 => Ci, ZN => n17);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_2 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_2;

architecture SYN_BEHAVIORAL of FA_2 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n16, n17 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n16, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n16);
   U1 : INV_X1 port map( A => n17, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n16, B2 => Ci, ZN => n17);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_1 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_1;

architecture SYN_BEHAVIORAL of FA_1 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n16, n17 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n16, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n16);
   U1 : INV_X1 port map( A => n17, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n16, B2 => Ci, ZN => n17);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity RCA_NBIT4_15 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  Co : out
         std_logic;  So : out std_logic_vector (3 downto 0));

end RCA_NBIT4_15;

architecture SYN_STRUCTURAL of RCA_NBIT4_15 is

   component FA_57
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_58
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_59
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_60
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal C_TMP_3_port, C_TMP_2_port, C_TMP_1_port : std_logic;

begin
   
   FAI_1 : FA_60 port map( A => A(0), B => B(0), Ci => Ci, S => So(0), Co => 
                           C_TMP_1_port);
   FAI_2 : FA_59 port map( A => A(1), B => B(1), Ci => C_TMP_1_port, S => So(1)
                           , Co => C_TMP_2_port);
   FAI_3 : FA_58 port map( A => A(2), B => B(2), Ci => C_TMP_2_port, S => So(2)
                           , Co => C_TMP_3_port);
   FAI_4 : FA_57 port map( A => A(3), B => B(3), Ci => C_TMP_3_port, S => So(3)
                           , Co => Co);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity RCA_NBIT4_14 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  Co : out
         std_logic;  So : out std_logic_vector (3 downto 0));

end RCA_NBIT4_14;

architecture SYN_STRUCTURAL of RCA_NBIT4_14 is

   component FA_53
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_54
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_55
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_56
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal C_TMP_3_port, C_TMP_2_port, C_TMP_1_port : std_logic;

begin
   
   FAI_1 : FA_56 port map( A => A(0), B => B(0), Ci => Ci, S => So(0), Co => 
                           C_TMP_1_port);
   FAI_2 : FA_55 port map( A => A(1), B => B(1), Ci => C_TMP_1_port, S => So(1)
                           , Co => C_TMP_2_port);
   FAI_3 : FA_54 port map( A => A(2), B => B(2), Ci => C_TMP_2_port, S => So(2)
                           , Co => C_TMP_3_port);
   FAI_4 : FA_53 port map( A => A(3), B => B(3), Ci => C_TMP_3_port, S => So(3)
                           , Co => Co);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity RCA_NBIT4_13 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  Co : out
         std_logic;  So : out std_logic_vector (3 downto 0));

end RCA_NBIT4_13;

architecture SYN_STRUCTURAL of RCA_NBIT4_13 is

   component FA_49
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_50
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_51
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_52
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal C_TMP_3_port, C_TMP_2_port, C_TMP_1_port : std_logic;

begin
   
   FAI_1 : FA_52 port map( A => A(0), B => B(0), Ci => Ci, S => So(0), Co => 
                           C_TMP_1_port);
   FAI_2 : FA_51 port map( A => A(1), B => B(1), Ci => C_TMP_1_port, S => So(1)
                           , Co => C_TMP_2_port);
   FAI_3 : FA_50 port map( A => A(2), B => B(2), Ci => C_TMP_2_port, S => So(2)
                           , Co => C_TMP_3_port);
   FAI_4 : FA_49 port map( A => A(3), B => B(3), Ci => C_TMP_3_port, S => So(3)
                           , Co => Co);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity RCA_NBIT4_12 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  Co : out
         std_logic;  So : out std_logic_vector (3 downto 0));

end RCA_NBIT4_12;

architecture SYN_STRUCTURAL of RCA_NBIT4_12 is

   component FA_45
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_46
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_47
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_48
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal C_TMP_3_port, C_TMP_2_port, C_TMP_1_port : std_logic;

begin
   
   FAI_1 : FA_48 port map( A => A(0), B => B(0), Ci => Ci, S => So(0), Co => 
                           C_TMP_1_port);
   FAI_2 : FA_47 port map( A => A(1), B => B(1), Ci => C_TMP_1_port, S => So(1)
                           , Co => C_TMP_2_port);
   FAI_3 : FA_46 port map( A => A(2), B => B(2), Ci => C_TMP_2_port, S => So(2)
                           , Co => C_TMP_3_port);
   FAI_4 : FA_45 port map( A => A(3), B => B(3), Ci => C_TMP_3_port, S => So(3)
                           , Co => Co);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity RCA_NBIT4_11 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  Co : out
         std_logic;  So : out std_logic_vector (3 downto 0));

end RCA_NBIT4_11;

architecture SYN_STRUCTURAL of RCA_NBIT4_11 is

   component FA_41
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_42
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_43
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_44
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal C_TMP_3_port, C_TMP_2_port, C_TMP_1_port : std_logic;

begin
   
   FAI_1 : FA_44 port map( A => A(0), B => B(0), Ci => Ci, S => So(0), Co => 
                           C_TMP_1_port);
   FAI_2 : FA_43 port map( A => A(1), B => B(1), Ci => C_TMP_1_port, S => So(1)
                           , Co => C_TMP_2_port);
   FAI_3 : FA_42 port map( A => A(2), B => B(2), Ci => C_TMP_2_port, S => So(2)
                           , Co => C_TMP_3_port);
   FAI_4 : FA_41 port map( A => A(3), B => B(3), Ci => C_TMP_3_port, S => So(3)
                           , Co => Co);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity RCA_NBIT4_10 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  Co : out
         std_logic;  So : out std_logic_vector (3 downto 0));

end RCA_NBIT4_10;

architecture SYN_STRUCTURAL of RCA_NBIT4_10 is

   component FA_37
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_38
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_39
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_40
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal C_TMP_3_port, C_TMP_2_port, C_TMP_1_port : std_logic;

begin
   
   FAI_1 : FA_40 port map( A => A(0), B => B(0), Ci => Ci, S => So(0), Co => 
                           C_TMP_1_port);
   FAI_2 : FA_39 port map( A => A(1), B => B(1), Ci => C_TMP_1_port, S => So(1)
                           , Co => C_TMP_2_port);
   FAI_3 : FA_38 port map( A => A(2), B => B(2), Ci => C_TMP_2_port, S => So(2)
                           , Co => C_TMP_3_port);
   FAI_4 : FA_37 port map( A => A(3), B => B(3), Ci => C_TMP_3_port, S => So(3)
                           , Co => Co);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity RCA_NBIT4_9 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  Co : out
         std_logic;  So : out std_logic_vector (3 downto 0));

end RCA_NBIT4_9;

architecture SYN_STRUCTURAL of RCA_NBIT4_9 is

   component FA_33
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_34
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_35
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_36
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal C_TMP_3_port, C_TMP_2_port, C_TMP_1_port : std_logic;

begin
   
   FAI_1 : FA_36 port map( A => A(0), B => B(0), Ci => Ci, S => So(0), Co => 
                           C_TMP_1_port);
   FAI_2 : FA_35 port map( A => A(1), B => B(1), Ci => C_TMP_1_port, S => So(1)
                           , Co => C_TMP_2_port);
   FAI_3 : FA_34 port map( A => A(2), B => B(2), Ci => C_TMP_2_port, S => So(2)
                           , Co => C_TMP_3_port);
   FAI_4 : FA_33 port map( A => A(3), B => B(3), Ci => C_TMP_3_port, S => So(3)
                           , Co => Co);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity RCA_NBIT4_8 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  Co : out
         std_logic;  So : out std_logic_vector (3 downto 0));

end RCA_NBIT4_8;

architecture SYN_STRUCTURAL of RCA_NBIT4_8 is

   component FA_29
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_30
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_31
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_32
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal C_TMP_3_port, C_TMP_2_port, C_TMP_1_port : std_logic;

begin
   
   FAI_1 : FA_32 port map( A => A(0), B => B(0), Ci => Ci, S => So(0), Co => 
                           C_TMP_1_port);
   FAI_2 : FA_31 port map( A => A(1), B => B(1), Ci => C_TMP_1_port, S => So(1)
                           , Co => C_TMP_2_port);
   FAI_3 : FA_30 port map( A => A(2), B => B(2), Ci => C_TMP_2_port, S => So(2)
                           , Co => C_TMP_3_port);
   FAI_4 : FA_29 port map( A => A(3), B => B(3), Ci => C_TMP_3_port, S => So(3)
                           , Co => Co);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity RCA_NBIT4_7 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  Co : out
         std_logic;  So : out std_logic_vector (3 downto 0));

end RCA_NBIT4_7;

architecture SYN_STRUCTURAL of RCA_NBIT4_7 is

   component FA_25
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_26
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_27
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_28
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal C_TMP_3_port, C_TMP_2_port, C_TMP_1_port : std_logic;

begin
   
   FAI_1 : FA_28 port map( A => A(0), B => B(0), Ci => Ci, S => So(0), Co => 
                           C_TMP_1_port);
   FAI_2 : FA_27 port map( A => A(1), B => B(1), Ci => C_TMP_1_port, S => So(1)
                           , Co => C_TMP_2_port);
   FAI_3 : FA_26 port map( A => A(2), B => B(2), Ci => C_TMP_2_port, S => So(2)
                           , Co => C_TMP_3_port);
   FAI_4 : FA_25 port map( A => A(3), B => B(3), Ci => C_TMP_3_port, S => So(3)
                           , Co => Co);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity RCA_NBIT4_6 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  Co : out
         std_logic;  So : out std_logic_vector (3 downto 0));

end RCA_NBIT4_6;

architecture SYN_STRUCTURAL of RCA_NBIT4_6 is

   component FA_21
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_22
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_23
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_24
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal C_TMP_3_port, C_TMP_2_port, C_TMP_1_port : std_logic;

begin
   
   FAI_1 : FA_24 port map( A => A(0), B => B(0), Ci => Ci, S => So(0), Co => 
                           C_TMP_1_port);
   FAI_2 : FA_23 port map( A => A(1), B => B(1), Ci => C_TMP_1_port, S => So(1)
                           , Co => C_TMP_2_port);
   FAI_3 : FA_22 port map( A => A(2), B => B(2), Ci => C_TMP_2_port, S => So(2)
                           , Co => C_TMP_3_port);
   FAI_4 : FA_21 port map( A => A(3), B => B(3), Ci => C_TMP_3_port, S => So(3)
                           , Co => Co);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity RCA_NBIT4_5 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  Co : out
         std_logic;  So : out std_logic_vector (3 downto 0));

end RCA_NBIT4_5;

architecture SYN_STRUCTURAL of RCA_NBIT4_5 is

   component FA_17
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_18
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_19
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_20
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal C_TMP_3_port, C_TMP_2_port, C_TMP_1_port : std_logic;

begin
   
   FAI_1 : FA_20 port map( A => A(0), B => B(0), Ci => Ci, S => So(0), Co => 
                           C_TMP_1_port);
   FAI_2 : FA_19 port map( A => A(1), B => B(1), Ci => C_TMP_1_port, S => So(1)
                           , Co => C_TMP_2_port);
   FAI_3 : FA_18 port map( A => A(2), B => B(2), Ci => C_TMP_2_port, S => So(2)
                           , Co => C_TMP_3_port);
   FAI_4 : FA_17 port map( A => A(3), B => B(3), Ci => C_TMP_3_port, S => So(3)
                           , Co => Co);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity RCA_NBIT4_4 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  Co : out
         std_logic;  So : out std_logic_vector (3 downto 0));

end RCA_NBIT4_4;

architecture SYN_STRUCTURAL of RCA_NBIT4_4 is

   component FA_13
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_14
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_15
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_16
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal C_TMP_3_port, C_TMP_2_port, C_TMP_1_port : std_logic;

begin
   
   FAI_1 : FA_16 port map( A => A(0), B => B(0), Ci => Ci, S => So(0), Co => 
                           C_TMP_1_port);
   FAI_2 : FA_15 port map( A => A(1), B => B(1), Ci => C_TMP_1_port, S => So(1)
                           , Co => C_TMP_2_port);
   FAI_3 : FA_14 port map( A => A(2), B => B(2), Ci => C_TMP_2_port, S => So(2)
                           , Co => C_TMP_3_port);
   FAI_4 : FA_13 port map( A => A(3), B => B(3), Ci => C_TMP_3_port, S => So(3)
                           , Co => Co);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity RCA_NBIT4_3 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  Co : out
         std_logic;  So : out std_logic_vector (3 downto 0));

end RCA_NBIT4_3;

architecture SYN_STRUCTURAL of RCA_NBIT4_3 is

   component FA_9
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_10
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_11
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_12
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal C_TMP_3_port, C_TMP_2_port, C_TMP_1_port : std_logic;

begin
   
   FAI_1 : FA_12 port map( A => A(0), B => B(0), Ci => Ci, S => So(0), Co => 
                           C_TMP_1_port);
   FAI_2 : FA_11 port map( A => A(1), B => B(1), Ci => C_TMP_1_port, S => So(1)
                           , Co => C_TMP_2_port);
   FAI_3 : FA_10 port map( A => A(2), B => B(2), Ci => C_TMP_2_port, S => So(2)
                           , Co => C_TMP_3_port);
   FAI_4 : FA_9 port map( A => A(3), B => B(3), Ci => C_TMP_3_port, S => So(3),
                           Co => Co);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity RCA_NBIT4_2 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  Co : out
         std_logic;  So : out std_logic_vector (3 downto 0));

end RCA_NBIT4_2;

architecture SYN_STRUCTURAL of RCA_NBIT4_2 is

   component FA_5
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_6
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_7
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_8
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal C_TMP_3_port, C_TMP_2_port, C_TMP_1_port : std_logic;

begin
   
   FAI_1 : FA_8 port map( A => A(0), B => B(0), Ci => Ci, S => So(0), Co => 
                           C_TMP_1_port);
   FAI_2 : FA_7 port map( A => A(1), B => B(1), Ci => C_TMP_1_port, S => So(1),
                           Co => C_TMP_2_port);
   FAI_3 : FA_6 port map( A => A(2), B => B(2), Ci => C_TMP_2_port, S => So(2),
                           Co => C_TMP_3_port);
   FAI_4 : FA_5 port map( A => A(3), B => B(3), Ci => C_TMP_3_port, S => So(3),
                           Co => Co);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity RCA_NBIT4_1 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  Co : out
         std_logic;  So : out std_logic_vector (3 downto 0));

end RCA_NBIT4_1;

architecture SYN_STRUCTURAL of RCA_NBIT4_1 is

   component FA_1
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_2
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_3
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_4
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal C_TMP_3_port, C_TMP_2_port, C_TMP_1_port : std_logic;

begin
   
   FAI_1 : FA_4 port map( A => A(0), B => B(0), Ci => Ci, S => So(0), Co => 
                           C_TMP_1_port);
   FAI_2 : FA_3 port map( A => A(1), B => B(1), Ci => C_TMP_1_port, S => So(1),
                           Co => C_TMP_2_port);
   FAI_3 : FA_2 port map( A => A(2), B => B(2), Ci => C_TMP_2_port, S => So(2),
                           Co => C_TMP_3_port);
   FAI_4 : FA_1 port map( A => A(3), B => B(3), Ci => C_TMP_3_port, S => So(3),
                           Co => Co);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity pg_8 is

   port( Ga, Gb, P1, P2 : in std_logic;  G_out, P_out : out std_logic);

end pg_8;

architecture SYN_BHE of pg_8 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n11 : std_logic;

begin
   
   U1 : AOI21_X1 port map( B1 => P1, B2 => Gb, A => Ga, ZN => n11);
   U2 : AND2_X1 port map( A1 => P2, A2 => P1, ZN => P_out);
   U3 : INV_X1 port map( A => n11, ZN => G_out);

end SYN_BHE;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity pg_22 is

   port( Ga, Gb, P1, P2 : in std_logic;  G_out, P_out : out std_logic);

end pg_22;

architecture SYN_BHE of pg_22 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n11 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n11, ZN => G_out);
   U2 : AOI21_X1 port map( B1 => P1, B2 => Gb, A => Ga, ZN => n11);
   U3 : AND2_X1 port map( A1 => P2, A2 => P1, ZN => P_out);

end SYN_BHE;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity pg_20 is

   port( Ga, Gb, P1, P2 : in std_logic;  G_out, P_out : out std_logic);

end pg_20;

architecture SYN_BHE of pg_20 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n11 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n11, ZN => G_out);
   U2 : AOI21_X1 port map( B1 => P1, B2 => Gb, A => Ga, ZN => n11);
   U3 : AND2_X1 port map( A1 => P2, A2 => P1, ZN => P_out);

end SYN_BHE;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity pg_19 is

   port( Ga, Gb, P1, P2 : in std_logic;  G_out, P_out : out std_logic);

end pg_19;

architecture SYN_BHE of pg_19 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n11 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n11, ZN => G_out);
   U2 : AOI21_X1 port map( B1 => P1, B2 => Gb, A => Ga, ZN => n11);
   U3 : AND2_X1 port map( A1 => P1, A2 => P2, ZN => P_out);

end SYN_BHE;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity pg_18 is

   port( Ga, Gb, P1, P2 : in std_logic;  G_out, P_out : out std_logic);

end pg_18;

architecture SYN_BHE of pg_18 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n11 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n11, ZN => G_out);
   U2 : AOI21_X1 port map( B1 => P1, B2 => Gb, A => Ga, ZN => n11);
   U3 : AND2_X1 port map( A1 => P2, A2 => P1, ZN => P_out);

end SYN_BHE;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity pg_16 is

   port( Ga, Gb, P1, P2 : in std_logic;  G_out, P_out : out std_logic);

end pg_16;

architecture SYN_BHE of pg_16 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n11 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n11, ZN => G_out);
   U2 : AOI21_X1 port map( B1 => P1, B2 => Gb, A => Ga, ZN => n11);
   U3 : AND2_X1 port map( A1 => P2, A2 => P1, ZN => P_out);

end SYN_BHE;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity pg_15 is

   port( Ga, Gb, P1, P2 : in std_logic;  G_out, P_out : out std_logic);

end pg_15;

architecture SYN_BHE of pg_15 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n11 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n11, ZN => G_out);
   U2 : AOI21_X1 port map( B1 => P1, B2 => Gb, A => Ga, ZN => n11);
   U3 : AND2_X1 port map( A1 => P2, A2 => P1, ZN => P_out);

end SYN_BHE;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity pg_14 is

   port( Ga, Gb, P1, P2 : in std_logic;  G_out, P_out : out std_logic);

end pg_14;

architecture SYN_BHE of pg_14 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n11 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n11, ZN => G_out);
   U2 : AOI21_X1 port map( B1 => P1, B2 => Gb, A => Ga, ZN => n11);
   U3 : AND2_X1 port map( A1 => P2, A2 => P1, ZN => P_out);

end SYN_BHE;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity pg_13 is

   port( Ga, Gb, P1, P2 : in std_logic;  G_out, P_out : out std_logic);

end pg_13;

architecture SYN_BHE of pg_13 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n11 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n11, ZN => G_out);
   U2 : AOI21_X1 port map( B1 => P1, B2 => Gb, A => Ga, ZN => n11);
   U3 : AND2_X1 port map( A1 => P2, A2 => P1, ZN => P_out);

end SYN_BHE;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity pg_11 is

   port( Ga, Gb, P1, P2 : in std_logic;  G_out, P_out : out std_logic);

end pg_11;

architecture SYN_BHE of pg_11 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n11 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => P2, A2 => P1, ZN => P_out);
   U2 : INV_X1 port map( A => n11, ZN => G_out);
   U3 : AOI21_X1 port map( B1 => P1, B2 => Gb, A => Ga, ZN => n11);

end SYN_BHE;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity pg_7 is

   port( Ga, Gb, P1, P2 : in std_logic;  G_out, P_out : out std_logic);

end pg_7;

architecture SYN_BHE of pg_7 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n11 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n11, ZN => G_out);
   U2 : AOI21_X1 port map( B1 => P1, B2 => Gb, A => Ga, ZN => n11);
   U3 : AND2_X1 port map( A1 => P2, A2 => P1, ZN => P_out);

end SYN_BHE;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity pg_6 is

   port( Ga, Gb, P1, P2 : in std_logic;  G_out, P_out : out std_logic);

end pg_6;

architecture SYN_BHE of pg_6 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n11 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n11, ZN => G_out);
   U2 : AOI21_X1 port map( B1 => P1, B2 => Gb, A => Ga, ZN => n11);
   U3 : AND2_X1 port map( A1 => P2, A2 => P1, ZN => P_out);

end SYN_BHE;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity pg_3 is

   port( Ga, Gb, P1, P2 : in std_logic;  G_out, P_out : out std_logic);

end pg_3;

architecture SYN_BHE of pg_3 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n11 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n11, ZN => G_out);
   U2 : AOI21_X1 port map( B1 => P1, B2 => Gb, A => Ga, ZN => n11);
   U3 : AND2_X1 port map( A1 => P2, A2 => P1, ZN => P_out);

end SYN_BHE;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity pg_12 is

   port( Ga, Gb, P1, P2 : in std_logic;  G_out, P_out : out std_logic);

end pg_12;

architecture SYN_BHE of pg_12 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n11 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => P2, A2 => P1, ZN => P_out);
   U2 : INV_X1 port map( A => n11, ZN => G_out);
   U3 : AOI21_X1 port map( B1 => P1, B2 => Gb, A => Ga, ZN => n11);

end SYN_BHE;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity pg_1 is

   port( Ga, Gb, P1, P2 : in std_logic;  G_out, P_out : out std_logic);

end pg_1;

architecture SYN_BHE of pg_1 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n11 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => P2, A2 => P1, ZN => P_out);
   U2 : INV_X1 port map( A => n11, ZN => G_out);
   U3 : AOI21_X1 port map( B1 => P1, B2 => Gb, A => Ga, ZN => n11);

end SYN_BHE;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity f_add_31 is

   port( f_a, f_b : in std_logic;  G, P : out std_logic);

end f_add_31;

architecture SYN_bhe of f_add_31 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => f_b, B => f_a, Z => P);
   U1 : AND2_X1 port map( A1 => f_b, A2 => f_a, ZN => G);

end SYN_bhe;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity f_add_30 is

   port( f_a, f_b : in std_logic;  G, P : out std_logic);

end f_add_30;

architecture SYN_bhe of f_add_30 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => f_b, B => f_a, Z => P);
   U1 : AND2_X1 port map( A1 => f_b, A2 => f_a, ZN => G);

end SYN_bhe;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity f_add_29 is

   port( f_a, f_b : in std_logic;  G, P : out std_logic);

end f_add_29;

architecture SYN_bhe of f_add_29 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => f_a, B => f_b, Z => P);
   U1 : AND2_X1 port map( A1 => f_b, A2 => f_a, ZN => G);

end SYN_bhe;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity f_add_28 is

   port( f_a, f_b : in std_logic;  G, P : out std_logic);

end f_add_28;

architecture SYN_bhe of f_add_28 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => f_b, B => f_a, Z => P);
   U1 : AND2_X1 port map( A1 => f_b, A2 => f_a, ZN => G);

end SYN_bhe;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity f_add_27 is

   port( f_a, f_b : in std_logic;  G, P : out std_logic);

end f_add_27;

architecture SYN_bhe of f_add_27 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => f_b, B => f_a, Z => P);
   U1 : AND2_X1 port map( A1 => f_b, A2 => f_a, ZN => G);

end SYN_bhe;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity f_add_26 is

   port( f_a, f_b : in std_logic;  G, P : out std_logic);

end f_add_26;

architecture SYN_bhe of f_add_26 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => f_b, B => f_a, Z => P);
   U1 : AND2_X1 port map( A1 => f_b, A2 => f_a, ZN => G);

end SYN_bhe;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity f_add_24 is

   port( f_a, f_b : in std_logic;  G, P : out std_logic);

end f_add_24;

architecture SYN_bhe of f_add_24 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => f_b, B => f_a, Z => P);
   U1 : AND2_X1 port map( A1 => f_b, A2 => f_a, ZN => G);

end SYN_bhe;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity f_add_23 is

   port( f_a, f_b : in std_logic;  G, P : out std_logic);

end f_add_23;

architecture SYN_bhe of f_add_23 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => f_b, B => f_a, Z => P);
   U1 : AND2_X1 port map( A1 => f_b, A2 => f_a, ZN => G);

end SYN_bhe;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity f_add_22 is

   port( f_a, f_b : in std_logic;  G, P : out std_logic);

end f_add_22;

architecture SYN_bhe of f_add_22 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => f_b, B => f_a, Z => P);
   U1 : AND2_X1 port map( A1 => f_b, A2 => f_a, ZN => G);

end SYN_bhe;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity f_add_21 is

   port( f_a, f_b : in std_logic;  G, P : out std_logic);

end f_add_21;

architecture SYN_bhe of f_add_21 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => f_b, B => f_a, Z => P);
   U1 : AND2_X1 port map( A1 => f_b, A2 => f_a, ZN => G);

end SYN_bhe;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity f_add_20 is

   port( f_a, f_b : in std_logic;  G, P : out std_logic);

end f_add_20;

architecture SYN_bhe of f_add_20 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => f_b, B => f_a, Z => P);
   U1 : AND2_X1 port map( A1 => f_b, A2 => f_a, ZN => G);

end SYN_bhe;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity f_add_19 is

   port( f_a, f_b : in std_logic;  G, P : out std_logic);

end f_add_19;

architecture SYN_bhe of f_add_19 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => f_b, B => f_a, Z => P);
   U1 : AND2_X1 port map( A1 => f_b, A2 => f_a, ZN => G);

end SYN_bhe;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity f_add_18 is

   port( f_a, f_b : in std_logic;  G, P : out std_logic);

end f_add_18;

architecture SYN_bhe of f_add_18 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => f_b, B => f_a, Z => P);
   U1 : AND2_X1 port map( A1 => f_b, A2 => f_a, ZN => G);

end SYN_bhe;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity f_add_16 is

   port( f_a, f_b : in std_logic;  G, P : out std_logic);

end f_add_16;

architecture SYN_bhe of f_add_16 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => f_b, B => f_a, Z => P);
   U1 : AND2_X1 port map( A1 => f_b, A2 => f_a, ZN => G);

end SYN_bhe;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity f_add_15 is

   port( f_a, f_b : in std_logic;  G, P : out std_logic);

end f_add_15;

architecture SYN_bhe of f_add_15 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => f_b, B => f_a, Z => P);
   U1 : AND2_X1 port map( A1 => f_b, A2 => f_a, ZN => G);

end SYN_bhe;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity f_add_14 is

   port( f_a, f_b : in std_logic;  G, P : out std_logic);

end f_add_14;

architecture SYN_bhe of f_add_14 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => f_b, B => f_a, Z => P);
   U1 : AND2_X1 port map( A1 => f_b, A2 => f_a, ZN => G);

end SYN_bhe;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity f_add_13 is

   port( f_a, f_b : in std_logic;  G, P : out std_logic);

end f_add_13;

architecture SYN_bhe of f_add_13 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => f_b, B => f_a, Z => P);
   U1 : AND2_X1 port map( A1 => f_b, A2 => f_a, ZN => G);

end SYN_bhe;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity f_add_12 is

   port( f_a, f_b : in std_logic;  G, P : out std_logic);

end f_add_12;

architecture SYN_bhe of f_add_12 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => f_b, B => f_a, Z => P);
   U1 : AND2_X1 port map( A1 => f_b, A2 => f_a, ZN => G);

end SYN_bhe;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity f_add_11 is

   port( f_a, f_b : in std_logic;  G, P : out std_logic);

end f_add_11;

architecture SYN_bhe of f_add_11 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => f_b, B => f_a, Z => P);
   U1 : AND2_X1 port map( A1 => f_b, A2 => f_a, ZN => G);

end SYN_bhe;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity f_add_10 is

   port( f_a, f_b : in std_logic;  G, P : out std_logic);

end f_add_10;

architecture SYN_bhe of f_add_10 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => f_b, B => f_a, Z => P);
   U1 : AND2_X1 port map( A1 => f_b, A2 => f_a, ZN => G);

end SYN_bhe;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity f_add_9 is

   port( f_a, f_b : in std_logic;  G, P : out std_logic);

end f_add_9;

architecture SYN_bhe of f_add_9 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4 : std_logic;

begin
   
   U1 : NAND2_X1 port map( A1 => n2, A2 => f_b, ZN => n3);
   U2 : NAND2_X1 port map( A1 => n1, A2 => f_a, ZN => n4);
   U3 : NAND2_X1 port map( A1 => n3, A2 => n4, ZN => P);
   U4 : INV_X1 port map( A => f_b, ZN => n1);
   U5 : INV_X1 port map( A => f_a, ZN => n2);
   U6 : AND2_X1 port map( A1 => f_b, A2 => f_a, ZN => G);

end SYN_bhe;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity f_add_8 is

   port( f_a, f_b : in std_logic;  G, P : out std_logic);

end f_add_8;

architecture SYN_bhe of f_add_8 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => f_b, B => f_a, Z => P);
   U1 : AND2_X1 port map( A1 => f_b, A2 => f_a, ZN => G);

end SYN_bhe;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity f_add_7 is

   port( f_a, f_b : in std_logic;  G, P : out std_logic);

end f_add_7;

architecture SYN_bhe of f_add_7 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => f_b, B => f_a, Z => P);
   U1 : AND2_X1 port map( A1 => f_b, A2 => f_a, ZN => G);

end SYN_bhe;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity f_add_6 is

   port( f_a, f_b : in std_logic;  G, P : out std_logic);

end f_add_6;

architecture SYN_bhe of f_add_6 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => f_b, B => f_a, Z => P);
   U1 : AND2_X1 port map( A1 => f_b, A2 => f_a, ZN => G);

end SYN_bhe;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity f_add_5 is

   port( f_a, f_b : in std_logic;  G, P : out std_logic);

end f_add_5;

architecture SYN_bhe of f_add_5 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => f_b, B => f_a, Z => P);
   U1 : AND2_X1 port map( A1 => f_b, A2 => f_a, ZN => G);

end SYN_bhe;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity f_add_4 is

   port( f_a, f_b : in std_logic;  G, P : out std_logic);

end f_add_4;

architecture SYN_bhe of f_add_4 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => f_b, B => f_a, Z => P);
   U1 : AND2_X1 port map( A1 => f_b, A2 => f_a, ZN => G);

end SYN_bhe;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity f_add_3 is

   port( f_a, f_b : in std_logic;  G, P : out std_logic);

end f_add_3;

architecture SYN_bhe of f_add_3 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => f_b, B => f_a, Z => P);
   U1 : AND2_X1 port map( A1 => f_b, A2 => f_a, ZN => G);

end SYN_bhe;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity f_add_2 is

   port( f_a, f_b : in std_logic;  G, P : out std_logic);

end f_add_2;

architecture SYN_bhe of f_add_2 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => f_b, B => f_a, Z => P);
   U1 : AND2_X1 port map( A1 => f_b, A2 => f_a, ZN => G);

end SYN_bhe;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity f_add_1 is

   port( f_a, f_b : in std_logic;  G, P : out std_logic);

end f_add_1;

architecture SYN_bhe of f_add_1 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => f_b, B => f_a, Z => P);
   U1 : AND2_X1 port map( A1 => f_b, A2 => f_a, ZN => G);

end SYN_bhe;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity pg_17 is

   port( Ga, Gb, P1, P2 : in std_logic;  G_out, P_out : out std_logic);

end pg_17;

architecture SYN_BHE of pg_17 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n14 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n14, ZN => G_out);
   U2 : AOI21_X1 port map( B1 => P1, B2 => Gb, A => Ga, ZN => n14);
   U3 : AND2_X1 port map( A1 => P1, A2 => P2, ZN => P_out);

end SYN_BHE;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity pg_21 is

   port( Ga, Gb, P1, P2 : in std_logic;  G_out, P_out : out std_logic);

end pg_21;

architecture SYN_BHE of pg_21 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n2 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => P1, A2 => P2, ZN => P_out);
   U2 : AOI21_X1 port map( B1 => P1, B2 => Gb, A => Ga, ZN => n2);
   U3 : INV_X1 port map( A => n2, ZN => G_out);

end SYN_BHE;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity pg_2 is

   port( Ga, Gb, P1, P2 : in std_logic;  G_out, P_out : out std_logic);

end pg_2;

architecture SYN_BHE of pg_2 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n11 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => P2, A2 => P1, ZN => P_out);
   U2 : INV_X1 port map( A => n11, ZN => G_out);
   U3 : AOI21_X1 port map( B1 => Gb, B2 => P1, A => Ga, ZN => n11);

end SYN_BHE;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity g_7 is

   port( Ga, Gb, P : in std_logic;  G_out : out std_logic);

end g_7;

architecture SYN_BHE of g_7 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n7, n8 : std_logic;

begin
   
   U1 : NAND2_X1 port map( A1 => Gb, A2 => P, ZN => n8);
   U2 : INV_X1 port map( A => Ga, ZN => n7);
   U3 : NAND2_X1 port map( A1 => n7, A2 => n8, ZN => G_out);

end SYN_BHE;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity g_6 is

   port( Ga, Gb, P : in std_logic;  G_out : out std_logic);

end g_6;

architecture SYN_BHE of g_6 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n7 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n7, ZN => G_out);
   U2 : AOI21_X1 port map( B1 => Gb, B2 => P, A => Ga, ZN => n7);

end SYN_BHE;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity f_add_17 is

   port( f_a, f_b : in std_logic;  G, P : out std_logic);

end f_add_17;

architecture SYN_bhe of f_add_17 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U1 : XOR2_X1 port map( A => f_a, B => f_b, Z => P);
   U2 : AND2_X1 port map( A1 => f_b, A2 => f_a, ZN => G);

end SYN_bhe;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity g_3 is

   port( Ga, Gb, P : in std_logic;  G_out : out std_logic);

end g_3;

architecture SYN_BHE of g_3 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n5, n6 : std_logic;

begin
   
   U1 : NAND2_X1 port map( A1 => n6, A2 => n5, ZN => G_out);
   U2 : INV_X1 port map( A => Ga, ZN => n5);
   U3 : NAND2_X1 port map( A1 => Gb, A2 => P, ZN => n6);

end SYN_BHE;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity g_2 is

   port( Ga, Gb, P : in std_logic;  G_out : out std_logic);

end g_2;

architecture SYN_BHE of g_2 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal net6936, n5 : std_logic;

begin
   
   U1 : NAND2_X1 port map( A1 => Gb, A2 => P, ZN => n5);
   U2 : NAND2_X1 port map( A1 => n5, A2 => net6936, ZN => G_out);
   U3 : INV_X1 port map( A => Ga, ZN => net6936);

end SYN_BHE;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity g_1 is

   port( Ga, Gb, P : in std_logic;  G_out : out std_logic);

end g_1;

architecture SYN_BHE of g_1 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n5 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n5, ZN => G_out);
   U2 : AOI21_X1 port map( B1 => P, B2 => Gb, A => Ga, ZN => n5);

end SYN_BHE;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_0 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_0;

architecture SYN_BEHAVIORAL of FA_0 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n2, n3, n16 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n16, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n3);
   U1 : XOR2_X1 port map( A => A, B => B, Z => n16);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U5 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n3, B2 => Ci, ZN => n2);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity mux_1 is

   port( A, B : in std_logic_vector (3 downto 0);  SEL : in std_logic;  Y : out
         std_logic_vector (3 downto 0));

end mux_1;

architecture SYN_Behav of mux_1 is

   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U1 : MUX2_X1 port map( A => B(0), B => A(0), S => SEL, Z => Y(0));
   U2 : MUX2_X1 port map( A => B(2), B => A(2), S => SEL, Z => Y(2));
   U3 : MUX2_X1 port map( A => B(3), B => A(3), S => SEL, Z => Y(3));
   U4 : MUX2_X1 port map( A => B(1), B => A(1), S => SEL, Z => Y(1));

end SYN_Behav;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity mux_2 is

   port( A, B : in std_logic_vector (3 downto 0);  SEL : in std_logic;  Y : out
         std_logic_vector (3 downto 0));

end mux_2;

architecture SYN_Behav of mux_2 is

   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U1 : MUX2_X1 port map( A => B(0), B => A(0), S => SEL, Z => Y(0));
   U2 : MUX2_X1 port map( A => B(1), B => A(1), S => SEL, Z => Y(1));
   U3 : MUX2_X1 port map( A => B(2), B => A(2), S => SEL, Z => Y(2));
   U4 : MUX2_X1 port map( A => B(3), B => A(3), S => SEL, Z => Y(3));

end SYN_Behav;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity mux_3 is

   port( A, B : in std_logic_vector (3 downto 0);  SEL : in std_logic;  Y : out
         std_logic_vector (3 downto 0));

end mux_3;

architecture SYN_Behav of mux_3 is

   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U1 : MUX2_X1 port map( A => B(0), B => A(0), S => SEL, Z => Y(0));
   U2 : MUX2_X1 port map( A => B(1), B => A(1), S => SEL, Z => Y(1));
   U3 : MUX2_X1 port map( A => B(2), B => A(2), S => SEL, Z => Y(2));
   U4 : MUX2_X1 port map( A => B(3), B => A(3), S => SEL, Z => Y(3));

end SYN_Behav;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity mux_4 is

   port( A, B : in std_logic_vector (3 downto 0);  SEL : in std_logic;  Y : out
         std_logic_vector (3 downto 0));

end mux_4;

architecture SYN_Behav of mux_4 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   signal n9, net6861 : std_logic;

begin
   
   U1 : MUX2_X1 port map( A => B(1), B => A(1), S => SEL, Z => Y(1));
   U2 : MUX2_X1 port map( A => B(2), B => A(2), S => SEL, Z => Y(2));
   U3 : MUX2_X1 port map( A => B(3), B => A(3), S => SEL, Z => Y(3));
   U4 : INV_X1 port map( A => SEL, ZN => net6861);
   U5 : INV_X1 port map( A => n9, ZN => Y(0));
   U6 : AOI22_X1 port map( A1 => SEL, A2 => A(0), B1 => net6861, B2 => B(0), ZN
                           => n9);

end SYN_Behav;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity mux_5 is

   port( A, B : in std_logic_vector (3 downto 0);  SEL : in std_logic;  Y : out
         std_logic_vector (3 downto 0));

end mux_5;

architecture SYN_Behav of mux_5 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   signal n5, n9 : std_logic;

begin
   
   U1 : MUX2_X1 port map( A => B(1), B => A(1), S => SEL, Z => Y(1));
   U2 : MUX2_X1 port map( A => B(2), B => A(2), S => SEL, Z => Y(2));
   U3 : MUX2_X1 port map( A => B(3), B => A(3), S => SEL, Z => Y(3));
   U4 : INV_X1 port map( A => n9, ZN => Y(0));
   U5 : INV_X1 port map( A => SEL, ZN => n5);
   U6 : AOI22_X1 port map( A1 => SEL, A2 => A(0), B1 => n5, B2 => B(0), ZN => 
                           n9);

end SYN_Behav;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity mux_6 is

   port( A, B : in std_logic_vector (3 downto 0);  SEL : in std_logic;  Y : out
         std_logic_vector (3 downto 0));

end mux_6;

architecture SYN_Behav of mux_6 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n5, n7, n8, n9, n27, n28 : std_logic;

begin
   
   U1 : NAND2_X1 port map( A1 => n27, A2 => n28, ZN => Y(3));
   U2 : NAND2_X1 port map( A1 => SEL, A2 => A(3), ZN => n27);
   U3 : NAND2_X1 port map( A1 => B(3), A2 => n5, ZN => n28);
   U4 : INV_X1 port map( A => n7, ZN => Y(2));
   U5 : INV_X1 port map( A => n8, ZN => Y(1));
   U6 : INV_X1 port map( A => n9, ZN => Y(0));
   U7 : AOI22_X1 port map( A1 => A(2), A2 => SEL, B1 => B(2), B2 => n5, ZN => 
                           n7);
   U8 : AOI22_X1 port map( A1 => A(1), A2 => SEL, B1 => B(1), B2 => n5, ZN => 
                           n8);
   U9 : AOI22_X1 port map( A1 => A(0), A2 => SEL, B1 => B(0), B2 => n5, ZN => 
                           n9);
   U10 : INV_X1 port map( A => SEL, ZN => n5);

end SYN_Behav;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity mux_7 is

   port( A, B : in std_logic_vector (3 downto 0);  SEL : in std_logic;  Y : out
         std_logic_vector (3 downto 0));

end mux_7;

architecture SYN_Behav of mux_7 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n5, n6, n7, n8, n9 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n8, ZN => Y(1));
   U2 : INV_X1 port map( A => n7, ZN => Y(2));
   U3 : INV_X1 port map( A => n6, ZN => Y(3));
   U4 : INV_X1 port map( A => n9, ZN => Y(0));
   U5 : AOI22_X1 port map( A1 => SEL, A2 => A(3), B1 => B(3), B2 => n5, ZN => 
                           n6);
   U6 : AOI22_X1 port map( A1 => A(2), A2 => SEL, B1 => B(2), B2 => n5, ZN => 
                           n7);
   U7 : AOI22_X1 port map( A1 => A(1), A2 => SEL, B1 => B(1), B2 => n5, ZN => 
                           n8);
   U8 : AOI22_X1 port map( A1 => A(0), A2 => SEL, B1 => B(0), B2 => n5, ZN => 
                           n9);
   U9 : INV_X1 port map( A => SEL, ZN => n5);

end SYN_Behav;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity mux_0 is

   port( A, B : in std_logic_vector (3 downto 0);  SEL : in std_logic;  Y : out
         std_logic_vector (3 downto 0));

end mux_0;

architecture SYN_Behav of mux_0 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n5, n6, n7, n8, n9 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n6, ZN => Y(3));
   U2 : AOI22_X1 port map( A1 => SEL, A2 => A(3), B1 => B(3), B2 => n5, ZN => 
                           n6);
   U3 : INV_X1 port map( A => SEL, ZN => n5);
   U4 : INV_X1 port map( A => n8, ZN => Y(1));
   U5 : AOI22_X1 port map( A1 => A(1), A2 => SEL, B1 => B(1), B2 => n5, ZN => 
                           n8);
   U6 : INV_X1 port map( A => n7, ZN => Y(2));
   U7 : AOI22_X1 port map( A1 => A(2), A2 => SEL, B1 => B(2), B2 => n5, ZN => 
                           n7);
   U8 : INV_X1 port map( A => n9, ZN => Y(0));
   U9 : AOI22_X1 port map( A1 => A(0), A2 => SEL, B1 => B(0), B2 => n5, ZN => 
                           n9);

end SYN_Behav;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity RCA_NBIT4_0 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  Co : out
         std_logic;  So : out std_logic_vector (3 downto 0));

end RCA_NBIT4_0;

architecture SYN_STRUCTURAL of RCA_NBIT4_0 is

   component FA_61
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_62
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_63
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_0
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal C_TMP_3_port, C_TMP_2_port, C_TMP_1_port : std_logic;

begin
   
   FAI_1 : FA_0 port map( A => A(0), B => B(0), Ci => Ci, S => So(0), Co => 
                           C_TMP_1_port);
   FAI_2 : FA_63 port map( A => A(1), B => B(1), Ci => C_TMP_1_port, S => So(1)
                           , Co => C_TMP_2_port);
   FAI_3 : FA_62 port map( A => A(2), B => B(2), Ci => C_TMP_2_port, S => So(2)
                           , Co => C_TMP_3_port);
   FAI_4 : FA_61 port map( A => A(3), B => B(3), Ci => C_TMP_3_port, S => So(3)
                           , Co => Co);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity csb_ANBIT4_1 is

   port( A_c, B_c : in std_logic_vector (3 downto 0);  Ci_c : in std_logic;  
         So_c : out std_logic_vector (3 downto 0));

end csb_ANBIT4_1;

architecture SYN_STRUCTURAL of csb_ANBIT4_1 is

   component mux_1
      port( A, B : in std_logic_vector (3 downto 0);  SEL : in std_logic;  Y : 
            out std_logic_vector (3 downto 0));
   end component;
   
   component RCA_NBIT4_1
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  Co : 
            out std_logic;  So : out std_logic_vector (3 downto 0));
   end component;
   
   component RCA_NBIT4_2
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  Co : 
            out std_logic;  So : out std_logic_vector (3 downto 0));
   end component;
   
   signal X_Logic1_port, X_Logic0_port, S_TMP_Ba_3_port, S_TMP_Ba_2_port, 
      S_TMP_Ba_1_port, S_TMP_Ba_0_port, S_TMP_Bb_3_port, S_TMP_Bb_2_port, 
      S_TMP_Bb_1_port, S_TMP_Bb_0_port, n_1000, n_1001 : std_logic;

begin
   
   Ba : RCA_NBIT4_2 port map( A(3) => A_c(3), A(2) => A_c(2), A(1) => A_c(1), 
                           A(0) => A_c(0), B(3) => B_c(3), B(2) => B_c(2), B(1)
                           => B_c(1), B(0) => B_c(0), Ci => X_Logic1_port, Co 
                           => n_1000, So(3) => S_TMP_Ba_3_port, So(2) => 
                           S_TMP_Ba_2_port, So(1) => S_TMP_Ba_1_port, So(0) => 
                           S_TMP_Ba_0_port);
   Bb : RCA_NBIT4_1 port map( A(3) => A_c(3), A(2) => A_c(2), A(1) => A_c(1), 
                           A(0) => A_c(0), B(3) => B_c(3), B(2) => B_c(2), B(1)
                           => B_c(1), B(0) => B_c(0), Ci => X_Logic0_port, Co 
                           => n_1001, So(3) => S_TMP_Bb_3_port, So(2) => 
                           S_TMP_Bb_2_port, So(1) => S_TMP_Bb_1_port, So(0) => 
                           S_TMP_Bb_0_port);
   Mu : mux_1 port map( A(3) => S_TMP_Ba_3_port, A(2) => S_TMP_Ba_2_port, A(1) 
                           => S_TMP_Ba_1_port, A(0) => S_TMP_Ba_0_port, B(3) =>
                           S_TMP_Bb_3_port, B(2) => S_TMP_Bb_2_port, B(1) => 
                           S_TMP_Bb_1_port, B(0) => S_TMP_Bb_0_port, SEL => 
                           Ci_c, Y(3) => So_c(3), Y(2) => So_c(2), Y(1) => 
                           So_c(1), Y(0) => So_c(0));
   X_Logic1_port <= '1';
   X_Logic0_port <= '0';

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity csb_ANBIT4_2 is

   port( A_c, B_c : in std_logic_vector (3 downto 0);  Ci_c : in std_logic;  
         So_c : out std_logic_vector (3 downto 0));

end csb_ANBIT4_2;

architecture SYN_STRUCTURAL of csb_ANBIT4_2 is

   component mux_2
      port( A, B : in std_logic_vector (3 downto 0);  SEL : in std_logic;  Y : 
            out std_logic_vector (3 downto 0));
   end component;
   
   component RCA_NBIT4_3
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  Co : 
            out std_logic;  So : out std_logic_vector (3 downto 0));
   end component;
   
   component RCA_NBIT4_4
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  Co : 
            out std_logic;  So : out std_logic_vector (3 downto 0));
   end component;
   
   signal X_Logic1_port, X_Logic0_port, S_TMP_Ba_3_port, S_TMP_Ba_2_port, 
      S_TMP_Ba_1_port, S_TMP_Ba_0_port, S_TMP_Bb_3_port, S_TMP_Bb_2_port, 
      S_TMP_Bb_1_port, S_TMP_Bb_0_port, n_1002, n_1003 : std_logic;

begin
   
   Ba : RCA_NBIT4_4 port map( A(3) => A_c(3), A(2) => A_c(2), A(1) => A_c(1), 
                           A(0) => A_c(0), B(3) => B_c(3), B(2) => B_c(2), B(1)
                           => B_c(1), B(0) => B_c(0), Ci => X_Logic1_port, Co 
                           => n_1002, So(3) => S_TMP_Ba_3_port, So(2) => 
                           S_TMP_Ba_2_port, So(1) => S_TMP_Ba_1_port, So(0) => 
                           S_TMP_Ba_0_port);
   Bb : RCA_NBIT4_3 port map( A(3) => A_c(3), A(2) => A_c(2), A(1) => A_c(1), 
                           A(0) => A_c(0), B(3) => B_c(3), B(2) => B_c(2), B(1)
                           => B_c(1), B(0) => B_c(0), Ci => X_Logic0_port, Co 
                           => n_1003, So(3) => S_TMP_Bb_3_port, So(2) => 
                           S_TMP_Bb_2_port, So(1) => S_TMP_Bb_1_port, So(0) => 
                           S_TMP_Bb_0_port);
   Mu : mux_2 port map( A(3) => S_TMP_Ba_3_port, A(2) => S_TMP_Ba_2_port, A(1) 
                           => S_TMP_Ba_1_port, A(0) => S_TMP_Ba_0_port, B(3) =>
                           S_TMP_Bb_3_port, B(2) => S_TMP_Bb_2_port, B(1) => 
                           S_TMP_Bb_1_port, B(0) => S_TMP_Bb_0_port, SEL => 
                           Ci_c, Y(3) => So_c(3), Y(2) => So_c(2), Y(1) => 
                           So_c(1), Y(0) => So_c(0));
   X_Logic1_port <= '1';
   X_Logic0_port <= '0';

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity csb_ANBIT4_3 is

   port( A_c, B_c : in std_logic_vector (3 downto 0);  Ci_c : in std_logic;  
         So_c : out std_logic_vector (3 downto 0));

end csb_ANBIT4_3;

architecture SYN_STRUCTURAL of csb_ANBIT4_3 is

   component mux_3
      port( A, B : in std_logic_vector (3 downto 0);  SEL : in std_logic;  Y : 
            out std_logic_vector (3 downto 0));
   end component;
   
   component RCA_NBIT4_5
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  Co : 
            out std_logic;  So : out std_logic_vector (3 downto 0));
   end component;
   
   component RCA_NBIT4_6
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  Co : 
            out std_logic;  So : out std_logic_vector (3 downto 0));
   end component;
   
   signal X_Logic1_port, X_Logic0_port, S_TMP_Ba_3_port, S_TMP_Ba_2_port, 
      S_TMP_Ba_1_port, S_TMP_Ba_0_port, S_TMP_Bb_3_port, S_TMP_Bb_2_port, 
      S_TMP_Bb_1_port, S_TMP_Bb_0_port, n_1004, n_1005 : std_logic;

begin
   
   Ba : RCA_NBIT4_6 port map( A(3) => A_c(3), A(2) => A_c(2), A(1) => A_c(1), 
                           A(0) => A_c(0), B(3) => B_c(3), B(2) => B_c(2), B(1)
                           => B_c(1), B(0) => B_c(0), Ci => X_Logic1_port, Co 
                           => n_1004, So(3) => S_TMP_Ba_3_port, So(2) => 
                           S_TMP_Ba_2_port, So(1) => S_TMP_Ba_1_port, So(0) => 
                           S_TMP_Ba_0_port);
   Bb : RCA_NBIT4_5 port map( A(3) => A_c(3), A(2) => A_c(2), A(1) => A_c(1), 
                           A(0) => A_c(0), B(3) => B_c(3), B(2) => B_c(2), B(1)
                           => B_c(1), B(0) => B_c(0), Ci => X_Logic0_port, Co 
                           => n_1005, So(3) => S_TMP_Bb_3_port, So(2) => 
                           S_TMP_Bb_2_port, So(1) => S_TMP_Bb_1_port, So(0) => 
                           S_TMP_Bb_0_port);
   Mu : mux_3 port map( A(3) => S_TMP_Ba_3_port, A(2) => S_TMP_Ba_2_port, A(1) 
                           => S_TMP_Ba_1_port, A(0) => S_TMP_Ba_0_port, B(3) =>
                           S_TMP_Bb_3_port, B(2) => S_TMP_Bb_2_port, B(1) => 
                           S_TMP_Bb_1_port, B(0) => S_TMP_Bb_0_port, SEL => 
                           Ci_c, Y(3) => So_c(3), Y(2) => So_c(2), Y(1) => 
                           So_c(1), Y(0) => So_c(0));
   X_Logic1_port <= '1';
   X_Logic0_port <= '0';

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity csb_ANBIT4_4 is

   port( A_c, B_c : in std_logic_vector (3 downto 0);  Ci_c : in std_logic;  
         So_c : out std_logic_vector (3 downto 0));

end csb_ANBIT4_4;

architecture SYN_STRUCTURAL of csb_ANBIT4_4 is

   component mux_4
      port( A, B : in std_logic_vector (3 downto 0);  SEL : in std_logic;  Y : 
            out std_logic_vector (3 downto 0));
   end component;
   
   component RCA_NBIT4_7
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  Co : 
            out std_logic;  So : out std_logic_vector (3 downto 0));
   end component;
   
   component RCA_NBIT4_8
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  Co : 
            out std_logic;  So : out std_logic_vector (3 downto 0));
   end component;
   
   signal X_Logic1_port, X_Logic0_port, S_TMP_Ba_3_port, S_TMP_Ba_2_port, 
      S_TMP_Ba_1_port, S_TMP_Ba_0_port, S_TMP_Bb_3_port, S_TMP_Bb_2_port, 
      S_TMP_Bb_1_port, S_TMP_Bb_0_port, n_1006, n_1007 : std_logic;

begin
   
   Ba : RCA_NBIT4_8 port map( A(3) => A_c(3), A(2) => A_c(2), A(1) => A_c(1), 
                           A(0) => A_c(0), B(3) => B_c(3), B(2) => B_c(2), B(1)
                           => B_c(1), B(0) => B_c(0), Ci => X_Logic1_port, Co 
                           => n_1006, So(3) => S_TMP_Ba_3_port, So(2) => 
                           S_TMP_Ba_2_port, So(1) => S_TMP_Ba_1_port, So(0) => 
                           S_TMP_Ba_0_port);
   Bb : RCA_NBIT4_7 port map( A(3) => A_c(3), A(2) => A_c(2), A(1) => A_c(1), 
                           A(0) => A_c(0), B(3) => B_c(3), B(2) => B_c(2), B(1)
                           => B_c(1), B(0) => B_c(0), Ci => X_Logic0_port, Co 
                           => n_1007, So(3) => S_TMP_Bb_3_port, So(2) => 
                           S_TMP_Bb_2_port, So(1) => S_TMP_Bb_1_port, So(0) => 
                           S_TMP_Bb_0_port);
   Mu : mux_4 port map( A(3) => S_TMP_Ba_3_port, A(2) => S_TMP_Ba_2_port, A(1) 
                           => S_TMP_Ba_1_port, A(0) => S_TMP_Ba_0_port, B(3) =>
                           S_TMP_Bb_3_port, B(2) => S_TMP_Bb_2_port, B(1) => 
                           S_TMP_Bb_1_port, B(0) => S_TMP_Bb_0_port, SEL => 
                           Ci_c, Y(3) => So_c(3), Y(2) => So_c(2), Y(1) => 
                           So_c(1), Y(0) => So_c(0));
   X_Logic1_port <= '1';
   X_Logic0_port <= '0';

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity csb_ANBIT4_5 is

   port( A_c, B_c : in std_logic_vector (3 downto 0);  Ci_c : in std_logic;  
         So_c : out std_logic_vector (3 downto 0));

end csb_ANBIT4_5;

architecture SYN_STRUCTURAL of csb_ANBIT4_5 is

   component mux_5
      port( A, B : in std_logic_vector (3 downto 0);  SEL : in std_logic;  Y : 
            out std_logic_vector (3 downto 0));
   end component;
   
   component RCA_NBIT4_9
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  Co : 
            out std_logic;  So : out std_logic_vector (3 downto 0));
   end component;
   
   component RCA_NBIT4_10
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  Co : 
            out std_logic;  So : out std_logic_vector (3 downto 0));
   end component;
   
   signal X_Logic1_port, X_Logic0_port, S_TMP_Ba_3_port, S_TMP_Ba_2_port, 
      S_TMP_Ba_1_port, S_TMP_Ba_0_port, S_TMP_Bb_3_port, S_TMP_Bb_2_port, 
      S_TMP_Bb_1_port, S_TMP_Bb_0_port, n_1008, n_1009 : std_logic;

begin
   
   Ba : RCA_NBIT4_10 port map( A(3) => A_c(3), A(2) => A_c(2), A(1) => A_c(1), 
                           A(0) => A_c(0), B(3) => B_c(3), B(2) => B_c(2), B(1)
                           => B_c(1), B(0) => B_c(0), Ci => X_Logic1_port, Co 
                           => n_1008, So(3) => S_TMP_Ba_3_port, So(2) => 
                           S_TMP_Ba_2_port, So(1) => S_TMP_Ba_1_port, So(0) => 
                           S_TMP_Ba_0_port);
   Bb : RCA_NBIT4_9 port map( A(3) => A_c(3), A(2) => A_c(2), A(1) => A_c(1), 
                           A(0) => A_c(0), B(3) => B_c(3), B(2) => B_c(2), B(1)
                           => B_c(1), B(0) => B_c(0), Ci => X_Logic0_port, Co 
                           => n_1009, So(3) => S_TMP_Bb_3_port, So(2) => 
                           S_TMP_Bb_2_port, So(1) => S_TMP_Bb_1_port, So(0) => 
                           S_TMP_Bb_0_port);
   Mu : mux_5 port map( A(3) => S_TMP_Ba_3_port, A(2) => S_TMP_Ba_2_port, A(1) 
                           => S_TMP_Ba_1_port, A(0) => S_TMP_Ba_0_port, B(3) =>
                           S_TMP_Bb_3_port, B(2) => S_TMP_Bb_2_port, B(1) => 
                           S_TMP_Bb_1_port, B(0) => S_TMP_Bb_0_port, SEL => 
                           Ci_c, Y(3) => So_c(3), Y(2) => So_c(2), Y(1) => 
                           So_c(1), Y(0) => So_c(0));
   X_Logic1_port <= '1';
   X_Logic0_port <= '0';

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity csb_ANBIT4_6 is

   port( A_c, B_c : in std_logic_vector (3 downto 0);  Ci_c : in std_logic;  
         So_c : out std_logic_vector (3 downto 0));

end csb_ANBIT4_6;

architecture SYN_STRUCTURAL of csb_ANBIT4_6 is

   component mux_6
      port( A, B : in std_logic_vector (3 downto 0);  SEL : in std_logic;  Y : 
            out std_logic_vector (3 downto 0));
   end component;
   
   component RCA_NBIT4_11
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  Co : 
            out std_logic;  So : out std_logic_vector (3 downto 0));
   end component;
   
   component RCA_NBIT4_12
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  Co : 
            out std_logic;  So : out std_logic_vector (3 downto 0));
   end component;
   
   signal X_Logic1_port, X_Logic0_port, S_TMP_Ba_3_port, S_TMP_Ba_2_port, 
      S_TMP_Ba_1_port, S_TMP_Ba_0_port, S_TMP_Bb_3_port, S_TMP_Bb_2_port, 
      S_TMP_Bb_1_port, S_TMP_Bb_0_port, n_1010, n_1011 : std_logic;

begin
   
   Ba : RCA_NBIT4_12 port map( A(3) => A_c(3), A(2) => A_c(2), A(1) => A_c(1), 
                           A(0) => A_c(0), B(3) => B_c(3), B(2) => B_c(2), B(1)
                           => B_c(1), B(0) => B_c(0), Ci => X_Logic1_port, Co 
                           => n_1010, So(3) => S_TMP_Ba_3_port, So(2) => 
                           S_TMP_Ba_2_port, So(1) => S_TMP_Ba_1_port, So(0) => 
                           S_TMP_Ba_0_port);
   Bb : RCA_NBIT4_11 port map( A(3) => A_c(3), A(2) => A_c(2), A(1) => A_c(1), 
                           A(0) => A_c(0), B(3) => B_c(3), B(2) => B_c(2), B(1)
                           => B_c(1), B(0) => B_c(0), Ci => X_Logic0_port, Co 
                           => n_1011, So(3) => S_TMP_Bb_3_port, So(2) => 
                           S_TMP_Bb_2_port, So(1) => S_TMP_Bb_1_port, So(0) => 
                           S_TMP_Bb_0_port);
   Mu : mux_6 port map( A(3) => S_TMP_Ba_3_port, A(2) => S_TMP_Ba_2_port, A(1) 
                           => S_TMP_Ba_1_port, A(0) => S_TMP_Ba_0_port, B(3) =>
                           S_TMP_Bb_3_port, B(2) => S_TMP_Bb_2_port, B(1) => 
                           S_TMP_Bb_1_port, B(0) => S_TMP_Bb_0_port, SEL => 
                           Ci_c, Y(3) => So_c(3), Y(2) => So_c(2), Y(1) => 
                           So_c(1), Y(0) => So_c(0));
   X_Logic1_port <= '1';
   X_Logic0_port <= '0';

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity csb_ANBIT4_7 is

   port( A_c, B_c : in std_logic_vector (3 downto 0);  Ci_c : in std_logic;  
         So_c : out std_logic_vector (3 downto 0));

end csb_ANBIT4_7;

architecture SYN_STRUCTURAL of csb_ANBIT4_7 is

   component mux_7
      port( A, B : in std_logic_vector (3 downto 0);  SEL : in std_logic;  Y : 
            out std_logic_vector (3 downto 0));
   end component;
   
   component RCA_NBIT4_13
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  Co : 
            out std_logic;  So : out std_logic_vector (3 downto 0));
   end component;
   
   component RCA_NBIT4_14
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  Co : 
            out std_logic;  So : out std_logic_vector (3 downto 0));
   end component;
   
   signal X_Logic1_port, X_Logic0_port, S_TMP_Ba_3_port, S_TMP_Ba_2_port, 
      S_TMP_Ba_1_port, S_TMP_Ba_0_port, S_TMP_Bb_3_port, S_TMP_Bb_2_port, 
      S_TMP_Bb_1_port, S_TMP_Bb_0_port, n_1012, n_1013 : std_logic;

begin
   
   Ba : RCA_NBIT4_14 port map( A(3) => A_c(3), A(2) => A_c(2), A(1) => A_c(1), 
                           A(0) => A_c(0), B(3) => B_c(3), B(2) => B_c(2), B(1)
                           => B_c(1), B(0) => B_c(0), Ci => X_Logic1_port, Co 
                           => n_1012, So(3) => S_TMP_Ba_3_port, So(2) => 
                           S_TMP_Ba_2_port, So(1) => S_TMP_Ba_1_port, So(0) => 
                           S_TMP_Ba_0_port);
   Bb : RCA_NBIT4_13 port map( A(3) => A_c(3), A(2) => A_c(2), A(1) => A_c(1), 
                           A(0) => A_c(0), B(3) => B_c(3), B(2) => B_c(2), B(1)
                           => B_c(1), B(0) => B_c(0), Ci => X_Logic0_port, Co 
                           => n_1013, So(3) => S_TMP_Bb_3_port, So(2) => 
                           S_TMP_Bb_2_port, So(1) => S_TMP_Bb_1_port, So(0) => 
                           S_TMP_Bb_0_port);
   Mu : mux_7 port map( A(3) => S_TMP_Ba_3_port, A(2) => S_TMP_Ba_2_port, A(1) 
                           => S_TMP_Ba_1_port, A(0) => S_TMP_Ba_0_port, B(3) =>
                           S_TMP_Bb_3_port, B(2) => S_TMP_Bb_2_port, B(1) => 
                           S_TMP_Bb_1_port, B(0) => S_TMP_Bb_0_port, SEL => 
                           Ci_c, Y(3) => So_c(3), Y(2) => So_c(2), Y(1) => 
                           So_c(1), Y(0) => So_c(0));
   X_Logic1_port <= '1';
   X_Logic0_port <= '0';

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity csb_ANBIT4_0 is

   port( A_c, B_c : in std_logic_vector (3 downto 0);  Ci_c : in std_logic;  
         So_c : out std_logic_vector (3 downto 0));

end csb_ANBIT4_0;

architecture SYN_STRUCTURAL of csb_ANBIT4_0 is

   component mux_0
      port( A, B : in std_logic_vector (3 downto 0);  SEL : in std_logic;  Y : 
            out std_logic_vector (3 downto 0));
   end component;
   
   component RCA_NBIT4_15
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  Co : 
            out std_logic;  So : out std_logic_vector (3 downto 0));
   end component;
   
   component RCA_NBIT4_0
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  Co : 
            out std_logic;  So : out std_logic_vector (3 downto 0));
   end component;
   
   signal X_Logic1_port, X_Logic0_port, S_TMP_Ba_3_port, S_TMP_Ba_2_port, 
      S_TMP_Ba_1_port, S_TMP_Ba_0_port, S_TMP_Bb_3_port, S_TMP_Bb_2_port, 
      S_TMP_Bb_1_port, S_TMP_Bb_0_port, n_1014, n_1015 : std_logic;

begin
   
   Ba : RCA_NBIT4_0 port map( A(3) => A_c(3), A(2) => A_c(2), A(1) => A_c(1), 
                           A(0) => A_c(0), B(3) => B_c(3), B(2) => B_c(2), B(1)
                           => B_c(1), B(0) => B_c(0), Ci => X_Logic1_port, Co 
                           => n_1014, So(3) => S_TMP_Ba_3_port, So(2) => 
                           S_TMP_Ba_2_port, So(1) => S_TMP_Ba_1_port, So(0) => 
                           S_TMP_Ba_0_port);
   Bb : RCA_NBIT4_15 port map( A(3) => A_c(3), A(2) => A_c(2), A(1) => A_c(1), 
                           A(0) => A_c(0), B(3) => B_c(3), B(2) => B_c(2), B(1)
                           => B_c(1), B(0) => B_c(0), Ci => X_Logic0_port, Co 
                           => n_1015, So(3) => S_TMP_Bb_3_port, So(2) => 
                           S_TMP_Bb_2_port, So(1) => S_TMP_Bb_1_port, So(0) => 
                           S_TMP_Bb_0_port);
   Mu : mux_0 port map( A(3) => S_TMP_Ba_3_port, A(2) => S_TMP_Ba_2_port, A(1) 
                           => S_TMP_Ba_1_port, A(0) => S_TMP_Ba_0_port, B(3) =>
                           S_TMP_Bb_3_port, B(2) => S_TMP_Bb_2_port, B(1) => 
                           S_TMP_Bb_1_port, B(0) => S_TMP_Bb_0_port, SEL => 
                           Ci_c, Y(3) => So_c(3), Y(2) => So_c(2), Y(1) => 
                           So_c(1), Y(0) => So_c(0));
   X_Logic1_port <= '1';
   X_Logic0_port <= '0';

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity g_4 is

   port( Ga, Gb, P : in std_logic;  G_out : out std_logic);

end g_4;

architecture SYN_BHE of g_4 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n5, n6 : std_logic;

begin
   
   U1 : INV_X1 port map( A => Ga, ZN => n5);
   U2 : NAND2_X1 port map( A1 => Gb, A2 => P, ZN => n6);
   U3 : NAND2_X1 port map( A1 => n6, A2 => n5, ZN => G_out);

end SYN_BHE;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity g_5 is

   port( Ga, Gb, P : in std_logic;  G_out : out std_logic);

end g_5;

architecture SYN_BHE of g_5 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n12, n13 : std_logic;

begin
   
   U1 : NAND2_X1 port map( A1 => n12, A2 => n13, ZN => G_out);
   U2 : NAND2_X1 port map( A1 => Gb, A2 => P, ZN => n13);
   U3 : INV_X1 port map( A => Ga, ZN => n12);

end SYN_BHE;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity pg_4 is

   port( Ga, Gb, P1, P2 : in std_logic;  G_out, P_out : out std_logic);

end pg_4;

architecture SYN_BHE of pg_4 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n13, n14, n15 : std_logic;

begin
   
   U1 : OAI21_X1 port map( B1 => n13, B2 => n14, A => n15, ZN => G_out);
   U2 : INV_X1 port map( A => Gb, ZN => n13);
   U3 : INV_X1 port map( A => P1, ZN => n14);
   U4 : INV_X1 port map( A => Ga, ZN => n15);
   U5 : AND2_X1 port map( A1 => P2, A2 => P1, ZN => P_out);

end SYN_BHE;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity pg_5 is

   port( Ga, Gb, P1, P2 : in std_logic;  G_out, P_out : out std_logic);

end pg_5;

architecture SYN_BHE of pg_5 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n2 : std_logic;

begin
   
   U1 : AOI21_X1 port map( B1 => Gb, B2 => P1, A => Ga, ZN => n2);
   U2 : INV_X1 port map( A => n2, ZN => G_out);
   U3 : AND2_X1 port map( A1 => P2, A2 => P1, ZN => P_out);

end SYN_BHE;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity pg_9 is

   port( Ga, Gb, P1, P2 : in std_logic;  G_out, P_out : out std_logic);

end pg_9;

architecture SYN_BHE of pg_9 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n2 : std_logic;

begin
   
   U1 : AOI21_X1 port map( B1 => P1, B2 => Gb, A => Ga, ZN => n2);
   U2 : AND2_X1 port map( A1 => P2, A2 => P1, ZN => P_out);
   U3 : INV_X1 port map( A => n2, ZN => G_out);

end SYN_BHE;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity pg_10 is

   port( Ga, Gb, P1, P2 : in std_logic;  G_out, P_out : out std_logic);

end pg_10;

architecture SYN_BHE of pg_10 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n9, n10, n11 : std_logic;

begin
   
   U1 : OAI21_X1 port map( B1 => n9, B2 => n10, A => n11, ZN => G_out);
   U2 : INV_X1 port map( A => P1, ZN => n9);
   U3 : INV_X1 port map( A => Gb, ZN => n10);
   U4 : INV_X1 port map( A => Ga, ZN => n11);
   U5 : AND2_X1 port map( A1 => P1, A2 => P2, ZN => P_out);

end SYN_BHE;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity g_8 is

   port( Ga, Gb, P : in std_logic;  G_out : out std_logic);

end g_8;

architecture SYN_BHE of g_8 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n7, n8, n9 : std_logic;

begin
   
   U1 : OAI21_X1 port map( B1 => n8, B2 => n7, A => n9, ZN => G_out);
   U2 : INV_X1 port map( A => P, ZN => n7);
   U3 : INV_X1 port map( A => Gb, ZN => n8);
   U4 : INV_X1 port map( A => Ga, ZN => n9);

end SYN_BHE;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity pg_23 is

   port( Ga, Gb, P1, P2 : in std_logic;  G_out, P_out : out std_logic);

end pg_23;

architecture SYN_BHE of pg_23 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n11, n12, n13 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => P1, A2 => P2, ZN => P_out);
   U2 : OAI21_X1 port map( B1 => n11, B2 => n12, A => n13, ZN => G_out);
   U3 : INV_X1 port map( A => P1, ZN => n11);
   U4 : INV_X1 port map( A => Gb, ZN => n12);
   U5 : INV_X1 port map( A => Ga, ZN => n13);

end SYN_BHE;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity pg_24 is

   port( Ga, Gb, P1, P2 : in std_logic;  G_out, P_out : out std_logic);

end pg_24;

architecture SYN_BHE of pg_24 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n11, n12, n13 : std_logic;

begin
   
   U1 : OAI21_X1 port map( B1 => n11, B2 => n12, A => n13, ZN => G_out);
   U2 : INV_X1 port map( A => P1, ZN => n11);
   U3 : INV_X1 port map( A => Gb, ZN => n12);
   U4 : INV_X1 port map( A => Ga, ZN => n13);
   U5 : AND2_X1 port map( A1 => P2, A2 => P1, ZN => P_out);

end SYN_BHE;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity pg_25 is

   port( Ga, Gb, P1, P2 : in std_logic;  G_out, P_out : out std_logic);

end pg_25;

architecture SYN_BHE of pg_25 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n2 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n2, ZN => G_out);
   U2 : AND2_X1 port map( A1 => P1, A2 => P2, ZN => P_out);
   U3 : AOI21_X1 port map( B1 => P1, B2 => Gb, A => Ga, ZN => n2);

end SYN_BHE;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity pg_26 is

   port( Ga, Gb, P1, P2 : in std_logic;  G_out, P_out : out std_logic);

end pg_26;

architecture SYN_BHE of pg_26 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n2 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n2, ZN => G_out);
   U2 : AOI21_X1 port map( B1 => P1, B2 => Gb, A => Ga, ZN => n2);
   U3 : AND2_X1 port map( A1 => P2, A2 => P1, ZN => P_out);

end SYN_BHE;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity pg_0 is

   port( Ga, Gb, P1, P2 : in std_logic;  G_out, P_out : out std_logic);

end pg_0;

architecture SYN_BHE of pg_0 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n2 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n2, ZN => G_out);
   U2 : AND2_X1 port map( A1 => P1, A2 => P2, ZN => P_out);
   U3 : AOI21_X1 port map( B1 => P1, B2 => Gb, A => Ga, ZN => n2);

end SYN_BHE;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity g_0 is

   port( Ga, Gb, P : in std_logic;  G_out : out std_logic);

end g_0;

architecture SYN_BHE of g_0 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n2 : std_logic;

begin
   
   U1 : AOI21_X1 port map( B1 => P, B2 => Gb, A => Ga, ZN => n2);
   U2 : INV_X1 port map( A => n2, ZN => G_out);

end SYN_BHE;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity f_add_25 is

   port( f_a, f_b : in std_logic;  G, P : out std_logic);

end f_add_25;

architecture SYN_bhe of f_add_25 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n9, n10, n11, n12 : std_logic;

begin
   
   U1 : NAND2_X1 port map( A1 => f_a, A2 => n10, ZN => n11);
   U2 : NAND2_X1 port map( A1 => n9, A2 => f_b, ZN => n12);
   U3 : NAND2_X1 port map( A1 => n11, A2 => n12, ZN => P);
   U4 : INV_X1 port map( A => f_a, ZN => n9);
   U5 : INV_X1 port map( A => f_b, ZN => n10);
   U6 : AND2_X1 port map( A1 => f_b, A2 => f_a, ZN => G);

end SYN_bhe;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity f_add_0 is

   port( f_a, f_b : in std_logic;  G, P : out std_logic);

end f_add_0;

architecture SYN_bhe of f_add_0 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => f_b, B => f_a, Z => P);
   U1 : AND2_X1 port map( A1 => f_b, A2 => f_a, ZN => G);

end SYN_bhe;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity SUM_GENERATOR_NBIT_PER_BLOCK4_NBLOCKS8 is

   port( A, B : in std_logic_vector (31 downto 0);  Ci : in std_logic_vector (7
         downto 0);  S : out std_logic_vector (31 downto 0));

end SUM_GENERATOR_NBIT_PER_BLOCK4_NBLOCKS8;

architecture SYN_STRUCTURAL of SUM_GENERATOR_NBIT_PER_BLOCK4_NBLOCKS8 is

   component csb_ANBIT4_1
      port( A_c, B_c : in std_logic_vector (3 downto 0);  Ci_c : in std_logic; 
            So_c : out std_logic_vector (3 downto 0));
   end component;
   
   component csb_ANBIT4_2
      port( A_c, B_c : in std_logic_vector (3 downto 0);  Ci_c : in std_logic; 
            So_c : out std_logic_vector (3 downto 0));
   end component;
   
   component csb_ANBIT4_3
      port( A_c, B_c : in std_logic_vector (3 downto 0);  Ci_c : in std_logic; 
            So_c : out std_logic_vector (3 downto 0));
   end component;
   
   component csb_ANBIT4_4
      port( A_c, B_c : in std_logic_vector (3 downto 0);  Ci_c : in std_logic; 
            So_c : out std_logic_vector (3 downto 0));
   end component;
   
   component csb_ANBIT4_5
      port( A_c, B_c : in std_logic_vector (3 downto 0);  Ci_c : in std_logic; 
            So_c : out std_logic_vector (3 downto 0));
   end component;
   
   component csb_ANBIT4_6
      port( A_c, B_c : in std_logic_vector (3 downto 0);  Ci_c : in std_logic; 
            So_c : out std_logic_vector (3 downto 0));
   end component;
   
   component csb_ANBIT4_7
      port( A_c, B_c : in std_logic_vector (3 downto 0);  Ci_c : in std_logic; 
            So_c : out std_logic_vector (3 downto 0));
   end component;
   
   component csb_ANBIT4_0
      port( A_c, B_c : in std_logic_vector (3 downto 0);  Ci_c : in std_logic; 
            So_c : out std_logic_vector (3 downto 0));
   end component;

begin
   
   cbl_1 : csb_ANBIT4_0 port map( A_c(3) => A(3), A_c(2) => A(2), A_c(1) => 
                           A(1), A_c(0) => A(0), B_c(3) => B(3), B_c(2) => B(2)
                           , B_c(1) => B(1), B_c(0) => B(0), Ci_c => Ci(0), 
                           So_c(3) => S(3), So_c(2) => S(2), So_c(1) => S(1), 
                           So_c(0) => S(0));
   cbl_2 : csb_ANBIT4_7 port map( A_c(3) => A(7), A_c(2) => A(6), A_c(1) => 
                           A(5), A_c(0) => A(4), B_c(3) => B(7), B_c(2) => B(6)
                           , B_c(1) => B(5), B_c(0) => B(4), Ci_c => Ci(1), 
                           So_c(3) => S(7), So_c(2) => S(6), So_c(1) => S(5), 
                           So_c(0) => S(4));
   cbl_3 : csb_ANBIT4_6 port map( A_c(3) => A(11), A_c(2) => A(10), A_c(1) => 
                           A(9), A_c(0) => A(8), B_c(3) => B(11), B_c(2) => 
                           B(10), B_c(1) => B(9), B_c(0) => B(8), Ci_c => Ci(2)
                           , So_c(3) => S(11), So_c(2) => S(10), So_c(1) => 
                           S(9), So_c(0) => S(8));
   cbl_4 : csb_ANBIT4_5 port map( A_c(3) => A(15), A_c(2) => A(14), A_c(1) => 
                           A(13), A_c(0) => A(12), B_c(3) => B(15), B_c(2) => 
                           B(14), B_c(1) => B(13), B_c(0) => B(12), Ci_c => 
                           Ci(3), So_c(3) => S(15), So_c(2) => S(14), So_c(1) 
                           => S(13), So_c(0) => S(12));
   cbl_5 : csb_ANBIT4_4 port map( A_c(3) => A(19), A_c(2) => A(18), A_c(1) => 
                           A(17), A_c(0) => A(16), B_c(3) => B(19), B_c(2) => 
                           B(18), B_c(1) => B(17), B_c(0) => B(16), Ci_c => 
                           Ci(4), So_c(3) => S(19), So_c(2) => S(18), So_c(1) 
                           => S(17), So_c(0) => S(16));
   cbl_6 : csb_ANBIT4_3 port map( A_c(3) => A(23), A_c(2) => A(22), A_c(1) => 
                           A(21), A_c(0) => A(20), B_c(3) => B(23), B_c(2) => 
                           B(22), B_c(1) => B(21), B_c(0) => B(20), Ci_c => 
                           Ci(5), So_c(3) => S(23), So_c(2) => S(22), So_c(1) 
                           => S(21), So_c(0) => S(20));
   cbl_7 : csb_ANBIT4_2 port map( A_c(3) => A(27), A_c(2) => A(26), A_c(1) => 
                           A(25), A_c(0) => A(24), B_c(3) => B(27), B_c(2) => 
                           B(26), B_c(1) => B(25), B_c(0) => B(24), Ci_c => 
                           Ci(6), So_c(3) => S(27), So_c(2) => S(26), So_c(1) 
                           => S(25), So_c(0) => S(24));
   cbl_8 : csb_ANBIT4_1 port map( A_c(3) => A(31), A_c(2) => A(30), A_c(1) => 
                           A(29), A_c(0) => A(28), B_c(3) => B(31), B_c(2) => 
                           B(30), B_c(1) => B(29), B_c(0) => B(28), Ci_c => 
                           Ci(7), So_c(3) => S(31), So_c(2) => S(30), So_c(1) 
                           => S(29), So_c(0) => S(28));

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity CARRY_GENERATOR_NBIT32_NBIT_PER_BLOCK4 is

   port( A, B : in std_logic_vector (31 downto 0);  Cin : in std_logic;  Co : 
         out std_logic_vector (8 downto 0));

end CARRY_GENERATOR_NBIT32_NBIT_PER_BLOCK4;

architecture SYN_STRUCTURAL of CARRY_GENERATOR_NBIT32_NBIT_PER_BLOCK4 is

   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component BUF_X2
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component BUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component g_1
      port( Ga, Gb, P : in std_logic;  G_out : out std_logic);
   end component;
   
   component g_2
      port( Ga, Gb, P : in std_logic;  G_out : out std_logic);
   end component;
   
   component g_3
      port( Ga, Gb, P : in std_logic;  G_out : out std_logic);
   end component;
   
   component g_4
      port( Ga, Gb, P : in std_logic;  G_out : out std_logic);
   end component;
   
   component pg_1
      port( Ga, Gb, P1, P2 : in std_logic;  G_out, P_out : out std_logic);
   end component;
   
   component pg_2
      port( Ga, Gb, P1, P2 : in std_logic;  G_out, P_out : out std_logic);
   end component;
   
   component g_5
      port( Ga, Gb, P : in std_logic;  G_out : out std_logic);
   end component;
   
   component g_6
      port( Ga, Gb, P : in std_logic;  G_out : out std_logic);
   end component;
   
   component pg_3
      port( Ga, Gb, P1, P2 : in std_logic;  G_out, P_out : out std_logic);
   end component;
   
   component pg_4
      port( Ga, Gb, P1, P2 : in std_logic;  G_out, P_out : out std_logic);
   end component;
   
   component pg_5
      port( Ga, Gb, P1, P2 : in std_logic;  G_out, P_out : out std_logic);
   end component;
   
   component g_7
      port( Ga, Gb, P : in std_logic;  G_out : out std_logic);
   end component;
   
   component pg_6
      port( Ga, Gb, P1, P2 : in std_logic;  G_out, P_out : out std_logic);
   end component;
   
   component pg_7
      port( Ga, Gb, P1, P2 : in std_logic;  G_out, P_out : out std_logic);
   end component;
   
   component pg_8
      port( Ga, Gb, P1, P2 : in std_logic;  G_out, P_out : out std_logic);
   end component;
   
   component pg_9
      port( Ga, Gb, P1, P2 : in std_logic;  G_out, P_out : out std_logic);
   end component;
   
   component pg_10
      port( Ga, Gb, P1, P2 : in std_logic;  G_out, P_out : out std_logic);
   end component;
   
   component pg_11
      port( Ga, Gb, P1, P2 : in std_logic;  G_out, P_out : out std_logic);
   end component;
   
   component pg_12
      port( Ga, Gb, P1, P2 : in std_logic;  G_out, P_out : out std_logic);
   end component;
   
   component g_8
      port( Ga, Gb, P : in std_logic;  G_out : out std_logic);
   end component;
   
   component pg_13
      port( Ga, Gb, P1, P2 : in std_logic;  G_out, P_out : out std_logic);
   end component;
   
   component pg_14
      port( Ga, Gb, P1, P2 : in std_logic;  G_out, P_out : out std_logic);
   end component;
   
   component pg_15
      port( Ga, Gb, P1, P2 : in std_logic;  G_out, P_out : out std_logic);
   end component;
   
   component pg_16
      port( Ga, Gb, P1, P2 : in std_logic;  G_out, P_out : out std_logic);
   end component;
   
   component pg_17
      port( Ga, Gb, P1, P2 : in std_logic;  G_out, P_out : out std_logic);
   end component;
   
   component pg_18
      port( Ga, Gb, P1, P2 : in std_logic;  G_out, P_out : out std_logic);
   end component;
   
   component pg_19
      port( Ga, Gb, P1, P2 : in std_logic;  G_out, P_out : out std_logic);
   end component;
   
   component pg_20
      port( Ga, Gb, P1, P2 : in std_logic;  G_out, P_out : out std_logic);
   end component;
   
   component pg_21
      port( Ga, Gb, P1, P2 : in std_logic;  G_out, P_out : out std_logic);
   end component;
   
   component pg_22
      port( Ga, Gb, P1, P2 : in std_logic;  G_out, P_out : out std_logic);
   end component;
   
   component pg_23
      port( Ga, Gb, P1, P2 : in std_logic;  G_out, P_out : out std_logic);
   end component;
   
   component pg_24
      port( Ga, Gb, P1, P2 : in std_logic;  G_out, P_out : out std_logic);
   end component;
   
   component pg_25
      port( Ga, Gb, P1, P2 : in std_logic;  G_out, P_out : out std_logic);
   end component;
   
   component pg_26
      port( Ga, Gb, P1, P2 : in std_logic;  G_out, P_out : out std_logic);
   end component;
   
   component pg_0
      port( Ga, Gb, P1, P2 : in std_logic;  G_out, P_out : out std_logic);
   end component;
   
   component g_0
      port( Ga, Gb, P : in std_logic;  G_out : out std_logic);
   end component;
   
   component f_add_1
      port( f_a, f_b : in std_logic;  G, P : out std_logic);
   end component;
   
   component f_add_2
      port( f_a, f_b : in std_logic;  G, P : out std_logic);
   end component;
   
   component f_add_3
      port( f_a, f_b : in std_logic;  G, P : out std_logic);
   end component;
   
   component f_add_4
      port( f_a, f_b : in std_logic;  G, P : out std_logic);
   end component;
   
   component f_add_5
      port( f_a, f_b : in std_logic;  G, P : out std_logic);
   end component;
   
   component f_add_6
      port( f_a, f_b : in std_logic;  G, P : out std_logic);
   end component;
   
   component f_add_7
      port( f_a, f_b : in std_logic;  G, P : out std_logic);
   end component;
   
   component f_add_8
      port( f_a, f_b : in std_logic;  G, P : out std_logic);
   end component;
   
   component f_add_9
      port( f_a, f_b : in std_logic;  G, P : out std_logic);
   end component;
   
   component f_add_10
      port( f_a, f_b : in std_logic;  G, P : out std_logic);
   end component;
   
   component f_add_11
      port( f_a, f_b : in std_logic;  G, P : out std_logic);
   end component;
   
   component f_add_12
      port( f_a, f_b : in std_logic;  G, P : out std_logic);
   end component;
   
   component f_add_13
      port( f_a, f_b : in std_logic;  G, P : out std_logic);
   end component;
   
   component f_add_14
      port( f_a, f_b : in std_logic;  G, P : out std_logic);
   end component;
   
   component f_add_15
      port( f_a, f_b : in std_logic;  G, P : out std_logic);
   end component;
   
   component f_add_16
      port( f_a, f_b : in std_logic;  G, P : out std_logic);
   end component;
   
   component f_add_17
      port( f_a, f_b : in std_logic;  G, P : out std_logic);
   end component;
   
   component f_add_18
      port( f_a, f_b : in std_logic;  G, P : out std_logic);
   end component;
   
   component f_add_19
      port( f_a, f_b : in std_logic;  G, P : out std_logic);
   end component;
   
   component f_add_20
      port( f_a, f_b : in std_logic;  G, P : out std_logic);
   end component;
   
   component f_add_21
      port( f_a, f_b : in std_logic;  G, P : out std_logic);
   end component;
   
   component f_add_22
      port( f_a, f_b : in std_logic;  G, P : out std_logic);
   end component;
   
   component f_add_23
      port( f_a, f_b : in std_logic;  G, P : out std_logic);
   end component;
   
   component f_add_24
      port( f_a, f_b : in std_logic;  G, P : out std_logic);
   end component;
   
   component f_add_25
      port( f_a, f_b : in std_logic;  G, P : out std_logic);
   end component;
   
   component f_add_26
      port( f_a, f_b : in std_logic;  G, P : out std_logic);
   end component;
   
   component f_add_27
      port( f_a, f_b : in std_logic;  G, P : out std_logic);
   end component;
   
   component f_add_28
      port( f_a, f_b : in std_logic;  G, P : out std_logic);
   end component;
   
   component f_add_29
      port( f_a, f_b : in std_logic;  G, P : out std_logic);
   end component;
   
   component f_add_30
      port( f_a, f_b : in std_logic;  G, P : out std_logic);
   end component;
   
   component f_add_31
      port( f_a, f_b : in std_logic;  G, P : out std_logic);
   end component;
   
   component f_add_0
      port( f_a, f_b : in std_logic;  G, P : out std_logic);
   end component;
   
   signal Co_8_port, Co_7_port, Co_6_port, Co_5_port, n8, Co_3_port, n9, n10, 
      C_P_16_16_port, C_P_16_15_port, C_P_16_13_port, C_P_16_9_port, 
      C_P_15_15_port, C_P_14_14_port, C_P_14_13_port, C_P_13_13_port, 
      C_P_12_12_port, C_P_12_11_port, C_P_12_9_port, C_P_11_11_port, 
      C_P_10_10_port, C_P_10_9_port, C_P_9_9_port, C_P_8_8_port, C_P_8_7_port, 
      C_P_8_5_port, C_P_7_7_port, C_P_6_6_port, C_P_6_5_port, C_P_5_5_port, 
      C_P_4_4_port, C_P_4_3_port, C_P_3_3_port, C_P_2_2_port, C_G_16_16_port, 
      C_G_16_15_port, C_G_16_13_port, C_G_16_9_port, C_G_15_15_port, 
      C_G_14_14_port, C_G_14_13_port, C_G_13_13_port, C_G_12_12_port, 
      C_G_12_11_port, C_G_12_9_port, C_G_11_11_port, C_G_10_10_port, 
      C_G_10_9_port, C_G_9_9_port, C_G_8_8_port, C_G_8_7_port, C_G_8_5_port, 
      C_G_7_7_port, C_G_6_6_port, C_G_6_5_port, C_G_5_5_port, C_G_4_4_port, 
      C_G_4_3_port, C_G_3_3_port, C_G_2_2_port, C_G_2_1_port, C_G_1_1_port, 
      C_P_32_32_port, C_P_32_31_port, C_P_32_29_port, C_P_32_25_port, 
      C_P_32_17_port, C_P_31_31_port, C_P_30_30_port, C_P_30_29_port, 
      C_P_29_29_port, C_P_28_28_port, C_P_28_27_port, C_P_28_25_port, 
      C_P_28_17_port, C_P_27_27_port, C_P_26_26_port, C_P_26_25_port, 
      C_P_25_25_port, C_P_24_24_port, C_P_24_23_port, C_P_24_21_port, 
      C_P_24_17_port, C_P_23_23_port, C_P_22_22_port, C_P_22_21_port, 
      C_P_21_21_port, C_P_20_20_port, C_P_20_19_port, C_P_20_17_port, 
      C_P_19_19_port, C_P_18_18_port, C_P_18_17_port, C_P_17_17_port, 
      C_G_32_32_port, C_G_32_31_port, C_G_32_29_port, C_G_32_25_port, 
      C_G_32_17_port, C_G_31_31_port, C_G_30_30_port, C_G_30_29_port, 
      C_G_29_29_port, C_G_28_28_port, C_G_28_27_port, C_G_28_25_port, 
      C_G_28_17_port, C_G_27_27_port, C_G_26_26_port, C_G_26_25_port, 
      C_G_25_25_port, C_G_24_24_port, C_G_24_23_port, C_G_24_21_port, 
      C_G_24_17_port, C_G_23_23_port, C_G_22_22_port, C_G_22_21_port, 
      C_G_21_21_port, C_G_20_20_port, C_G_20_19_port, C_G_20_17_port, 
      C_G_19_19_port, C_G_18_18_port, C_G_18_17_port, C_G_17_17_port, Co_4_port
      , Co_2_port, n30, n31, Co_1_port, n33, n_1016 : std_logic;

begin
   Co <= ( Co_8_port, Co_7_port, Co_6_port, Co_5_port, Co_4_port, Co_3_port, 
      Co_2_port, Co_1_port, Cin );
   
   R0_0_0 : f_add_0 port map( f_a => A(0), f_b => B(0), G => C_G_1_1_port, P =>
                           n_1016);
   R0_0_1 : f_add_31 port map( f_a => A(1), f_b => B(1), G => C_G_2_2_port, P 
                           => C_P_2_2_port);
   R0_0_2 : f_add_30 port map( f_a => A(2), f_b => B(2), G => C_G_3_3_port, P 
                           => C_P_3_3_port);
   R0_0_3 : f_add_29 port map( f_a => A(3), f_b => B(3), G => C_G_4_4_port, P 
                           => C_P_4_4_port);
   R0_0_4 : f_add_28 port map( f_a => A(4), f_b => B(4), G => C_G_5_5_port, P 
                           => C_P_5_5_port);
   R0_0_5 : f_add_27 port map( f_a => A(5), f_b => B(5), G => C_G_6_6_port, P 
                           => C_P_6_6_port);
   R0_0_6 : f_add_26 port map( f_a => A(6), f_b => B(6), G => C_G_7_7_port, P 
                           => C_P_7_7_port);
   R0_0_7 : f_add_25 port map( f_a => A(7), f_b => B(7), G => C_G_8_8_port, P 
                           => C_P_8_8_port);
   R0_0_8 : f_add_24 port map( f_a => A(8), f_b => B(8), G => C_G_9_9_port, P 
                           => C_P_9_9_port);
   R0_0_9 : f_add_23 port map( f_a => A(9), f_b => B(9), G => C_G_10_10_port, P
                           => C_P_10_10_port);
   R0_0_10 : f_add_22 port map( f_a => A(10), f_b => B(10), G => C_G_11_11_port
                           , P => C_P_11_11_port);
   R0_0_11 : f_add_21 port map( f_a => A(11), f_b => B(11), G => C_G_12_12_port
                           , P => C_P_12_12_port);
   R0_0_12 : f_add_20 port map( f_a => A(12), f_b => B(12), G => C_G_13_13_port
                           , P => C_P_13_13_port);
   R0_0_13 : f_add_19 port map( f_a => A(13), f_b => B(13), G => C_G_14_14_port
                           , P => C_P_14_14_port);
   R0_0_14 : f_add_18 port map( f_a => A(14), f_b => B(14), G => C_G_15_15_port
                           , P => C_P_15_15_port);
   R0_0_15 : f_add_17 port map( f_a => A(15), f_b => B(15), G => C_G_16_16_port
                           , P => C_P_16_16_port);
   R0_0_16 : f_add_16 port map( f_a => A(16), f_b => B(16), G => C_G_17_17_port
                           , P => C_P_17_17_port);
   R0_0_17 : f_add_15 port map( f_a => A(17), f_b => B(17), G => C_G_18_18_port
                           , P => C_P_18_18_port);
   R0_0_18 : f_add_14 port map( f_a => A(18), f_b => B(18), G => C_G_19_19_port
                           , P => C_P_19_19_port);
   R0_0_19 : f_add_13 port map( f_a => A(19), f_b => B(19), G => C_G_20_20_port
                           , P => C_P_20_20_port);
   R0_0_20 : f_add_12 port map( f_a => A(20), f_b => B(20), G => C_G_21_21_port
                           , P => C_P_21_21_port);
   R0_0_21 : f_add_11 port map( f_a => A(21), f_b => B(21), G => C_G_22_22_port
                           , P => C_P_22_22_port);
   R0_0_22 : f_add_10 port map( f_a => A(22), f_b => B(22), G => C_G_23_23_port
                           , P => C_P_23_23_port);
   R0_0_23 : f_add_9 port map( f_a => A(23), f_b => B(23), G => C_G_24_24_port,
                           P => C_P_24_24_port);
   R0_0_24 : f_add_8 port map( f_a => A(24), f_b => B(24), G => C_G_25_25_port,
                           P => C_P_25_25_port);
   R0_0_25 : f_add_7 port map( f_a => A(25), f_b => B(25), G => C_G_26_26_port,
                           P => C_P_26_26_port);
   R0_0_26 : f_add_6 port map( f_a => A(26), f_b => B(26), G => C_G_27_27_port,
                           P => C_P_27_27_port);
   R0_0_27 : f_add_5 port map( f_a => A(27), f_b => B(27), G => C_G_28_28_port,
                           P => C_P_28_28_port);
   R0_0_28 : f_add_4 port map( f_a => A(28), f_b => B(28), G => C_G_29_29_port,
                           P => C_P_29_29_port);
   R0_0_29 : f_add_3 port map( f_a => A(29), f_b => B(29), G => C_G_30_30_port,
                           P => C_P_30_30_port);
   R0_0_30 : f_add_2 port map( f_a => A(30), f_b => B(30), G => C_G_31_31_port,
                           P => C_P_31_31_port);
   R0_0_31 : f_add_1 port map( f_a => A(31), f_b => B(31), G => C_G_32_32_port,
                           P => C_P_32_32_port);
   G_B_1_2 : g_0 port map( Ga => C_G_2_2_port, Gb => C_G_1_1_port, P => 
                           C_P_2_2_port, G_out => C_G_2_1_port);
   PG_B1_1_4 : pg_0 port map( Ga => C_G_4_4_port, Gb => C_G_3_3_port, P1 => 
                           C_P_4_4_port, P2 => C_P_3_3_port, G_out => 
                           C_G_4_3_port, P_out => C_P_4_3_port);
   PG_B1_1_6 : pg_26 port map( Ga => C_G_6_6_port, Gb => C_G_5_5_port, P1 => 
                           C_P_6_6_port, P2 => C_P_5_5_port, G_out => 
                           C_G_6_5_port, P_out => C_P_6_5_port);
   PG_B1_1_8 : pg_25 port map( Ga => C_G_8_8_port, Gb => C_G_7_7_port, P1 => 
                           C_P_8_8_port, P2 => C_P_7_7_port, G_out => 
                           C_G_8_7_port, P_out => C_P_8_7_port);
   PG_B1_1_10 : pg_24 port map( Ga => C_G_10_10_port, Gb => C_G_9_9_port, P1 =>
                           C_P_10_10_port, P2 => C_P_9_9_port, G_out => 
                           C_G_10_9_port, P_out => C_P_10_9_port);
   PG_B1_1_12 : pg_23 port map( Ga => C_G_12_12_port, Gb => C_G_11_11_port, P1 
                           => C_P_12_12_port, P2 => C_P_11_11_port, G_out => 
                           C_G_12_11_port, P_out => C_P_12_11_port);
   PG_B1_1_14 : pg_22 port map( Ga => C_G_14_14_port, Gb => C_G_13_13_port, P1 
                           => C_P_14_14_port, P2 => C_P_13_13_port, G_out => 
                           C_G_14_13_port, P_out => C_P_14_13_port);
   PG_B1_1_16 : pg_21 port map( Ga => C_G_16_16_port, Gb => C_G_15_15_port, P1 
                           => C_P_16_16_port, P2 => C_P_15_15_port, G_out => 
                           C_G_16_15_port, P_out => C_P_16_15_port);
   PG_B1_1_18 : pg_20 port map( Ga => C_G_18_18_port, Gb => C_G_17_17_port, P1 
                           => C_P_18_18_port, P2 => C_P_17_17_port, G_out => 
                           C_G_18_17_port, P_out => C_P_18_17_port);
   PG_B1_1_20 : pg_19 port map( Ga => C_G_20_20_port, Gb => C_G_19_19_port, P1 
                           => C_P_20_20_port, P2 => C_P_19_19_port, G_out => 
                           C_G_20_19_port, P_out => C_P_20_19_port);
   PG_B1_1_22 : pg_18 port map( Ga => C_G_22_22_port, Gb => C_G_21_21_port, P1 
                           => C_P_22_22_port, P2 => C_P_21_21_port, G_out => 
                           C_G_22_21_port, P_out => C_P_22_21_port);
   PG_B1_1_24 : pg_17 port map( Ga => C_G_24_24_port, Gb => C_G_23_23_port, P1 
                           => C_P_24_24_port, P2 => C_P_23_23_port, G_out => 
                           C_G_24_23_port, P_out => C_P_24_23_port);
   PG_B1_1_26 : pg_16 port map( Ga => C_G_26_26_port, Gb => C_G_25_25_port, P1 
                           => C_P_26_26_port, P2 => C_P_25_25_port, G_out => 
                           C_G_26_25_port, P_out => C_P_26_25_port);
   PG_B1_1_28 : pg_15 port map( Ga => C_G_28_28_port, Gb => C_G_27_27_port, P1 
                           => C_P_28_28_port, P2 => C_P_27_27_port, G_out => 
                           C_G_28_27_port, P_out => C_P_28_27_port);
   PG_B1_1_30 : pg_14 port map( Ga => C_G_30_30_port, Gb => C_G_29_29_port, P1 
                           => C_P_30_30_port, P2 => C_P_29_29_port, G_out => 
                           C_G_30_29_port, P_out => C_P_30_29_port);
   PG_B1_1_32 : pg_13 port map( Ga => C_G_32_32_port, Gb => C_G_31_31_port, P1 
                           => C_P_32_32_port, P2 => C_P_31_31_port, G_out => 
                           C_G_32_31_port, P_out => C_P_32_31_port);
   G_B_2_4 : g_8 port map( Ga => C_G_4_3_port, Gb => C_G_2_1_port, P => 
                           C_P_4_3_port, G_out => n10);
   PG_B1_2_8 : pg_12 port map( Ga => C_G_8_7_port, Gb => C_G_6_5_port, P1 => 
                           C_P_8_7_port, P2 => C_P_6_5_port, G_out => 
                           C_G_8_5_port, P_out => C_P_8_5_port);
   PG_B1_2_12 : pg_11 port map( Ga => C_G_12_11_port, Gb => C_G_10_9_port, P1 
                           => C_P_12_11_port, P2 => C_P_10_9_port, G_out => 
                           C_G_12_9_port, P_out => C_P_12_9_port);
   PG_B1_2_16 : pg_10 port map( Ga => C_G_16_15_port, Gb => C_G_14_13_port, P1 
                           => C_P_16_15_port, P2 => C_P_14_13_port, G_out => 
                           C_G_16_13_port, P_out => C_P_16_13_port);
   PG_B1_2_20 : pg_9 port map( Ga => C_G_20_19_port, Gb => C_G_18_17_port, P1 
                           => C_P_20_19_port, P2 => C_P_18_17_port, G_out => 
                           C_G_20_17_port, P_out => C_P_20_17_port);
   PG_B1_2_24 : pg_8 port map( Ga => C_G_24_23_port, Gb => C_G_22_21_port, P1 
                           => C_P_24_23_port, P2 => C_P_22_21_port, G_out => 
                           C_G_24_21_port, P_out => C_P_24_21_port);
   PG_B1_2_28 : pg_7 port map( Ga => C_G_28_27_port, Gb => C_G_26_25_port, P1 
                           => C_P_28_27_port, P2 => C_P_26_25_port, G_out => 
                           C_G_28_25_port, P_out => C_P_28_25_port);
   PG_B1_2_32 : pg_6 port map( Ga => C_G_32_31_port, Gb => C_G_30_29_port, P1 
                           => C_P_32_31_port, P2 => C_P_30_29_port, G_out => 
                           C_G_32_29_port, P_out => C_P_32_29_port);
   G_B_3_8 : g_7 port map( Ga => C_G_8_5_port, Gb => n10, P => C_P_8_5_port, 
                           G_out => n9);
   PG_B1_3_16 : pg_5 port map( Ga => C_G_16_13_port, Gb => C_G_12_9_port, P1 =>
                           C_P_16_13_port, P2 => C_P_12_9_port, G_out => 
                           C_G_16_9_port, P_out => C_P_16_9_port);
   PG_B1_3_24 : pg_4 port map( Ga => C_G_24_21_port, Gb => C_G_20_17_port, P1 
                           => C_P_24_21_port, P2 => C_P_20_17_port, G_out => 
                           C_G_24_17_port, P_out => C_P_24_17_port);
   PG_B1_3_32 : pg_3 port map( Ga => C_G_32_29_port, Gb => C_G_28_25_port, P1 
                           => C_P_32_29_port, P2 => C_P_28_25_port, G_out => 
                           C_G_32_25_port, P_out => C_P_32_25_port);
   G_B_4_12 : g_6 port map( Ga => n30, Gb => n33, P => C_P_12_9_port, G_out => 
                           Co_3_port);
   G_B_4_16 : g_5 port map( Ga => C_G_16_9_port, Gb => n9, P => C_P_16_9_port, 
                           G_out => n8);
   PG_B0_4_28 : pg_2 port map( Ga => C_G_28_25_port, Gb => C_G_24_17_port, P1 
                           => C_P_28_25_port, P2 => C_P_24_17_port, G_out => 
                           C_G_28_17_port, P_out => C_P_28_17_port);
   PG_B1_4_32 : pg_1 port map( Ga => C_G_32_25_port, Gb => n31, P1 => 
                           C_P_32_25_port, P2 => C_P_24_17_port, G_out => 
                           C_G_32_17_port, P_out => C_P_32_17_port);
   G_B_5_20 : g_4 port map( Ga => C_G_20_17_port, Gb => n8, P => C_P_20_17_port
                           , G_out => Co_5_port);
   G_B_5_24 : g_3 port map( Ga => n31, Gb => n8, P => C_P_24_17_port, G_out => 
                           Co_6_port);
   G_B_5_28 : g_2 port map( Ga => C_G_28_17_port, Gb => n8, P => C_P_28_17_port
                           , G_out => Co_7_port);
   G_B_5_32 : g_1 port map( Ga => C_G_32_17_port, Gb => Co_4_port, P => 
                           C_P_32_17_port, G_out => Co_8_port);
   U1 : CLKBUF_X1 port map( A => n9, Z => n33);
   U2 : BUF_X1 port map( A => n33, Z => Co_2_port);
   U3 : BUF_X2 port map( A => n8, Z => Co_4_port);
   U4 : CLKBUF_X1 port map( A => C_G_12_9_port, Z => n30);
   U5 : CLKBUF_X1 port map( A => C_G_24_17_port, Z => n31);
   U6 : CLKBUF_X1 port map( A => n10, Z => Co_1_port);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity P4_ADDER is

   port( A, B : in std_logic_vector (31 downto 0);  Cin : in std_logic;  S : 
         out std_logic_vector (31 downto 0);  Cout : out std_logic);

end P4_ADDER;

architecture SYN_STRUCTURAL of P4_ADDER is

   component BUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component SUM_GENERATOR_NBIT_PER_BLOCK4_NBLOCKS8
      port( A, B : in std_logic_vector (31 downto 0);  Ci : in std_logic_vector
            (7 downto 0);  S : out std_logic_vector (31 downto 0));
   end component;
   
   component CARRY_GENERATOR_NBIT32_NBIT_PER_BLOCK4
      port( A, B : in std_logic_vector (31 downto 0);  Cin : in std_logic;  Co 
            : out std_logic_vector (8 downto 0));
   end component;
   
   signal C_TMP_7_port, C_TMP_6_port, C_TMP_5_port, C_TMP_4_port, C_TMP_3_port,
      C_TMP_2_port, C_TMP_1_port, C_TMP_0_port, n24, n25, n26, n27, n28, n29 : 
      std_logic;

begin
   
   UCARRY : CARRY_GENERATOR_NBIT32_NBIT_PER_BLOCK4 port map( A(31) => A(31), 
                           A(30) => A(30), A(29) => A(29), A(28) => A(28), 
                           A(27) => A(27), A(26) => A(26), A(25) => A(25), 
                           A(24) => A(24), A(23) => A(23), A(22) => A(22), 
                           A(21) => A(21), A(20) => A(20), A(19) => A(19), 
                           A(18) => A(18), A(17) => A(17), A(16) => A(16), 
                           A(15) => A(15), A(14) => A(14), A(13) => A(13), 
                           A(12) => A(12), A(11) => A(11), A(10) => A(10), A(9)
                           => A(9), A(8) => A(8), A(7) => A(7), A(6) => A(6), 
                           A(5) => A(5), A(4) => A(4), A(3) => A(3), A(2) => 
                           A(2), A(1) => A(1), A(0) => A(0), B(31) => B(31), 
                           B(30) => B(30), B(29) => B(29), B(28) => B(28), 
                           B(27) => B(27), B(26) => B(26), B(25) => B(25), 
                           B(24) => B(24), B(23) => B(23), B(22) => B(22), 
                           B(21) => B(21), B(20) => B(20), B(19) => B(19), 
                           B(18) => B(18), B(17) => B(17), B(16) => B(16), 
                           B(15) => B(15), B(14) => B(14), B(13) => B(13), 
                           B(12) => B(12), B(11) => B(11), B(10) => B(10), B(9)
                           => B(9), B(8) => B(8), B(7) => B(7), B(6) => B(6), 
                           B(5) => B(5), B(4) => B(4), B(3) => B(3), B(2) => 
                           B(2), B(1) => B(1), B(0) => B(0), Cin => Cin, Co(8) 
                           => Cout, Co(7) => C_TMP_7_port, Co(6) => 
                           C_TMP_6_port, Co(5) => C_TMP_5_port, Co(4) => 
                           C_TMP_4_port, Co(3) => C_TMP_3_port, Co(2) => 
                           C_TMP_2_port, Co(1) => C_TMP_1_port, Co(0) => 
                           C_TMP_0_port);
   USUM : SUM_GENERATOR_NBIT_PER_BLOCK4_NBLOCKS8 port map( A(31) => A(31), 
                           A(30) => A(30), A(29) => A(29), A(28) => A(28), 
                           A(27) => A(27), A(26) => A(26), A(25) => A(25), 
                           A(24) => A(24), A(23) => A(23), A(22) => A(22), 
                           A(21) => A(21), A(20) => A(20), A(19) => A(19), 
                           A(18) => A(18), A(17) => A(17), A(16) => A(16), 
                           A(15) => n26, A(14) => A(14), A(13) => A(13), A(12) 
                           => A(12), A(11) => n28, A(10) => A(10), A(9) => A(9)
                           , A(8) => A(8), A(7) => n24, A(6) => A(6), A(5) => 
                           A(5), A(4) => A(4), A(3) => n29, A(2) => A(2), A(1) 
                           => A(1), A(0) => A(0), B(31) => B(31), B(30) => 
                           B(30), B(29) => B(29), B(28) => B(28), B(27) => 
                           B(27), B(26) => B(26), B(25) => B(25), B(24) => 
                           B(24), B(23) => B(23), B(22) => B(22), B(21) => 
                           B(21), B(20) => B(20), B(19) => B(19), B(18) => 
                           B(18), B(17) => B(17), B(16) => B(16), B(15) => n27,
                           B(14) => B(14), B(13) => B(13), B(12) => B(12), 
                           B(11) => B(11), B(10) => B(10), B(9) => B(9), B(8) 
                           => B(8), B(7) => n25, B(6) => B(6), B(5) => B(5), 
                           B(4) => B(4), B(3) => B(3), B(2) => B(2), B(1) => 
                           B(1), B(0) => B(0), Ci(7) => C_TMP_7_port, Ci(6) => 
                           C_TMP_6_port, Ci(5) => C_TMP_5_port, Ci(4) => 
                           C_TMP_4_port, Ci(3) => C_TMP_3_port, Ci(2) => 
                           C_TMP_2_port, Ci(1) => C_TMP_1_port, Ci(0) => 
                           C_TMP_0_port, S(31) => S(31), S(30) => S(30), S(29) 
                           => S(29), S(28) => S(28), S(27) => S(27), S(26) => 
                           S(26), S(25) => S(25), S(24) => S(24), S(23) => 
                           S(23), S(22) => S(22), S(21) => S(21), S(20) => 
                           S(20), S(19) => S(19), S(18) => S(18), S(17) => 
                           S(17), S(16) => S(16), S(15) => S(15), S(14) => 
                           S(14), S(13) => S(13), S(12) => S(12), S(11) => 
                           S(11), S(10) => S(10), S(9) => S(9), S(8) => S(8), 
                           S(7) => S(7), S(6) => S(6), S(5) => S(5), S(4) => 
                           S(4), S(3) => S(3), S(2) => S(2), S(1) => S(1), S(0)
                           => S(0));
   U1 : BUF_X1 port map( A => A(7), Z => n24);
   U2 : BUF_X1 port map( A => B(7), Z => n25);
   U3 : BUF_X1 port map( A => A(15), Z => n26);
   U4 : BUF_X1 port map( A => B(15), Z => n27);
   U5 : BUF_X1 port map( A => A(11), Z => n28);
   U6 : BUF_X1 port map( A => A(3), Z => n29);

end SYN_STRUCTURAL;
