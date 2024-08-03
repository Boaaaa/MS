library ieee; 
use ieee.std_logic_1164.all; 

entity pg is 
       
	Port (	
	    Ga:	In	std_logic;  --variable of upper block left
		Gb:	In	std_logic;  --variable of upper block reight
		P1:	In	std_logic;  -- immediate vicinance ci
		P2:	In	std_logic; --shifted of two curry
		G_out:	Out	std_logic;  --output of first
		P_out:	Out	std_logic  --output of second
		);
end pg; 

architecture BHE of pg is

begin

   G_out <= Ga  or (P1 and Gb) ;
   P_out <= P1 and P2  ;
   --P_out <= P1 and P2  ;
  
  
end BHE;



configuration CFG_PG_BHE of pg is
  for BHE
  end for;
end CFG_PG_BHE;
