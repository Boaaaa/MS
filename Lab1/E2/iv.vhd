library IEEE;
use IEEE.std_logic_1164.all;
use WORK.constants.all;

entity IV is 
	Port(
		A: In std_logic;
		Y: Out std_logic
	);
end IV;

architecture BEHAVIORAL of IV is
begin
	Y <= not(A) after IVDELAY;
end BEHAVIORAL;

configuration CFG_IV_BEHAVIORAL of IV is 
	for BEHAVIORAL
	end for;
end CFG_IV_BEHAVIORAL;
