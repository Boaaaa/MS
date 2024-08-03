library IEEE;
use IEEE.std_logic_1164.all;
use WORK.constants.all;

entity ND2 is
	Generic(
		NBIT : integer := numBit
	);
	Port(
		A: In std_logic_vector(NBIT-1 downto 0);
		B: In std_logic_vector(NBIT-1 downto 0);
		Y: Out std_logic_vector(NBIT-1 downto 0)
	);
end ND2;

architecture BEHAVIOTAL of ND2 is
begin 
	Y <= A nand B after NDDELAY;
end BEHAVIOTAL;

configuration CFG_ND2_BEHAVIOTAL of ND2 is
	for BEHAVIOTAL
	end for;
end CFG_ND2_BEHAVIOTAL;