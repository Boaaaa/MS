library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity RCA is 
	generic (DRCAS : 	Time := 0 ns;
	         DRCAC : 	Time := 0 ns);
	Port (	A:	In	std_logic_vector(5 downto 0);
		B:	In	std_logic_vector(5 downto 0);
		Ci:	In	std_logic;
		S:	Out	std_logic_vector(5 downto 0);
		Co:	Out	std_logic);
end RCA; 

architecture STRUCTURAL of RCA is

  signal STMP : std_logic_vector(5 downto 0);
  signal CTMP : std_logic_vector(6 downto 0);

  component FA 
  generic (DFAS : 	Time := 0 ns;
           DFAC : 	Time := 0 ns);
  Port ( A:	In	std_logic;
	 B:	In	std_logic;
	 Ci:	In	std_logic;
	 S:	Out	std_logic;
	 Co:	Out	std_logic);
  end component; 

begin

  CTMP(0) <= Ci;
  S <= STMP;
  Co <= CTMP(6);
  
  ADDER1: for I in 1 to 6 generate
    FAI : FA 
	  generic map (DFAS => DRCAS, DFAC => DRCAC) 
	  Port Map (A(I-1), B(I-1), CTMP(I-1), STMP(I-1), CTMP(I)); 
  end generate;

end STRUCTURAL;


architecture BEHAVIORAL of RCA is 
	--signal tmp : std_logic := '0';
	SIGNAL tmp : std_logic_vector(5 downto 0);
begin
  tmp <= (A + B) after DRCAS;
  S <= tmp;
  carry_bit:process
	variable a_tmp : integer range 0 to 63;
	variable b_tmp : integer range 0 to 63;
	variable c_tmp : integer range 0 to 127;
  begin
	--for i in 0 to 5 loop
	--	tmp := ((A(i) and B(i)) or (A(i) and tmp) or (B(i) and tmp));
		--if ((A(i) and B(i)) or (A(i) and tmp) or (B(i) and tmp)) then
		--	tmp := '1';
		--else
		--	tmp := '0';
		--end if;
		--wait for 0.1 ns;
	--end loop;
	--Co <= tmp;
	a_tmp := to_integer(unsigned(A));
	b_tmp := to_integer(unsigned(B));
	c_tmp := a_tmp + b_tmp;
	if(c_tmp > 63) then
		Co <= '1';
	else
		Co <= '0';
	end if;
	wait for 0.5 ns;
	--tmp <= A + B after DRCAS;
	--wait for 1 ns;
	--if ((tmp < A) OR (tmp < B)) THEN
	--	Co <= '1';
	--else
	--	Co <= '0';
	--end if;
	--wait for 0.1 ns;
  end process;
end BEHAVIORAL;

configuration CFG_RCA_STRUCTURAL of RCA is
  for STRUCTURAL 
    for ADDER1
      for all : FA
        use configuration WORK.CFG_FA_BEHAVIORAL;
      end for;
    end for;
  end for;
end CFG_RCA_STRUCTURAL;

configuration CFG_RCA_BEHAVIORAL of RCA is
  for BEHAVIORAL 
  end for;
end CFG_RCA_BEHAVIORAL;
