
library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_REG_NBIT16 is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_REG_NBIT16;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_REG_NBIT16.all;

entity FD is

   port( D, CK, RESET : in std_logic;  Q : out std_logic);

end FD;

architecture SYN_PIPPO of FD is

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
   
   component SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
      generic ( ac_as_q, ac_as_qn, sc_ss_q : integer );
      port(
         clear, preset, enable, data_in, synch_clear, synch_preset, 
            synch_toggle, synch_enable, next_state, clocked_on : in std_logic;
         Q, QN : buffer std_logic
      );
   end component;
   
   signal N0, N1, X_Logic1_port, X_Logic0_port, D_port, CK_port, Q_port, N2, N3
      , n_1000 : std_logic;

begin
   D_port <= D;
   CK_port <= CK;
   Q <= Q_port;
   
   Q_reg : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => N3, 
               clocked_on => CK_port, Q => Q_port, QN => n_1000);
   C12_cell : SELECT_OP
      generic map ( num_inputs => 2, input_width => 1 )
      port map(
         -- Connections to port 'DATA1'
         DATA(0) => X_Logic0_port, 
         -- Connections to port 'DATA2'
         DATA(1) => D_port, 
         -- Connections to port 'CONTROL1'
         CONTROL(0) => N0, 
         -- Connections to port 'CONTROL2'
         CONTROL(1) => N1, 
         -- Connections to port 'Z'
         Z(0) => N3 );
   B_0 : GTECH_BUF port map( A => RESET, Z => N0);
   B_1 : GTECH_BUF port map( A => N2, Z => N1);
   X_Logic1_port <= '1';
   X_Logic0_port <= '0';
   I_0 : GTECH_NOT port map( A => RESET, Z => N2);

end SYN_PIPPO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_REG_NBIT16.all;

entity REG_NBIT16 is

   port( INPUT : in std_logic_vector (15 downto 0);  CLK, RESET : in std_logic;
         OUTPUT : out std_logic_vector (15 downto 0));

end REG_NBIT16;

architecture SYN_R_PIPPO of REG_NBIT16 is

   component FD
      port( D, CK, RESET : in std_logic;  Q : out std_logic);
   end component;

begin
   
   UFD1_0 : FD port map( D => INPUT(0), CK => CLK, RESET => RESET, Q => 
                           OUTPUT(0));
   UFD1_1 : FD port map( D => INPUT(1), CK => CLK, RESET => RESET, Q => 
                           OUTPUT(1));
   UFD1_2 : FD port map( D => INPUT(2), CK => CLK, RESET => RESET, Q => 
                           OUTPUT(2));
   UFD1_3 : FD port map( D => INPUT(3), CK => CLK, RESET => RESET, Q => 
                           OUTPUT(3));
   UFD1_4 : FD port map( D => INPUT(4), CK => CLK, RESET => RESET, Q => 
                           OUTPUT(4));
   UFD1_5 : FD port map( D => INPUT(5), CK => CLK, RESET => RESET, Q => 
                           OUTPUT(5));
   UFD1_6 : FD port map( D => INPUT(6), CK => CLK, RESET => RESET, Q => 
                           OUTPUT(6));
   UFD1_7 : FD port map( D => INPUT(7), CK => CLK, RESET => RESET, Q => 
                           OUTPUT(7));
   UFD1_8 : FD port map( D => INPUT(8), CK => CLK, RESET => RESET, Q => 
                           OUTPUT(8));
   UFD1_9 : FD port map( D => INPUT(9), CK => CLK, RESET => RESET, Q => 
                           OUTPUT(9));
   UFD1_10 : FD port map( D => INPUT(10), CK => CLK, RESET => RESET, Q => 
                           OUTPUT(10));
   UFD1_11 : FD port map( D => INPUT(11), CK => CLK, RESET => RESET, Q => 
                           OUTPUT(11));
   UFD1_12 : FD port map( D => INPUT(12), CK => CLK, RESET => RESET, Q => 
                           OUTPUT(12));
   UFD1_13 : FD port map( D => INPUT(13), CK => CLK, RESET => RESET, Q => 
                           OUTPUT(13));
   UFD1_14 : FD port map( D => INPUT(14), CK => CLK, RESET => RESET, Q => 
                           OUTPUT(14));
   UFD1_15 : FD port map( D => INPUT(15), CK => CLK, RESET => RESET, Q => 
                           OUTPUT(15));

end SYN_R_PIPPO;

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

library IEEE;

use IEEE.std_logic_1164.all;

entity SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT is
   generic ( ac_as_q, ac_as_qn, sc_ss_q : integer );
   port(
      clear, preset, enable, data_in, synch_clear, synch_preset, synch_toggle, 
         synch_enable, next_state, clocked_on : in std_logic;
      Q, QN : buffer std_logic
   );
end SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT;

architecture RTL of SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT is
begin

   process ( preset, clear, enable, data_in, clocked_on )
   begin
   
            -- Check the value of inputs (asynchronous first)
            if ( ( ( preset /= '1' ) and ( preset /= '0' ) ) or ( ( clear /= 
                     '1' ) and ( clear /= '0' ) )  ) then
               Q <= 'X';
            elsif ( clear = '1' and preset = '1' ) then
               case ac_as_q is
                  when 2 =>
                     Q <= '1';
                  when 1 =>
                     Q <= '0';
                  when others =>
                     Q <= 'X';
               end case;
               case ac_as_qn is
                  when 2 =>
                     QN <= '1';
                  when 1 =>
                     QN <= '0';
                  when others =>
                     QN <= 'X';
               end case;
            elsif ( clear = '1' ) then
               Q <= '0';
            elsif ( preset = '1' ) then
               Q <= '1';
            elsif ( ( enable /= '1' ) and ( enable /= '0' ) ) then
               Q <= 'X';
            elsif ( enable = '1' ) then
               Q <= data_in;
            elsif ( ( clocked_on /= '1' ) and ( clocked_on /= '0' ) ) then
               Q <= 'X';
            elsif ( clocked_on'event and clocked_on = '1' ) then
         if ( ( ( synch_preset /= '1' ) and ( synch_preset /= '0' ) ) or ( ( 
                  synch_clear /= '1' ) and ( synch_clear /= '0' ) )  ) then
            Q <= 'X';
         elsif ( synch_clear = '1' and synch_preset = '1' ) then
            case sc_ss_q is
               when 2 =>
                  Q <= '1';
               when 1 =>
                  Q <= '0';
               when others =>
                  Q <= 'X';
            end case;
         elsif ( synch_clear = '1' ) then
            Q <= '0';
         elsif ( synch_preset = '1' ) then
            Q <= '1';
         elsif ( ( ( synch_toggle /= '1' ) and ( synch_toggle /= '0' ) ) or ( (
                  synch_enable /= '1' ) and ( synch_enable /= '0' ) )  ) then
            Q <= 'X';
         elsif ( synch_enable = '1' and synch_toggle = '1' ) then
            Q <= 'X';
         elsif ( synch_toggle = '1' ) then
            Q <= QN;
         elsif ( synch_enable = '1' ) then
            Q <= next_state;
         end if;
      end if;
   
   end process;

end RTL;
