library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;   

------------------------------------------------------------------------------------
                                   -- shifter --
------------------------------------------------------------------------------------


entity shift_register is
 GENERIC( NBIT : integer ; --2
          F_NBIT : integer ;--24
          sll_bit: integer ); -- 8
     
  port (
         A   : in  std_logic_vector(NBIT-1 downto 0);
         Y   : out std_logic_vector( F_NBIT-1 downto 0)
         );
 
end shift_register;

architecture shft of shift_register is
 --signal Y_TMP:  --1-0
 

begin
    process(A)
		variable Z: std_logic_vector  (F_Nbit-Nbit-1 downto 0); --13 a 0
		variable Y_TMP : std_logic_vector(F_NBIT-1 downto 0);
begin
    
    if A(Nbit-1) = '0' then
		Z := (others=>'0');
	else
		Z := (others=>'1');
	end if;
	Y_TMP(F_NBIT-1 downto Nbit) := Z;
	Y_TMP(Nbit-1 downto 0) := A;
   
    if sll_bit > 0 then
		-- logical shift left  00
		--Y_TMP <= Y_TMP1 sll sll_bit;
		Y_TMP := std_logic_vector(unsigned(Y_TMP) sll sll_bit) ;     --  00 0000 0000 0000 00
    end if;
	
	Y <= Y_TMP;
end process;
end shft;






------------------------------------------------------------------------------------
                                   -- MUX --
------------------------------------------------------------------------------------
--N_bit_A*(2**(2*index-1))
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;   

entity  mux  IS

    	GENERIC( F_NBIT: integer );
		     
	Port (	A:   	In	std_logic_vector(F_NBIT-1 downto 0) ;
	     	NA:   	In	std_logic_vector(F_NBIT-1 downto 0) ;
	    	AA:	    In	std_logic_vector(F_NBIT-1  downto 0);
	    	NAA:	In	std_logic_vector(F_NBIT-1  downto 0);
	    	SEL:	In	std_logic_vector (2 downto 0);
	    	Y:	Out	std_logic_vector(F_NBIT-1  downto 0)
	    );

    end mux;





architecture Beh of mux is



begin
      process (A,AA,NA,NAA,SEL) is
            begin
            case SEL is
                  when "000" =>  Y <= (others=>'0');
                  when "111" =>  Y <= (others=>'0');
      
                  when "001" =>  Y <= A;
                  when "010" =>  Y <= A;
      
                  when "011" =>  Y <= AA;
                  when "100" =>  Y <= NAA;
                  when "101" =>  Y <= NA;
                  when "110" =>  Y <= NA;
      
      
                  when others => Y <= (others=>'X');
            end case;          	     
                        
       end process;      
End Beh ;

------------------------------------------------------------------------------------
                                   -- negativ of number--
------------------------------------------------------------------------------------


library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;  
USE IEEE.STD_LOGIC_MISC.ALL;

entity Neg_cmpl is
 GENERIC( end_NBIT : integer );
     
  port (
         A   : in  std_logic_vector(end_NBIT-1 downto 0);
         Y   : out std_logic_vector(end_NBIT-1 downto 0)
         );
 
end Neg_cmpl;


architecture Beh of Neg_cmpl is


signal TEM_A   :   std_logic_vector(end_NBIT-1 downto 0);
signal one   :   std_logic;
begin

tem_A <= not A;
Y    <= std_logic_vector(signed(tem_A) + 1 );

End Beh ;




------------------------------------------------------------------------------------
                                   -- adder o--
------------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;  
USE IEEE.STD_LOGIC_MISC.ALL;

entity adder is
 GENERIC( add_NBIT : integer );
     
  port (
         A   : in  std_logic_vector(add_NBIT-1 downto 0);
         B   : in  std_logic_vector(add_NBIT-1 downto 0);
         Y   : out std_logic_vector(add_NBIT-1 downto 0)
         );
 
end adder;


architecture Beh of adder is

begin

process (A,B) is
begin

Y    <= std_logic_vector(signed(A) + signed(B) );
end process;

End Beh ;



