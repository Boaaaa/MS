library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity tbneg is
end;

architecture bench of tbneg is

  component Neg_cmpl
   GENERIC( end_NBIT : integer );
     
  port (
         A   : in  std_logic_vector(end_NBIT-1 downto 0);
         Y   : out std_logic_vector(end_NBIT-1 downto 0)
         );
 
  end component;
  
  
constant end_NBIT: integer := 4 ;
signal        A:   		std_logic_vector(end_NBIT-1 downto 0) ;
signal   	  Y:	    std_logic_vector(end_NBIT-1  downto 0);
  
  
  
  
  
BEGIN
  uut: Neg_cmpl
    	GENERIC map(  end_NBIT  => end_NBIT   )
		     
	Port map (	A  => A,
	         	Y	=> Y  );

  stimulus: process
  begin
  
    -- Put initialisation code here
    
  wait for 10 ns;
	 
          A <= "0001";


    wait for 10 ns;
          A <= "0010";

    -- Put test bench stimulus code here
    wait for 10 ns; 
    wait;
  end process;


end;
  
