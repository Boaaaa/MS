library IEEE;
use ieee.std_logic_1164.all;
use work.constants.all;

entity TB_REG is 
end TB_REG;

architecture TEST of TB_REG is
	signal	CK:				std_logic :='0';
	signal	RESET:			std_logic :='0';
	signal	INPUT:			std_logic_vector(NumBit-1 downto 0);
	signal	OUTPUT1:		std_logic_vector(NumBit-1 downto 0);
	signal	OUTPUT2:		std_logic_vector(NumBit-1 downto 0);
	
	component REG
		Port(
			INPUT : IN std_logic_vector(NumBit-1 downto 0);
			CLK : IN std_logic;
			RESET : IN std_logic;
			OUTPUT : OUT std_logic_vector(NumBit-1 downto 0)
		);
	end component;
begin
	UREG1: REG
	Port Map (INPUT,CK,RESET,OUTPUT1);
	UREG2: REG
	Port Map (INPUT,CK,RESET,OUTPUT2);
	
	RESET <= '0', '1' after 3 ns, '0' after 5 ns, '1' after 7 ns, '0' after 9 ns;	
	
	
	INPUT <= "0000110010110100", "1011001100001100" after 3 ns, "0000110010110100" after 5 ns, "1011001100001100" after 7 ns, "0000110010110100" after 9 ns, "1011001100001100" after 11 ns;
	
	PCLOCK : process(CK)
	begin
		CK <= not(CK) after 2 ns;	
	end process;
end TEST;

configuration REGTEST of TB_REG is
   for TEST
      for UREG1 : REG
         use configuration WORK.CFG_R_PIPPO;
      end for;
      for UREG2 : REG
         use configuration WORK.CFG_R_PLUTO;
      end for;
   end for;
end REGTEST;