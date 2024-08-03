library ieee; 
use ieee.std_logic_1164.all; 

entity g is 
       
	Port (	
	    Ga:	In	std_logic;
		Gb:	In	std_logic;
		P:	In	std_logic;
		G_out:	Out	std_logic
		);
end g; 

architecture BHE of g is

begin

   G_out <= Ga  or (P and Gb) ;
  
  
end BHE;


configuration CFG_G_BHE of g is
  for BHE
  end for;
end CFG_G_BHE;
