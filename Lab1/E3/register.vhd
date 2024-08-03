library IEEE;
use IEEE.std_logic_1164.all;
use WORK.constants.all;

entity REG is
	GENERIC(
		NBIT : integer := numBit
	);
	PORT(
		INPUT : IN std_logic_vector(NBIT-1 downto 0);
		CLK : IN std_logic;
		RESET : IN std_logic;
		OUTPUT : OUT std_logic_vector(NBIT-1 downto 0)
	);
end REG;

architecture R_PIPPO of REG is
	component FD
		Port(
			D:	In	std_logic;
			CK:	In	std_logic;
			RESET:	In	std_logic;
			Q:	Out	std_logic
		);
	end component;
begin
	--exe1: PROCESS(CLK,RESET)
	--	begin
	reg1:for n in 0 to NBIT-1 generate
		for UFD1:FD use configuration WORK.CFG_FD_PIPPO;
		begin
			UFD1:FD
			Port map(
				D=>INPUT(n),
				CK=>CLK,
				RESET=>RESET,
				Q=>OUTPUT(n)
			);
		--wait for 0.2 ns;
	end generate reg1;
	--end process;
end R_PIPPO;
--
architecture R_PLUTO of REG is
	component FD
		Port(
			D:	In	std_logic;
			CK:	In	std_logic;
			RESET:	In	std_logic;
			Q:	Out	std_logic
		);
	end component;
begin
	reg2: for n in 0 to NBIT-1 generate
		for UFD2:FD use configuration WORK.CFG_FD_PLUTO;
		begin
			UFD2:FD
			Port map(INPUT(n),CLK,RESET,OUTPUT(n));
	end generate reg2;
end R_PLUTO;

configuration CFG_R_PIPPO of REG is
	for R_PIPPO
--		for reg1_block
--			for all:FD	
--				use configuration WORK.CFG_FD_PIPPO;
				--USE ENTITY work.fd(PIPPO);
--			end for;
--		end for;
	end for;
end CFG_R_PIPPO;

configuration CFG_R_PLUTO of REG is
	for R_PLUTO
--		for UFD2:FD	
--			use configuration WORK.CFG_FD_PLUTO;
--		end for;
	end for;
end CFG_R_PLUTO;
