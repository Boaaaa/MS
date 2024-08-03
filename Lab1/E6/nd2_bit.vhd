library IEEE;
use IEEE.std_logic_1164.all;
use WORK.constants.all;

entity ND2_BIT is
	Generic(
		NBIT : integer := numBit
	);
	Port(
		A: In std_logic_vector(NBIT-1 downto 0);
		B: In std_logic;
		Y: Out std_logic_vector(NBIT-1 downto 0)
	);
end ND2_BIT;

architecture BEHAVIOTAL of ND2_BIT is
begin 
	--process
		
	--begin
nand_label:FOR n IN 0 TO NBIT-1 generate
			Y(n) <= A(n) nand B;
			--wait for 0.2 ns;
		END generate nand_label;
		--wait for 0.5 ns;
	--end process;
	
end BEHAVIOTAL;

configuration CFG_ND2_BIT_BEHAVIOTAL of ND2_BIT is
	for BEHAVIOTAL
	end for;
end CFG_ND2_BIT_BEHAVIOTAL;