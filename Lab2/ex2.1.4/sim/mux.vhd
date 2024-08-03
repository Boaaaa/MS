
library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;
use WORK.constants.all;

entity  mux  IS
    	GENERIC(
		NBIT : integer := N_BIT
	            );
		     
	Port (	A:   	In	std_logic_vector(NBIT -1 downto 0) ;
	    	B:	    In	std_logic_vector(NBIT -1  downto 0);
	    	SEL:	In	std_logic;
	    	Y:	Out	std_logic_vector(NBIT-1  downto 0));

    end mux;

architecture Behav of mux is

begin

process (A, B, SEL)

begin
       if Sel = '1' then
       
       
       	  for I in 0 to NBIT-1 loop
          Y(I) <= A(I);
		  end loop;
       
               
       else   
       	  for I in 0 to NBIT-1 loop
          Y(I) <= B(I);
		  end loop;
       end if;

end process;
End Behav ;

configuration CFG_MUX of mux is
  for Behav
  end for;
end CFG_MUX;