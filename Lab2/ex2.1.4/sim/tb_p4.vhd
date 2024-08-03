library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;
use WORK.constants.all;

entity sum_p4_tb is
end;

architecture bench of sum_p4_tb is

  component sum_p4 

   GENERIC(
		NBIT : integer := 32 
	            );
	
	Port (
		A_s4:	In	std_logic_vector(NBIT-1 downto 0);
		B_s4:	In	std_logic_vector(NBIT-1  downto 0);
		Ci_4:	In	std_logic;
		C_carry:	Out	std_logic;
		C_o4:	Out	std_logic_vector( NBIT-1 downto 0));
		
  end component;

  signal A_s4: std_logic_vector(31 downto 0);
  signal B_s4: std_logic_vector( 31 downto 0);
  signal Ci_4: std_logic;
  signal C_carry: std_logic;
  signal C_o4: std_logic_vector( 31 downto 0);

begin

  -- Insert values for generic parameters !!
  uut: sum_p4 generic map ( NBIT    => p4bit  )
                 port map ( A_s4    => A_s4,
                            B_s4    => B_s4,
                            Ci_4    => Ci_4,
                            C_carry => C_carry,
                            C_o4    => C_o4 );

  stimulus: process
  begin
  
    -- Put initialisation code here
     wait for 3 ns; 
    A_s4 <= "00000000000000000000000000000000";
    B_s4 <= "00000000000000000000000000000000";
    Ci_4 <= '0';
     wait for 3 ns; 
     wait for 3 ns; 
    A_s4 <= "00000000000100001011000010000000";
    B_s4 <= "00000000010100001000000010000000";
    Ci_4 <= '0';
     wait for 3 ns; 

    -- Put test bench stimulus code here

    wait;
  end process;


end;
  
