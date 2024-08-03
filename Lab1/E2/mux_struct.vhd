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

architecture STRUCT of MUX21 is
component AND2  -- DicLARE USE AND
    port (A,B : in    std logic ;
          Z   : out   std logic );
end component;

component OR2  -- DicLARE USE OR
    port (A,B : in    std logic ;
          Z   : out   std logic );
          

signal  AS , BSN : std logic ; --connection among component

begin

GEN_REG: for I in NBIT-1 downto 0 generate


INST_AND1 : AND2
    port map (A(i), Sell, AS);

INST_AND2 : AND2
    port map (B(i), Sell, BSN);

INST_OR2 : OR2
port map (AS , BSN , Y(i));
 end generate GEN_REG;
 
end structural;



end process;
