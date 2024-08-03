library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use work.constants.all;

entity ACC IS
	Port (
      A          : in  std_logic_vector(numBit - 1 downto 0);
      B          : in  std_logic_vector(numBit - 1 downto 0);
      CLK        : in  std_logic;
      RST_n      : in  std_logic;
      ACCUMULATE : in  std_logic;
      --- ACC_EN_n   : in  std_logic;  -- optional use of the enable
      Y          : out std_logic_vector(numBit - 1 downto 0));
END entity;

ARCHITECTURE STRUCTURAL OF ACC IS
	signal B_out : std_logic_vector(numBit - 1 downto 0);
	signal out_add : std_logic_vector(numBit - 1 downto 0);
	signal sig_Y : std_logic_vector(numBit - 1 downto 0);
	signal sig_Co : std_logic;
	component MUX21_GENERIC
		Generic(
			NBIT: integer := numBit;
			DELAY_MUX: Time:= tp_mux);
		Port(
			A: In std_logic_vector(NBIT-1 downto 0);
			B: In std_logic_vector(NBIT-1 downto 0);
			SEL: In std_logic;
			Y: Out std_logic_vector(NBIT-1 downto 0)
		);
	end component;
	
	component RCA
		generic ( DRCAS : Time := 0 ns;
	          DRCAC : Time := 0 ns;
			  NBIT  : integer := numBit);
		Port (	
			A:	In	std_logic_vector(NBIT-1 downto 0);
			B:	In	std_logic_vector(NBIT-1 downto 0);
			Ci:	In	std_logic;
			S:	Out	std_logic_vector(NBIT-1 downto 0);
			Co:	Out	std_logic
		);
	end component;
	
	component REG
		GENERIC(
			NBIT : integer := numBit
		);
		PORT(
			INPUT : IN std_logic_vector(NBIT-1 downto 0);
			CLK : IN std_logic;
			RESET : IN std_logic;
			OUTPUT : OUT std_logic_vector(NBIT-1 downto 0)
		);
	end component;
	
begin
	UMUX : MUX21_GENERIC
	Port map(B, sig_Y, ACCUMULATE, B_out);
	
	UADD : RCA
	Port map(A, B_out, '0', out_add, sig_Co);
	
	UREG : REG
	Port map(out_add, CLK , RST_n, sig_Y);
	
	Y <= sig_Y;
END STRUCTURAL;

ARCHITECTURE BEHAVIORAL OF ACC Is
	signal B_out_b : std_logic_vector(numBit - 1 downto 0);
	signal out_add_b : std_logic_vector(numBit - 1 downto 0);
	signal sig_Y_b : std_logic_vector(numBit - 1 downto 0);
begin	
	p_mux:process(ACCUMULATE, sig_Y_b, B)
	begin
		--if RST_n = '1' then
		--	for i in 0 to numBit - 1 loop
		--		B_out_b(i) <= '0';
		--	end loop;
		--else
			if ACCUMULATE = '0' then
				B_out_b <= sig_Y_b;
			else
				B_out_b <= B;
			end if;
		--end if;
		--wait for 0.5 ns;
	end process;
	
	p_add:process(A, B_out_b)
	begin
		--if RST_n = '1' then
		--	for i in 0 to numBit - 1 loop
		--		out_add_b(i) <= '0';
		--	end loop;
		--else
			out_add_b <= A + B_out_b;
		--end if;
		--wait for 0.5 ns;
	end process;
	
	p_reg: process(CLK,RST_n)
	begin
		if RST_n = '1' then
			for i in 0 to numBit - 1 loop
				Y(i) <= '0';
				--wait for 0.2 ns;
				sig_Y_b(i) <= '0';
			end loop;
		else
			if CLK'event and CLK = '1' then 
				Y <= out_add_b;
				sig_Y_b <= out_add_b;
			end if;
		end if;
		
		--wait for 0.5 ns;
	end process;

END BEHAVIORAL;


configuration CFG_ACC_STRUCTURAL Of ACC Is
	for STRUCTURAL
		for all : MUX21_GENERIC
			use configuration work.CFG_MUX21_GEN_STRUCTURAL;
		end for;
		for all : RCA
			use configuration work.CFG_RCA_STRUCTURAL;
		end for;
		for all : REG
			use configuration work.CFG_R_PLUTO;
		end for;
	end for;
end CFG_ACC_STRUCTURAL;

configuration CFG_ACC_BEHAVIORAL OF ACC Is
	for BEHAVIORAL
	end for;
end CFG_ACC_BEHAVIORAL;
