library IEEE;
use IEEE.std_logic_1164.all;
--use IEEE.std_logic_unsigned.all;
use IEEE.numeric_std.all;
use WORK.constants.all;
USE work.functions.all;

entity register_file is
	generic(
		M : integer := M_const;
		N : integer := N_const;
		F : integer := F_const;
		size_word : integer := word_size;
		physical_addr  : integer := log2(M_const + F_const*(N_const*2) + N_const);
		physical_addr_num : integer := M_const + F_const*(N_const*2) + N_const
	);
	port ( 
		CLK			:IN std_logic;
		RESET		:IN std_logic;
		ENABLE		:IN std_logic;
		RD1			:IN std_logic;
		RD2			:IN std_logic;
		WR			:IN std_logic;
		ADD_WR		:IN std_logic_vector(physical_addr-1 downto 0);
		ADD_RD1		:IN std_logic_vector(physical_addr-1 downto 0);
		ADD_RD2		:IN std_logic_vector(physical_addr-1 downto 0);
		DATAIN		:IN std_logic_vector(size_word-1 downto 0);
		BUS_WRITE_ENABLE : IN  std_logic;
		BUS_READ_ENABLE  : IN  std_logic;
		OUT1		:OUT std_logic_vector(size_word-1 downto 0);
		OUT2		:OUT std_logic_vector(size_word-1 downto 0);
		ADDR_BUS    :IN std_logic_vector(physical_addr-1 downto 0);
		DATA_BUS_IN	:IN std_logic_vector(size_word-1 downto 0);
		DATA_BUS_OUT:OUT std_logic_vector(size_word-1 downto 0)
		--BUS_DATA_OUT:OUT std_logic_vector(size_word-1 downto 0);
	);
end register_file;

architecture A of register_file is

    -- suggested structures
    subtype REG_ADDR is natural range 0 to physical_addr_num-1; -- using natural type
	type REG_ARRAY is array(REG_ADDR) of std_logic_vector(size_word-1 downto 0); 
	signal REGISTERS : REG_ARRAY; 
	--signal DATA_BUS_s : std_logic_vector(size_word-1 downto 0);
	
begin 
-- write your RF code 
	--A_reset: process(RESET)
	--begin
	--	if RESET = '1' then
	--		REGISTERS <= (others => (others => 'Z'));
	--	end if;
	--end process A_reset;
	
	A0:process(CLK)
		variable data_bus_tmp : std_logic_vector(size_word-1 downto 0);
	begin
		if falling_edge(CLK) then
			if RESET = '1' then
				REGISTERS <= (others => (others => 'Z'));
			else
				if ENABLE = '1' then
					
					if RD1 = '1' then
						OUT1 <= REGISTERS(to_integer(unsigned(ADD_RD1)));
					end if;
					
					if RD2 = '1' then
						OUT2 <= REGISTERS(to_integer(unsigned(ADD_RD2)));
					end if;
					
					if WR = '1' then
						REGISTERS(to_integer(unsigned(ADD_WR))) <= DATAIN;
					end if;
				else
				
					if BUS_WRITE_ENABLE = '1' then
						REGISTERS(to_integer(unsigned(ADDR_BUS))) <= DATA_BUS_IN;
					end if;
					
					if BUS_READ_ENABLE = '1' then
						DATA_BUS_OUT <= REGISTERS(to_integer(unsigned(ADDR_BUS)));
					end if;
					
					OUT1 <= (others => 'Z');
					OUT2 <= (others => 'Z');
				end if;
			end if;
		end if;
	end process A0;
	
	--A1: process(ADDR_BUS)
	--begin
		
	--end process A1;
	--A0: process(CLK)
	--begin
	--	if rising_edge(CLK) then
	--		if ENABLE = '1' and RD1 = '1' and RESET = '0' then
	--				OUT1 <= REGISTERS(to_integer(unsigned(ADD_RD1)));
	--		end if;
		--end if;
	--end process A0;
	
	--A1: process(CLK)
	--begin
	--	if rising_edge(CLK) then
	--		if ENABLE = '1' and RD2 = '1' and RESET = '0' then
	--				OUT2 <= REGISTERS(to_integer(unsigned(ADD_RD2)));
	--		end if;
	--	end if;
	--end process A1;
	
	--A2: process (CLK)
	--begin
	--	if rising_edge(CLK) then
	--		if ENABLE = '1' and WR = '1' and RESET = '0' then
	--				REGISTERS(to_integer(unsigned(ADD_WR))) <= DATAIN;
	--		end if;
	--	end if;
	--end process A2;
	
	--A3:process(CLK)
	--begin
	--	if rising_edge(CLK) then
	--		if BUS_WRITE_ENABLE = '1' then
	--			REGISTERS(to_integer(unsigned(ADDR_BUS))) <= DATA_BUS;
	--		end if;
	--	end if; 		
	--end process A3;
	
	--A4:process(CLK)
	--begin
	--	if rising_edge(CLK) then
	--		if BUS_READ_ENABLE = '1' then
	--			DATA_BUS <= REGISTERS(to_integer(unsigned(ADDR_BUS))) ;
	--		end if;
	--	end if; 
	--end process;
end A;


configuration CFG_RF_BEH of register_file is
  for A
  end for;
end configuration;
