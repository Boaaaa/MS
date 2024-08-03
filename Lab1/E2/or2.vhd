library IEEE;
use IEEE.std_logic_1164.All ;

entity OR2 is 
port (A, B: in std logic ;
      Z: out std logic );
end OR2;


architecture BEHAVIORAL of OR2 is
begin
Z <= (A OR B);

end BEHAVIORAL;
