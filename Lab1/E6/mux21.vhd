library IEEE;
use IEEE.std_logic_1164.all;
use WORK.constants.all;
entity MUX21_GENERIC IS
	Generic(
		NBIT: integer := numBit;
			DELAY_MUX: Time:= tp_mux);
	Port(
		A: In std_logic_vector(NBIT-1 downto 0);
		B: In std_logic_vector(NBIT-1 downto 0);
		SEL: In std_logic;
		Y: Out std_logic_vector(NBIT-1 downto 0)
	);
end MUX21_GENERIC;
architecture behavioral of MUX21_GENERIC IS
begin
	pmux:process(A,B,SEL)
	begin
		if SEL='1' then
			Y <= A;
		else
			Y <= B;
		end if;
	end process;
end behavioral;

architecture STRUCTURAL of MUX21_GENERIC is
	signal Y1: std_logic_vector(NBIT-1 downto 0);
	signal Y2: std_logic_vector(NBIT-1 downto 0);
	signal SB: std_logic;
	
	component ND2
		Port(
			A: In std_logic_vector(NBIT-1 downto 0);
			B: In std_logic_vector(NBIT-1 downto 0);
			Y: Out std_logic_vector(NBIT-1 downto 0)
		);
	end component;

	component ND2_BIT
		Port(
			A: In std_logic_vector(NBIT-1 downto 0);
			B: In std_logic;
			Y: Out std_logic_vector(NBIT-1 downto 0)
		);
	end component;
	
	component IV
		Port(
			A: In std_logic;
			Y: Out std_logic
		);
	end component;
begin
	UIV: IV
	Port Map (SEL, SB);
	UND1 : ND2_BIT
	Port Map (A, SEL, Y1);
	UND2 : ND2_BIT
	Port Map (B, SB, Y2);
	UND3 : ND2
	Port Map (Y1, Y2, Y);
end STRUCTURAL;

configuration CFG_MUX21_GEN_BEHAVIORAL OF MUX21_GENERIC is
	for behavioral
	end for;
end CFG_MUX21_GEN_BEHAVIORAL;

configuration CFG_MUX21_GEN_STRUCTURAL of MUX21_GENERIC is
	for STRUCTURAL
		for all : IV	
			use configuration WORK.CFG_IV_BEHAVIORAL;
		end for;
		for all:ND2_BIT
			use configuration WORK.CFG_ND2_BIT_BEHAVIOTAL;
		end for;
		for all : ND2
			use configuration WORK.CFG_ND2_BEHAVIOTAL;
		end for;
	end for;
end CFG_MUX21_GEN_STRUCTURAL;
