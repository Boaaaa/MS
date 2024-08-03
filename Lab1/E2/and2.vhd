library IEEE;
use IEEE.std_logic_1164.All ;

entity  AND2 is 
port (A, B: in std logic ;
      Z: out std logic );
end AND2;


architecture BEHAVIORAL of AND2 is
begin
Z <= (A and B);

end BEHAVIORAL;
