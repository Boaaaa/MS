library ieee; 
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use work.constants.all;

entity TBSUM_GENERATOR is 
end TBSUM_GENERATOR; 

architecture TEST of TBSUM_GENERATOR is


	component SUM_GENERATOR is
		generic (
			NBIT_PER_BLOCK: integer := 4;
			NBLOCKS:	integer := 8);
		port (
			A:	in	std_logic_vector(NBIT_PER_BLOCK*NBLOCKS-1 downto 0);
			B:	in	std_logic_vector(NBIT_PER_BLOCK*NBLOCKS-1 downto 0);
			Ci:	in	std_logic_vector(NBLOCKS-1 downto 0);
			S:	out	std_logic_vector(NBIT_PER_BLOCK*NBLOCKS-1 downto 0));
	end component;
	
	component LFSR16 
		port (
		  CLK, RESET, LD, EN : in std_logic; 
          DIN : in std_logic_vector(15 downto 0); 
          PRN : out std_logic_vector(15 downto 0); 
          ZERO_D : out std_logic);
	end component;
	
	constant Period: time := 1 ns; -- Clock period (1 GHz);
	signal CLK : std_logic :='0';
	signal RESET,LD,EN,ZERO_D : std_logic;
	signal DIN, PRN : std_logic_vector(15 downto 0);
	signal A, B, S1: std_logic_vector(31 downto 0);
	signal Ci : std_logic_vector(N_Block-1 downto 0);

begin
	USUM:SUM_GENERATOR
		generic map(
			NBIT_PER_BLOCK =>4,
			NBLOCKS => 8
		)
		Port Map(A,B,Ci,S1);
	
	Ci <= "00101010";
		
		A(0) <= PRN(0);
		A(5) <= PRN(2);
		A(3) <= PRN(4);
        A(1) <= PRN(6);
		A(4) <= PRN(8);
		A(2) <= PRN(10);
		A(6) <= PRN(13);
		A(7) <= PRN(15);
		A(8) <= PRN(12);
		A(9) <= PRN(1);
		A(10) <= PRN(4);
		A(11) <= PRN(7);
		A(12) <= PRN(12);
		A(13) <= PRN(2);
		A(14) <= PRN(10);
		A(15) <= PRN(12);
		A(16) <= PRN(2);
		A(17) <= PRN(5);
		A(18) <= PRN(8);
		A(19) <= PRN(1);
		A(20) <= PRN(9);
		A(21) <= PRN(7);
		A(22) <= PRN(3);
		A(23) <= PRN(12);
		A(24) <= PRN(10);
		A(25) <= PRN(15);
		A(26) <= PRN(0);
		A(27) <= PRN(8);
		A(28) <= PRN(6);
		A(29) <= PRN(2);
		A(30) <= PRN(5);
		A(31) <= PRN(6);
		
	
		B(0) <= PRN(0);
		B(5) <= PRN(2);
		B(3) <= PRN(4);
        B(1) <= PRN(6);
		B(4) <= PRN(8);
		B(2) <= PRN(10);
		B(6) <= PRN(7);
		B(7) <= PRN(1);
		B(8) <= PRN(0);
		B(9) <= PRN(14);
		B(10) <= PRN(11);
		B(11) <= PRN(8);
		B(12) <= PRN(3);
		B(13) <= PRN(5);
		B(14) <= PRN(1);
		B(15) <= PRN(7);
		B(16) <= PRN(9);
		B(17) <= PRN(12);
		B(18) <= PRN(3);
		B(19) <= PRN(14);
		B(20) <= PRN(3);
		B(21) <= PRN(11);
		B(22) <= PRN(1);
		B(23) <= PRN(12);
		B(24) <= PRN(2);
		B(25) <= PRN(5);
		B(26) <= PRN(10);
		B(27) <= PRN(0);
		B(28) <= PRN(13);
		B(29) <= PRN(5);
		B(30) <= PRN(3);
		B(31) <= PRN(15);
	
	-- Instanciate the Unit Under Test (UUT)
    UUT: LFSR16 port map (CLK=>CLK, RESET=>RESET, LD=>LD, EN=>EN, 
                        DIN=>DIN,PRN=>PRN, ZERO_D=>ZERO_D);
	-- Create the permanent Clock and the Reset pulse
	CLK <= not CLK after Period;
	RESET <= '1', '0' after Period;
	-- Open file, make a load, and wait for a timeout in case of design error.
	STIMULUS1: process
	begin
		DIN <= "0000000000000001";
		EN <='1';
		LD <='1';
		wait for 2 * PERIOD;
		LD <='0';
		wait for (65600 * PERIOD);
	end process STIMULUS1;

end TEST;

configuration SUM_GENERATORTEST of TBSUM_GENERATOR is
  for TEST
    for all: SUM_GENERATOR
      use configuration WORK.CFG_SUM_GENERATOR_STRUCTURAL;
    end for;
	for all: LFSR16
		use entity WORK.LFSR16(RTL);
	end for;
  end for;
end SUM_GENERATORTEST;
