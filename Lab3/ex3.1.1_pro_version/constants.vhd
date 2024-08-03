library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
use work.functions.all;


package constants is

   
    constant word_bit        : integer := 6             ; -- number of bits for the reg
    constant num_reg        : integer := 16              ; -- total reg
    constant word_adress     : integer := log2(num_reg ); -- number of adress (4)
    constant num_Read_port   : integer :=  3              ;
    constant num_write_port  : integer :=  2             ;


end package;


------------------------------------------------------------------------------------
                              -- ARRAY decl--
------------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.constants.all;

package PK_ARR is
    type RegF_write_in is array(natural range <>) of std_logic_vector(word_bit-1 downto 0);
    type RegF_read_out is array(natural range <>) of std_logic_vector(word_bit-1 downto 0);

	type RegF_add_write is array(natural range <>) of std_logic_vector(word_adress-1 downto 0);
    type RegF_add_read is array(natural range <>) of std_logic_vector(word_adress-1  downto 0);
end package;