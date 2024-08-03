
--single rca block


library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;
use WORK.constants.all;

entity csb is 
   GENERIC(
		ANBIT : integer := N_BIT
	            );
	
	Port (
		A_c:	In	std_logic_vector(ANBIT-1 downto 0);
		B_c:	In	std_logic_vector(ANBIT-1 downto 0);
		Ci_c:	In	std_logic;
		So_c:	Out	std_logic_vector(ANBIT-1 downto 0));
end csb; 





architecture STRUCTURAL of csb is

  signal S_TMP_Ba : std_logic_vector(ANBIT-1 downto 0);-- buffer bA temporanea
  signal S_TMP_Bb : std_logic_vector(ANBIT-1 downto 0);-- buffer bB temporanea

  component RCA 
	Port (
		A:	In	std_logic_vector(ANBIT-1 downto 0);
		B:	In	std_logic_vector(ANBIT-1 downto 0);
		Ci:	In	std_logic;
		So:	Out	std_logic_vector(ANBIT-1 downto 0));
  end component; 
  
    component mux
	Port (	A:   	In	std_logic_vector(ANBIT-1 downto 0) ;
	    	B:	    In	std_logic_vector(ANBIT-1 downto 0);
	    	SEL:	In	std_logic;
	    	Y:	Out	std_logic_vector(ANBIT-1 downto 0));
	    	
   end component; 
  
  
  

begin
       Ba: RCA
       generic map (NBIT =>ANBIT)
       port map (	A => A_c  ,B=> B_c , Ci=> '1', So=> S_TMP_Ba);
       Bb: RCA 
	   generic map (NBIT =>ANBIT)
	   port map (	A => A_c  ,B=> B_c , Ci=> '0', So=> S_TMP_Bb);
       Mu: mux 
	   generic map (NBIT =>ANBIT)
	   port map (	A => S_TMP_Ba ,B=> S_TMP_Bb , SEL=> Ci_c , Y=> So_c);
       
end STRUCTURAL;


configuration CFG_CSB_STRUCTURAL of csb is
  for STRUCTURAL
    for all:RCA
      use configuration WORK.CFG_RCA_STRUCTURAL;
    end for;
	for all: mux
	  use configuration WORK.CFG_MUX;
	end for;
  end for;
end CFG_CSB_STRUCTURAL;

