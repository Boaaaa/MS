library IEEE;
use IEEE.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity tb_w_register is
end tb_w_register;

architecture TEST of tb_w_register is
	component wrf is
		generic(
			M : integer := 4;
			N : integer := 4;
			F : integer := 4;
			size_word : integer := 4;
			n_window_addr  : integer := 4;
			physical_addr  : integer := 6
		);
		port (
			--control port
			CALL 			: IN STD_LOGIC;
			RET  			: IN STD_LOGIC;
			CLK  			: IN STD_LOGIC;
			RESET           : In std_logic;
			ENABLE          : In std_logic;
			READ_EN_ONE     : In std_logic;
			READ_EN_TWO     : In std_logic;
			WRITE_EN        : In std_logic;
			
			--data port
			DATA_WRITE      : In std_logic_vector(size_word-1 downto 0);
			ADDR_WRITE      : In std_logic_vector(n_window_addr-1 downto 0);
			ADDR_READ_ONE   : In std_logic_vector(n_window_addr-1 downto 0);
			ADDR_READ_TWO   : In std_logic_vector(n_window_addr-1 downto 0);
		
	
			--output port
			DATA_OUT_ONE    : Out std_logic_vector(size_word-1 downto 0);
			DATA_OUT_TWO    : Out std_logic_vector(size_word-1 downto 0);
			FILL            : Out std_logic;
			SPILL           : Out std_logic
			--when spill, transfer data to memtory
			--DATA_BUS		: INOut std_logic_vector(size_word-1 downto 0);
			--should be the physical adddress instead of virtual address
			--ADDR_BUS		: INOut std_logic_vector(physical_addr-1 downto 0)
	);
	end component;
	
	constant Period: time := 4 ns; -- Clock period (1 GHz);
	signal CLK : std_logic :='0';
	signal RESET : std_logic;
	signal CALL_s : STD_LOGIC; 	
	signal RET_s  : STD_LOGIC;
	signal ENABLE_s : std_logic;
	signal READ_EN_ONE_s : std_logic;
	signal READ_EN_TWO_s : std_logic;
	signal WRITE_EN_s : std_logic;
	
	signal DATA_WRITE_s : std_logic_vector(3 downto 0);
	signal ADDR_WRITE_s : std_logic_vector(3 downto 0);
	signal ADDR_READ_ONE_s : std_logic_vector(3 downto 0);
	signal ADDR_READ_TWO_s : std_logic_vector(3 downto 0);
	
	signal DATA_OUT_ONE_s    : std_logic_vector(3 downto 0);
	signal DATA_OUT_TWO_s    : std_logic_vector(3 downto 0);
	signal FILL_s            : std_logic;
	signal SPILL_s          : std_logic;
	--when spill, transfer data to memtory
	signal DATA_BUS_s		: std_logic_vector(3 downto 0);
	--should be the physical adddress instead of virtual address
	signal ADDR_BUS_s		: std_logic_vector(5 downto 0);
	
begin
	USUM: wrf
		generic map(
			M => 4,
			N => 4,
			F => 4,
			size_word => 4,
			n_window_addr  => 4,
			physical_addr  => 6
		)
		port map(
			CALL_s,
			RET_s,
			CLK,
			RESET,
			ENABLE_s,
			READ_EN_ONE_s,
			READ_EN_TWO_s,
			WRITE_EN_s,
			
			--data port
			DATA_WRITE_s,
			ADDR_WRITE_s,
			ADDR_READ_ONE_s,
			ADDR_READ_TWO_s,
		
			--output port
			DATA_OUT_ONE_s,
			DATA_OUT_TWO_s,
			FILL_s,
			SPILL_s
			--when spill, transfer data to memtory
			--DATA_BUS_s,
			--should be the physical adddress instead of virtual address
			--ADDR_BUS_s
		);
		
	--first cycle
	CLK <= not CLK after Period/2;
	
	
	STIMULUS1: process
	begin
		--reset
		RESET <= '1';
		ENABLE_s <= '1';
		wait for period;
		
		--test write port
		RESET <= '0';
		CALL_s  <= '0';
		RET_s   <= '0';
		READ_EN_ONE_s <= '0';
		READ_EN_TWO_s <= '0';
		WRITE_EN_s <= '1';
		DATA_WRITE_s <= "0001";
		ADDR_WRITE_s <= "0110";
		wait for period;
		
		DATA_WRITE_s <= "0010";
		ADDR_WRITE_s <= "0111";
	
		wait for period;
		
		--test two read port
		
		READ_EN_ONE_s <= '1';
		READ_EN_TWO_s <= '1';
		WRITE_EN_s <= '0';
		ADDR_READ_ONE_s <= "0110";
		ADDR_READ_TWO_s <= "0111"; 
		wait for period;
	
		--test call CWP: 0->1
		CALL_s  <= '1';
		READ_EN_ONE_s <= '0';
		READ_EN_TWO_s <= '0';
		WRITE_EN_s <= '1';
		DATA_WRITE_s <= "0011";
		ADDR_WRITE_s <= "1000";
		wait for period;
	
		--test call CWP: 1->2
		DATA_WRITE_s <= "0000";
		ADDR_WRITE_s <= "1100";
		wait for period;
	
		--test call spill
		DATA_WRITE_s <= "0001";
		ADDR_WRITE_s <= "0110";
		wait for period;
		
		CALL_s <= '0';
		WRITE_EN_s <= '0';
		wait for 10*period;
	
	
		--continue call after spill   CWP: 2->3  
		WRITE_EN_s <= '1';		
		CALL_s <= '1';
		DATA_WRITE_s <= "0001";
		ADDR_WRITE_s <= "1110";
		wait for period;
		
		
		--test return CWP:3->2
		RET_s <= '1';
		CALL_s <= '0';
		WRITE_EN_s <= '0';	
		READ_EN_ONE_s <= '1';
		ADDR_READ_ONE_s <= "1100";
		wait for period;
	
		--test return CWP:2->1
		ADDR_READ_ONE_s <= "1000";
		wait for period;
		
		
		RET_s <= '0';
		WRITE_EN_s <= '1';	
		DATA_WRITE_s <= "0111";
		ADDR_WRITE_s <= "0111";
		wait for period;		
	
		
		--test return FILL
		RET_s <= '1';
		DATA_WRITE_s <= "0000" ;
		ADDR_WRITE_s <= "1000" ;
		wait for 10*period;
		
		RET_s <= '0';
		CALL_s <= '0';
		READ_EN_ONE_s <= '0';
		READ_EN_TWO_s <= '0';
		WRITE_EN_s <= '0';
		wait for 100*period;
	
	end process STIMULUS1;
	
end TEST;

configuration CFG_WRF_TEST of tb_w_register is
	for test
		for all : wrf
			use configuration work.CFG_wrf_structural;
		end for;	
	end for;
end CFG_WRF_TEST;