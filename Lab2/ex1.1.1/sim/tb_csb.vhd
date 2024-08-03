library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use WORK.constants.all;


entity TBCSB is
end TBCSB;

architecture TEST of TBCSB is
	component LFSR16 
		port (
		  CLK, RESET, LD, EN : in std_logic; 
          DIN : in std_logic_vector(15 downto 0); 
          PRN : out std_logic_vector(15 downto 0); 
          ZERO_D : out std_logic);
	end component;
   
	component csb
		GENERIC(
			ANBIT : integer := 4
	    );
	
		Port (
			A_c:	In	std_logic_vector(ANBIT-1 downto 0);
			B_c:	In	std_logic_vector(ANBIT-1 downto 0);
			Ci_c:	In	std_logic;
			So_c:	Out	std_logic_vector(ANBIT-1 downto 0)
		);
	end component;
	
	constant Period: time := 1 ns; -- Clock period (1 GHz);
	signal CLK : std_logic :='0';
	signal RESET,LD,EN,ZERO_D : std_logic;
	signal DIN, PRN : std_logic_vector(15 downto 0);
	signal A, B, S1: std_logic_vector(3 downto 0);
	
	signal Ci : std_logic;
	
	begin
		UCSB:csb
		generic map (
			ANBIT => 4
		)
		port map(A, B, Ci,S1);
		
		Ci <= '0';
		
		A(0) <= PRN(0);
		A(3) <= PRN(4);
		A(1) <= PRN(6);
		A(2) <= PRN(10);
	
		B(0) <= PRN(15);
		B(3) <= PRN(11);
		B(1) <= PRN(9);
		B(2) <= PRN(5);
		
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

configuration CSBTEST of TBCSB is
  for TEST
    for all: csb
      use configuration WORK.CFG_CSB_STRUCTURAL;
    end for;
	for all: LFSR16
		use entity WORK.LFSR16(RTL);
	end for;
  end for;
end CSBTEST;
