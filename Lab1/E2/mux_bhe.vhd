library IEEE;
use IEEE.std_logic_1164.all ;

entity  MUX21  IS

    Generic (
             NBIT: integer:= numBit;
		     DELAY_MUX: Time:= tp_mux);
		     
	Port (	A:   	In	std_logic_vector(NBIT-1 downto 0) ;
	    	B:	    In	std_logic_vector(NBIT-1 downto 0);
	    	SEL:	In	std_logic;
	    	Y:	Out	std_logic_vector(NBIT-1 downto 0));

    end MUX21;

architecture Behav of MUX21 is

begin

process (A, B, SEL)

begin
       if Sell = ’1’ then
       --send frame of A
          ABITS:  for i in NBIT-1 downto 0 generate
                    Y(i) <= A(i) after tp_mux;
             end generate        
       else   
       --send frame of b            
          ABITS:  for i in NBIT-1 downto 0 generate
                    Y(i) <= B(i) after tp_mux;
             end generate 
       end if ;

end process;
