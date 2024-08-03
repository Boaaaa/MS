library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity tb is
end;

architecture bench of tb is

  component shift_register
 GENERIC( NBIT : integer ;
          F_NBIT : integer ;
          sll_bit: integer );
     
  port (
         A   : in  std_logic_vector(NBIT-1 downto 0);
         Y   : out std_logic_vector( F_NBIT-1 downto 0)
         );
 
  end component;
  
  
constant NBIT: integer := 2 ;
constant  F_NBIT: integer := 2 ;
constant sll_bit: integer := 2 ;

  signal A: std_logic_vector(NBIT-1 downto 0);
  signal Y:  std_logic_vector( F_NBIT-1 downto 0);
begin

  uut: shift_register 
  generic map ( NBIT => 2 ,F_NBIT =>2,sll_bit => 2)
  port map ( A => A,
                                 Y => Y );

  stimulus: process
  begin
  
    -- Put initialisation code here
    
    A <= "00";
    wait for 10 ns;
    A <= "10";
    -- Put test bench stimulus code here
    wait for 10 ns; 
    wait;
  end process;


end;
  
