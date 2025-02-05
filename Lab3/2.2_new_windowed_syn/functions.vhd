library IEEE;
use IEEE.STD_LOGIC_1164.all;

package functions is 
	function divide(n:integer; m:integer) return integer;
	function log2(n:integer) return integer;
end functions;

package body functions is
	function divide(n:integer; m:integer) return integer is
	begin
		if(n mod m) = 0 then
			return n/m;
		else
			return (n/m)+1;
		end if;
	end divide;
	
	function log2(n:integer) return integer is
	begin
		if n <= 2 then
			return 1;
		else
			return 1 + log2(divide(n,2));
		end if;
	end log2;
end functions;