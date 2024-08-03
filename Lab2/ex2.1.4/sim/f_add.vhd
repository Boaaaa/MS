library ieee; 
use ieee.std_logic_1164.all; 

entity f_add is 
       
	Port (	
	    f_a:	In	std_logic;  --variable of upper block left
		f_b:	In	std_logic;  --variable of upper block reight
		G:	Out	std_logic;  --output of first
		P:	Out	std_logic  --output of second
		);
end f_add; 

architecture bhe of f_add is

begin

   G <= f_a AND f_b ;
   P <= f_a XOR f_b;
  
  
end bhe;


configuration CFG_F_ADD_STRUCTURAL of f_add is
  for bhe
  end for;
end CFG_F_ADD_STRUCTURAL;

