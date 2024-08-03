library IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.numeric_std.all;
USE work.constants.all;
USE work.functions.all;

entity management is
	generic(
		M : integer := M_const;
		N : integer := N_const;
		F : integer := F_const;
		physical_addr  : integer := log2(M_const + F_const*(N_const*2) + N_const)
	);
	port(
		CALL 			: IN STD_LOGIC;
		RET  			: IN STD_LOGIC;
		CLK  			: IN STD_LOGIC;
		RESET			: IN STD_LOGIC;
		REG_ENABLE		: OUT STD_LOGIC;
		CWP				: OUT INTEGER;
		SWP 			: OUT INTEGER;
		SPILL			: OUT STD_LOGIC;
		FILL			: OUT STD_LOGIC;
		MEM_ENABLE_IN	: OUT STD_LOGIC;
		MEM_ENABLE_OUT	: OUT STD_LOGIC;
		REG_MEM_ADDR	: OUT STD_LOGIC_VECTOR(physical_addr-1 downto 0)
		
		--MEM_TO_REG_NUM  : OUT INTEGER;
	);
end management;

ARCHITECTURE behavior of management is
	signal SPILL_STATUS : STD_LOGIC := '0';
	signal FILL_STATUS : STD_LOGIC := '0';
	signal CANSAVE : STD_LOGIC_VECTOR(F-1 downto 0);
	signal CANRESTORE : STD_LOGIC_VECTOR(F-1 downto 0);
	signal REG_MEM_ADDR_SIGNAL : integer := 4;
	--signal MEM_TO_REG_ADDR_SIGNAL : integer := 0;
	signal CWP_SIGNAL : INTEGER := 0;
	signal SWP_SIGNAL : INTEGER := 0;
	signal CLK_SIGNAL : INTEGER := 0;
	signal count: INTEGER range 0 to 1 := 0;
	--signal REG_ENABLE_s		: STD_LOGIC := '1';
begin	
	syn_proc:process(CLK)
	begin
		--variable v_cansave : integer := 0;
		--variable v_canrestore : integer := F-1;
		
		if rising_edge(CLK) then
			
			
			--if count < 1 then
			--	count <= count + 1;
			--else
			--	count <= 0;
			--end if;

			if RESET = '1' then
				REG_ENABLE <= 'Z';
				CWP <= 0;
				SWP <= 0;
				SPILL <= '0';
				FILL <= '0';
				MEM_ENABLE_IN <= 'Z';
				MEM_ENABLE_OUT <= 'Z';
				REG_MEM_ADDR <= (others => '0');
			else
				--spill happened,we should transfer data to memory
				if SPILL_STATUS = '1' then
					if (2*N*SWP_SIGNAL+M) <= REG_MEM_ADDR_SIGNAL and  REG_MEM_ADDR_SIGNAL < (2*N*(SWP_SIGNAL+1)+M) then
						--if count = 0 then 
							REG_MEM_ADDR <= std_logic_vector(to_unsigned(REG_MEM_ADDR_SIGNAL,REG_MEM_ADDR'length));
							MEM_ENABLE_IN <= '1';
							REG_ENABLE <= '0';
						--else
							REG_MEM_ADDR_SIGNAL <= REG_MEM_ADDR_SIGNAL+1;
						--end if;
					else
						SPILL_STATUS <= '0';
						SWP <= SWP_SIGNAL+1;
						SWP_SIGNAL <= SWP_SIGNAL+1;
						SPILL <= '0';
						REG_ENABLE <= '1';
						MEM_ENABLE_IN <= '0';
					end if;
				else 
					if FILL_STATUS = '1' then
						if SWP_SIGNAL > 0 then 
							if (2*N*(SWP_SIGNAL-1)+M)< REG_MEM_ADDR_SIGNAL and  REG_MEM_ADDR_SIGNAL <= (2*N*SWP_SIGNAL+M) then
								--if count = 0 then 
									REG_MEM_ADDR <= std_logic_vector(to_unsigned(REG_MEM_ADDR_SIGNAL-1,REG_MEM_ADDR'length));
									MEM_ENABLE_OUT <= '1';
									REG_ENABLE <= '0';
								--else
									REG_MEM_ADDR_SIGNAL <= REG_MEM_ADDR_SIGNAL-1;
								--end if;
							else
								FILL_STATUS <= '0';
								SWP <= SWP_SIGNAL-1;
								SWP_SIGNAL <= SWP_SIGNAL-1;
								FILL <= '0';
								REG_ENABLE <= '1';
								MEM_ENABLE_OUT <= '0';
							end if;
						end if;
					else
						if CALL = '1' then
							if CWP_SIGNAL < F+SWP_SIGNAL-2 then
								CWP <= CWP_SIGNAL+1;
								CWP_SIGNAL <= CWP_SIGNAL+1;
								REG_ENABLE <= '1';
							else
								SPILL_STATUS <= '1';
								SPILL <= '1';
								REG_ENABLE <= '0';
							
								REG_MEM_ADDR <= std_logic_vector(to_unsigned(REG_MEM_ADDR_SIGNAL,REG_MEM_ADDR'length));
								MEM_ENABLE_IN <= '1';
								REG_MEM_ADDR_SIGNAL <= REG_MEM_ADDR_SIGNAL+1;
								--count <= 1;
							end if;
						elsif RET = '1' then
							if CWP_SIGNAL > SWP_SIGNAL then
								CWP <= CWP_SIGNAL-1;
								CWP_SIGNAL <= CWP_SIGNAL-1;
								REG_ENABLE <= '1';
							else
								FILL_STATUS <= '1';
								FILL <= '1';
								REG_ENABLE <= '0';
							
								REG_MEM_ADDR <= std_logic_vector(to_unsigned(REG_MEM_ADDR_SIGNAL-1,REG_MEM_ADDR'length));
								MEM_ENABLE_OUT <= '1';
								REG_MEM_ADDR_SIGNAL <= REG_MEM_ADDR_SIGNAL-1;
								--count <= 1;
							end if;
						else
							REG_ENABLE <= '1';
						end if;
					end if;
				end if;
			end if;
		end if;
		--REG_ENABLE <= REG_ENABLE_s;
	end process syn_proc;
end behavior;

configuration CFG_management_BEH of management is
  for behavior
  end for;
end configuration;