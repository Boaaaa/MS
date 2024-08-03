library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
--use IEEE.std_logic_arith.all;
use IEEE.NUMERIC_STD.all;

use WORK.constants.all;
use WORK.alu_type.all;


entity ALU is
  generic (N : integer := 16);
  

  port 	 ( FUNC: IN TYPE_OP;
           DATA1, DATA2: IN std_logic_vector(N-1 downto 0);
           OUTALU: OUT std_logic_vector(N-1 downto 0));
end ALU;

architecture BEHAVIOR of ALU is


begin

P_ALU: process (FUNC, DATA1, DATA2)
  -- complete all the requested functions

   begin
    case FUNC is
	when ADD 	=> OUTALU <= DATA1 + DATA2; 
	when SUB 	=> OUTALU <= DATA1 - DATA2;
	when MULT 	=> OUTALU <= std_logic_vector(to_unsigned((to_integer(unsigned(DATA1)) * to_integer(unsigned(DATA2))),N)) ;

	when BITAND 	=> OUTALU <= DATA1 and DATA2; -- bitwise operations
	when BITOR 	=> OUTALU <= DATA1 or DATA2; 
	when BITXOR 	=> OUTALU <= DATA1 xor DATA2; 

	when FUNCLSL 	=> OUTALU <= std_logic_vector(unsigned(DATA1) sll 1);-- logical shift left

	when FUNCLSR 	=> OUTALU <= std_logic_vector(unsigned(DATA1) srl 1); -- logical shift right
	when FUNCRL 	=> OUTALU <= std_logic_vector(unsigned(DATA1) rol 1);-- rotate left
	when FUNCRR 	=> OUTALU <= std_logic_vector(unsigned(DATA1) ror 1); -- rotoate right
	when others => null;
    end case; 
  end process P_ALU;

end BEHAVIOR;

configuration CFG_ALU_BEHAVIORAL of ALU is
  for BEHAVIOR
  end for;
end CFG_ALU_BEHAVIORAL;
