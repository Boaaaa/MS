
library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_MUX21_GENERIC_NBIT16 is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_MUX21_GENERIC_NBIT16;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_MUX21_GENERIC_NBIT16.all;

entity MUX21_GENERIC_NBIT16 is

   port( A, B : in std_logic_vector (15 downto 0);  SEL : in std_logic;  Y : 
         out std_logic_vector (15 downto 0));

end MUX21_GENERIC_NBIT16;

architecture SYN_behavioral of MUX21_GENERIC_NBIT16 is

   component GTECH_NOT
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component GTECH_BUF
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component SELECT_OP
      generic( num_inputs, input_width : integer );
      port( DATA : in std_logic_vector( num_inputs* input_width - 1 downto 0 );
            CONTROL : in std_logic_vector( num_inputs - 1 downto 0 ); Z : out 
            std_logic_vector( input_width - 1 downto 0 ) );
   end component;
   
   signal N0, N1, A_15_port, A_14_port, A_13_port, A_12_port, A_11_port, 
      A_10_port, A_9_port, A_8_port, A_7_port, A_6_port, A_5_port, A_4_port, 
      A_3_port, A_2_port, A_1_port, A_0_port, B_15_port, B_14_port, B_13_port, 
      B_12_port, B_11_port, B_10_port, B_9_port, B_8_port, B_7_port, B_6_port, 
      B_5_port, B_4_port, B_3_port, B_2_port, B_1_port, B_0_port, Y_15_port, 
      Y_14_port, Y_13_port, Y_12_port, Y_11_port, Y_10_port, Y_9_port, Y_8_port
      , Y_7_port, Y_6_port, Y_5_port, Y_4_port, Y_3_port, Y_2_port, Y_1_port, 
      Y_0_port, N2 : std_logic;

begin
   ( A_15_port, A_14_port, A_13_port, A_12_port, A_11_port, A_10_port, A_9_port
      , A_8_port, A_7_port, A_6_port, A_5_port, A_4_port, A_3_port, A_2_port, 
      A_1_port, A_0_port ) <= A;
   ( B_15_port, B_14_port, B_13_port, B_12_port, B_11_port, B_10_port, B_9_port
      , B_8_port, B_7_port, B_6_port, B_5_port, B_4_port, B_3_port, B_2_port, 
      B_1_port, B_0_port ) <= B;
   Y <= ( Y_15_port, Y_14_port, Y_13_port, Y_12_port, Y_11_port, Y_10_port, 
      Y_9_port, Y_8_port, Y_7_port, Y_6_port, Y_5_port, Y_4_port, Y_3_port, 
      Y_2_port, Y_1_port, Y_0_port );
   
   C27_cell : SELECT_OP
      generic map ( num_inputs => 2, input_width => 16 )
      port map(
         -- Connections to port 'DATA1'
         DATA(15) => A_15_port, DATA(14) => A_14_port, DATA(13) => A_13_port, 
               DATA(12) => A_12_port, DATA(11) => A_11_port, DATA(10) => 
               A_10_port, DATA(9) => A_9_port, DATA(8) => A_8_port, DATA(7) => 
               A_7_port, DATA(6) => A_6_port, DATA(5) => A_5_port, DATA(4) => 
               A_4_port, DATA(3) => A_3_port, DATA(2) => A_2_port, DATA(1) => 
               A_1_port, DATA(0) => A_0_port, 
         -- Connections to port 'DATA2'
         DATA(31) => B_15_port, DATA(30) => B_14_port, DATA(29) => B_13_port, 
               DATA(28) => B_12_port, DATA(27) => B_11_port, DATA(26) => 
               B_10_port, DATA(25) => B_9_port, DATA(24) => B_8_port, DATA(23) 
               => B_7_port, DATA(22) => B_6_port, DATA(21) => B_5_port, 
               DATA(20) => B_4_port, DATA(19) => B_3_port, DATA(18) => B_2_port
               , DATA(17) => B_1_port, DATA(16) => B_0_port, 
         -- Connections to port 'CONTROL1'
         CONTROL(0) => N0, 
         -- Connections to port 'CONTROL2'
         CONTROL(1) => N1, 
         -- Connections to port 'Z'
         Z(15) => Y_15_port, Z(14) => Y_14_port, Z(13) => Y_13_port, Z(12) => 
               Y_12_port, Z(11) => Y_11_port, Z(10) => Y_10_port, Z(9) => 
               Y_9_port, Z(8) => Y_8_port, Z(7) => Y_7_port, Z(6) => Y_6_port, 
               Z(5) => Y_5_port, Z(4) => Y_4_port, Z(3) => Y_3_port, Z(2) => 
               Y_2_port, Z(1) => Y_1_port, Z(0) => Y_0_port );
   B_0 : GTECH_BUF port map( A => SEL, Z => N0);
   B_1 : GTECH_BUF port map( A => N2, Z => N1);
   I_0 : GTECH_NOT port map( A => SEL, Z => N2);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;
entity SELECT_OP is
   generic ( num_inputs, input_width : integer );
   port(
      DATA : in std_logic_vector( num_inputs  * input_width - 1 downto 0 );
      CONTROL : in std_logic_vector( num_inputs - 1 downto 0 );
      Z : out std_logic_vector( input_width - 1 downto 0 )
   );
end SELECT_OP;

architecture RTL of SELECT_OP is
begin

   process ( DATA, CONTROL )
      variable index, high, low : integer;
   begin
   
      --  Initialize variables
      index := 0;
      
      -- Loop over the values of the control inputs
      for_loop : for i in CONTROL'range loop
      
         if ( CONTROL(i) = '1' ) then
         
            index := i;
            exit for_loop;
            
         end if;
         
      end loop;
      
      -- Store the corresponding data lines into the output
      low := input_width * index;
      high := low + input_width - 1;
      Z <= DATA( high downto low );
   
   end process;
   
end RTL;
