library IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.numeric_std.all;
USE work.functions.all;
USE work.constants.all;

ENTITY memory IS
	generic(
		M : integer := M_const;
		N : integer := N_const;
		F : integer := F_const;
		size_addr   : integer := log2(M_const + (N_const*2)*F_const + N_const); 
		size_data	: integer := word_size
	);
	port(
		CLK	 		: IN std_logic;
		ENABLE_IN	: IN std_logic;
		ENABLE_OUT	: IN std_logic;
		DATA_IN 	: IN std_logic_vector(size_data-1 downto 0);
		DATA_OUT	: OUT std_logic_vector(size_data-1 downto 0);
		ADDR 		: IN std_logic_vector(size_addr-1 downto 0)
		--READ_EN_ONE : OUT std_logic;
		--WRITE_EN    : OUT std_logic
	);
END memory;

architecture behavior of memory is

	 -- suggested structures
    --subtype MEM_SIZE is natural range 0 to 65535; -- using natural type
	type MEM_ARRAY is array(natural range 0 to 50) of std_logic_vector(word_size-1 downto 0); 
	signal MEMTORY : MEM_ARRAY; 

begin
	mem_proc: process(CLK,ADDR,DATA_IN,ENABLE_IN,ENABLE_OUT)
	begin
		--if rising_edge(CLK) then
		if ENABLE_IN = '1' and CLK = '0' then
			MEMTORY(to_integer(unsigned(ADDR))) <= DATA_IN;
			--DATA_OUT <= DATA_IN;
			--READ_EN_ONE <= '1';
		end if;
			
		if ENABLE_OUT = '1' and CLK = '1' then
			DATA_OUT <= MEMTORY(to_integer(unsigned(ADDR)));
			--WRITE_EN <= '1';
		end if;
		--end if;
	end process mem_proc;
end behavior;

configuration CFG_memory_BEH of memory is
  for behavior
  end for;
end configuration;