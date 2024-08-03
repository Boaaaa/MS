
library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_REG_NBIT16_1 is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_REG_NBIT16_1;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_REG_NBIT16_1.all;

entity FD_1 is

   port( D, CK, RESET : in std_logic;  Q : out std_logic);

end FD_1;

architecture SYN_PLUTO of FD_1 is
   
   component SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
      generic ( ac_as_q, ac_as_qn, sc_ss_q : integer );
      port(
         clear, preset, enable, data_in, synch_clear, synch_preset, 
            synch_toggle, synch_enable, next_state, clocked_on : in std_logic;
         Q, QN : buffer std_logic
      );
   end component;
   
   signal X_Logic1_port, X_Logic0_port, D_port, CK_port, RESET_port, Q_port, 
      n_1000 : std_logic;

begin
   D_port <= D;
   CK_port <= CK;
   RESET_port <= RESET;
   Q <= Q_port;
   
   Q_reg : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 1, ac_as_qn => 2, sc_ss_q => 5 )
         port map ( clear => RESET_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => 
               D_port, clocked_on => CK_port, Q => Q_port, QN => n_1000);
   X_Logic1_port <= '1';
   X_Logic0_port <= '0';

end SYN_PLUTO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_REG_NBIT16_1.all;

entity REG_NBIT16_1 is

   port( INPUT : in std_logic_vector (15 downto 0);  CLK, RESET : in std_logic;
         OUTPUT : out std_logic_vector (15 downto 0));

end REG_NBIT16_1;

architecture SYN_R_PLUTO of REG_NBIT16_1 is

   component FD_1
      port( D, CK, RESET : in std_logic;  Q : out std_logic);
   end component;

begin
   
   UFD2_0 : FD_1 port map( D => INPUT(0), CK => CLK, RESET => RESET, Q => 
                           OUTPUT(0));
   UFD2_1 : FD_1 port map( D => INPUT(1), CK => CLK, RESET => RESET, Q => 
                           OUTPUT(1));
   UFD2_2 : FD_1 port map( D => INPUT(2), CK => CLK, RESET => RESET, Q => 
                           OUTPUT(2));
   UFD2_3 : FD_1 port map( D => INPUT(3), CK => CLK, RESET => RESET, Q => 
                           OUTPUT(3));
   UFD2_4 : FD_1 port map( D => INPUT(4), CK => CLK, RESET => RESET, Q => 
                           OUTPUT(4));
   UFD2_5 : FD_1 port map( D => INPUT(5), CK => CLK, RESET => RESET, Q => 
                           OUTPUT(5));
   UFD2_6 : FD_1 port map( D => INPUT(6), CK => CLK, RESET => RESET, Q => 
                           OUTPUT(6));
   UFD2_7 : FD_1 port map( D => INPUT(7), CK => CLK, RESET => RESET, Q => 
                           OUTPUT(7));
   UFD2_8 : FD_1 port map( D => INPUT(8), CK => CLK, RESET => RESET, Q => 
                           OUTPUT(8));
   UFD2_9 : FD_1 port map( D => INPUT(9), CK => CLK, RESET => RESET, Q => 
                           OUTPUT(9));
   UFD2_10 : FD_1 port map( D => INPUT(10), CK => CLK, RESET => RESET, Q => 
                           OUTPUT(10));
   UFD2_11 : FD_1 port map( D => INPUT(11), CK => CLK, RESET => RESET, Q => 
                           OUTPUT(11));
   UFD2_12 : FD_1 port map( D => INPUT(12), CK => CLK, RESET => RESET, Q => 
                           OUTPUT(12));
   UFD2_13 : FD_1 port map( D => INPUT(13), CK => CLK, RESET => RESET, Q => 
                           OUTPUT(13));
   UFD2_14 : FD_1 port map( D => INPUT(14), CK => CLK, RESET => RESET, Q => 
                           OUTPUT(14));
   UFD2_15 : FD_1 port map( D => INPUT(15), CK => CLK, RESET => RESET, Q => 
                           OUTPUT(15));

end SYN_R_PLUTO;

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
