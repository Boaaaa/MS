library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity tbm is
end;

architecture bench of tbm is

  component mux
  
    	GENERIC( index : integer ;  F_NBIT: integer     );
		     
	Port (	A:   	In	std_logic_vector(F_NBIT-1 downto 0) ;
	     	NA:   	In	std_logic_vector(F_NBIT-1 downto 0) ;
	    	AA:	    In	std_logic_vector(F_NBIT-1  downto 0);
	    	NAA:	In	std_logic_vector(F_NBIT-1  downto 0);
	    	SEL:	In	std_logic_vector (2 downto 0);
	    	Y:	Out	std_logic_vector(F_NBIT-1  downto 0)
	    );

 
  end component;
  
  
constant index: integer := 2 ;
constant  F_NBIT: integer := 4 ;


  
     signal      A:   		std_logic_vector(F_NBIT-1 downto 0) ;
	 signal     NA:   		std_logic_vector(F_NBIT-1 downto 0) ;
	 signAL    	AA:	     	std_logic_vector(F_NBIT-1  downto 0);
	 signal   	NAA:		std_logic_vector(F_NBIT-1  downto 0);
	 signal   	SEL:		std_logic_vector (2 downto 0);
	 signal   	  Y:	    std_logic_vector(F_NBIT-1  downto 0);
  
  
  
  
  
BEGIN
  uut: mux
    	GENERIC map( index => index,  F_NBIT => F_NBIT   )
		     
	Port map (	A  => A,
	     	NA  => NA,
	    	AA  => AA,
	    	NAA	=>NAA,
	    	SEL	=> SEL,
	    	Y	=> Y  );

  stimulus: process
  begin
  
    -- Put initialisation code here
    
  wait for 10 ns;
	 
          A <= "0001";
          NA <= "0010";
          NAA <= "0011";
          SEL <= "101";

    wait for 10 ns;
          A <= "0001";
          NA <= "0010";
          NAA <= "0011";
          SEL <= "111";
    -- Put test bench stimulus code here
    wait for 10 ns; 
    wait;
  end process;


end;
  
