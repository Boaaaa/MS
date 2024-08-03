library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;
use WORK.constants.all;

entity SUM_GENERATOR is 

		generic (
			NBIT_PER_BLOCK: integer := N_BIT;
			NBLOCKS:	integer := N_Block);
		port (
			A:	in	std_logic_vector(NBIT_PER_BLOCK*NBLOCKS-1 downto 0);
			B:	in	std_logic_vector(NBIT_PER_BLOCK*NBLOCKS-1 downto 0);
			Ci:	in	std_logic_vector(NBLOCKS-1 downto 0);
			S:	out	std_logic_vector(NBIT_PER_BLOCK*NBLOCKS-1 downto 0));
end SUM_GENERATOR; 

architecture STRUCTURAL of SUM_GENERATOR is

  component csb --define block adder
   generic ( ANBIT : integer := NBIT_PER_BLOCK
	            );
	
	Port (
		A_c:	In	std_logic_vector(ANBIT-1 downto 0);
		B_c:	In	std_logic_vector(ANBIT-1 downto 0);
		Ci_c:	In	std_logic;
		So_c:	Out	std_logic_vector(ANBIT-1 downto 0));
   

  end component; 

  --signal S_TMP : std_logic_vector(NBIT_PER_BLOCK*NBLOCKS-1  downto 0);-- buffer somma temporanea
 -- signal C_TMP : std_logic_vector(NBLOCKS-1  downto 0);               -- buffer di tutti i carry temporanei
  
begin
      blo:  for I in 1 to NBLOCKS  generate
       cbl : csb
			generic map (ANBIT => NBIT_PER_BLOCK)
			Port Map ( 
				A(NBIT_PER_BLOCK*I-1 downto NBIT_PER_BLOCK*(I-1)), 
				B(NBIT_PER_BLOCK*I-1 downto NBIT_PER_BLOCK*(I-1)), 
				Ci(I-1), S(NBIT_PER_BLOCK*I-1 downto NBIT_PER_BLOCK*(I-1))
			); 
            end generate;
			
end STRUCTURAL;

configuration CFG_SUM_GENERATOR_STRUCTURAL of SUM_GENERATOR is
  for STRUCTURAL 
	for blo
		for all : csb
			use configuration work.CFG_CSB_STRUCTURAL;
		end for;
	end for;
  end for;
end CFG_SUM_GENERATOR_STRUCTURAL;





