
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;
use WORK.constants.all;

entity RCA is 

   GENERIC(
		NBIT : integer := N_BIT
	            );
	
	Port (
		A:	In	std_logic_vector(NBIT-1 downto 0);
		B:	In	std_logic_vector(NBIT-1  downto 0);
		Ci:	In	std_logic;
		Co:	out	std_logic;
		So:	Out	std_logic_vector(NBIT-1  downto 0));
end RCA; 





architecture STRUCTURAL of RCA is

  signal S_TMP : std_logic_vector(NBIT-1  downto 0);-- buffer somma temporanea
  signal C_TMP : std_logic_vector(NBIT  downto 0);-- buffer di tutti i carry temporanei

  component FA --define full adder

  Port (
     A:	    In	std_logic;
	 B:  	In	std_logic;
	 Ci:	In	std_logic;
	 
	 S:	Out	std_logic;
	 Co:	Out	std_logic);
  end component; 

begin

  C_TMP(0) <= Ci; --structure | - , - ,- ,- , Ci |
  -- S £ Co ->original pos
  
  
  ADDER1:  for I in 1 to NBIT  generate
     FAI : FA  
     Port Map (A(I-1), B(I-1), C_TMP(I-1), S_TMP(I-1), C_TMP(I)); 
  end generate;

  So <= S_TMP;       --associaton if stemp to    S
  Co <= C_TMP(NBIT );    --output last element     | Co , - ,- ,- , - |


end STRUCTURAL;

configuration CFG_RCA_STRUCTURAL of RCA is
  for STRUCTURAL 
    for ADDER1
      for all : FA
        use configuration WORK.CFG_FA_BEHAVIORAL;
      end for;
	end for;
  end for;
end CFG_RCA_STRUCTURAL;






