library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity tbadd is
end;

architecture bench of tbadd is

  component adder
 GENERIC( add_NBIT : integer );
     
  port (
         A   : in  std_logic_vector(add_NBIT-1 downto 0);
         B   : in  std_logic_vector(add_NBIT-1 downto 0);
         Y   : out std_logic_vector(add_NBIT-1 downto 0)
         );
 
  end component;
  
  
constant ADD_NBIT: integer := 4 ;
signal        A:   		std_logic_vector(add_NBIT-1 downto 0) ;
signal        B:   		std_logic_vector(add_NBIT-1 downto 0) ;
signal   	  Y:	    std_logic_vector(add_NBIT-1  downto 0);
  
  
  
  
  
BEGIN
  uut: adder
    	GENERIC map(  add_NBIT => add_NBIT  )
		     
	Port map (	A  => A,
	         	B  => B,
	         	Y	=> Y  );

  stimulus: process
  begin
  
    -- Put initialisation code here
    
  wait for 10 ns;
	 
          A <= "0001";
          B <= "0001";


    wait for 10 ns;
          A <= "0010";
          B <= "0001";
    -- Put test bench stimulus code here
    wait for 10 ns; 
    wait;
  end process;


end;
  
