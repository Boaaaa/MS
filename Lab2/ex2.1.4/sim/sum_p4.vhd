library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;
use WORK.constants.all;


entity P4_ADDER is 

   GENERIC(
		NBIT : integer := ALL_BITS 
	);
	
	Port (
		A:	In	std_logic_vector(NBIT-1 downto 0);
		B:	In	std_logic_vector(NBIT-1  downto 0);
		Cin:	In	std_logic;
		S:	Out	std_logic_vector(NBIT-1 downto 0);
		Cout:	Out	std_logic
	);
		
		
end P4_ADDER; 



architecture STRUCTURAL of P4_ADDER is


component SUM_GENERATOR 

		generic (
			NBIT_PER_BLOCK: integer := N_BIT;
			NBLOCKS:	integer := N_Block
		);
		port (
			A:	in	std_logic_vector(NBIT_PER_BLOCK*NBLOCKS-1 downto 0);
			B:	in	std_logic_vector(NBIT_PER_BLOCK*NBLOCKS-1 downto 0);
			Ci:	in	std_logic_vector(NBLOCKS-1 downto 0);
			S:	out	std_logic_vector(NBIT_PER_BLOCK*NBLOCKS-1 downto 0)
		);
end component; 




component CARRY_GENERATOR 
   GENERIC(
		NBIT : integer := NBIT;
		NBIT_PER_BLOCK: integer := N_subdiv
	);
	
	Port (
		A:	In	std_logic_vector(NBIT-1 downto 0);
		B:	In	std_logic_vector(NBIT-1  downto 0);
		Cin:	In	std_logic;
		
		Co:	Out	std_logic_vector(NBIT/NBIT_PER_BLOCK downto 0)
	);
end component; 



 signal C_TMP : std_logic_vector(NBIT/N_subdiv downto 0);-- buffer somma temporanea
 signal A_TMP : std_logic_vector(NBIT-1 downto 0);-- buffer somma temporanea
 signal B_TMP : std_logic_vector(NBIT-1 downto 0);-- buffer somma temporanea
 -- signal C_TMP : std_logic_vector(NBLOCKS-1  downto 0);               -- buffer di tutti i carry temporanei
  
begin


	UCARRY : CARRY_GENERATOR
		GENERIC Map (
			NBIT => NBIT,
			NBIT_PER_BLOCK => N_subdiv
		)
		Port Map(
			A => A, 
			B => B, 
			Cin =>Cin, 
			Co => C_TMP
		);
		
	USUM : SUM_GENERATOR
		GENERIC Map (
            NBIT_PER_BLOCK => N_BIT,
		    NBLOCKS	=> N_Block 
		)
		Port Map ( 
			A => A,
            B => B,
            Ci =>c_TMP(NBIT/N_subdiv-1 downto 0),
			S => S 
		);		

	Cout <= c_TMP(NBIT/N_subdiv);
      
end STRUCTURAL;

configuration CFG_P4_ADDER_STRUCTURAL of P4_ADDER is
  for STRUCTURAL 
	for all : CARRY_GENERATOR
		use configuration work.CFG_CARRY_GENERATOR_STRUCTURAL;
	end for;
	for all : SUM_GENERATOR
		use configuration work.CFG_SUM_GENERATOR_STRUCTURAL;
	end for;
  end for;
end CFG_P4_ADDER_STRUCTURAL;






