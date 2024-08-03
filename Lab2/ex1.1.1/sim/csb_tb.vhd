
library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;
use WORK.constants.all;

entity csb_tb is
end;

architecture bench of csb_tb is

  component csb 
     GENERIC(
		ANBIT : integer := N_BIT
	            );
  	Port (
  		A_c:	In	std_logic_vector(3 downto 0);
  		B_c:	In	std_logic_vector(3 downto 0);
  		Ci_c:	In	std_logic;
  		So_c:	Out	std_logic_vector(3 downto 0));
  end component;

  signal A_c: std_logic_vector(3 downto 0);
  signal B_c: std_logic_vector(3 downto 0);
  signal Ci_c: std_logic;
  signal So_c: std_logic_vector(3 downto 0);

begin

  uut: entity work.csb(STRUCTURAL)
           generic map (ANBIT => N_BIT  )
           port map ( A_c  => A_c,
                      B_c  => B_c,
                      Ci_c => Ci_c,
                      So_c => So_c );

  stimulus: process
  begin
  
     wait for 1 ps; 
    A_c <= "0000";
    B_c <= "0000";
    Ci_c <= '1';
     wait for 1 ns; 
      A_c <= "0111";
    B_c <= "0000";
    Ci_c <= '1';
     wait for 1 ns; 
    A_c <= "0101";
    B_c <= "0000";
    Ci_c <= '0';
    
    wait for 1 ns; 
    A_c <= "0101";
    B_c <= "1000";
    Ci_c <= '0';
    wait for 10 ns; 
    wait;

    wait;
  end process;


end;












