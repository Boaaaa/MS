library IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.numeric_std.all;
USE work.functions.all;
USE work.constants.all;

Entity aarf is 
	generic(
		M_1 : integer := 4;
		N_1 : integer := 4;
		F_1 : integer := 4;
		size_word_1 : integer := 64;
		n_window_addr_1  : integer := 4;
		physical_addr_1  : integer := 6;
		size_windows_1   : integer := 2;
		physical_addr_num_In_Local_Out_1 : integer := 36;
		physical_addr_num_1 : integer := 40;
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
		DATA_WRITE      : In std_logic_vector(size_word_1-1 downto 0);
        ADDR_WRITE      : In std_logic_vector(n_window_addr_1-1 downto 0);
        ADDR_READ_ONE   : In std_logic_vector(n_window_addr_1-1 downto 0);
        ADDR_READ_TWO   : In std_logic_vector(n_window_addr_1-1 downto 0);
		
	
		--output port
		DATA_OUT_ONE    : Out std_logic_vector(size_word_1-1 downto 0);
        DATA_OUT_TWO    : Out std_logic_vector(size_word_1-1 downto 0);
        FILL            : Out std_logic;
        SPILL           : Out std_logic
		--when spill, transfer data to memtory
		--DATA_BUS		: INOut std_logic_vector(size_word-1 downto 0);
		--should be the physical adddress instead of virtual address
		--ADDR_BUS		: INOut std_logic_vector(physical_addr-1 downto 0)
	);
end aarf;

architecture structural of aarf is

	component ddress_management 
		generic(
			M_2 : integer := M_1;
			N_2 : integer := N_1;
			F_2 : integer := F_1;
			-- Address size for the external address (virtual address)
			size_ext_addr_am_2          : integer := n_window_addr_1;
			-- Address size for the external address (physical address)
			size_int_addr_2          : integer := physical_addr_1;
			-- Address for the external address (physical address)
			physical_addr_num_In_Local_Out_2 : integer := physical_addr_num_In_Local_Out_1;
			-- Number of windows binary
			size_windows_2           : integer := size_windows_1
		);
		PORT(
			addr_read_in_1 : in std_logic_vector(size_ext_addr_am_2-1 downto 0);
			addr_read_in_2 : in std_logic_vector(size_ext_addr_am_2-1 downto 0);
			addr_write_in : in std_logic_vector(size_ext_addr_am_2-1 downto 0);
			cwp : in integer;
		
			addr_read_out_1 : out std_logic_vector(size_int_addr_2-1 downto 0);
			addr_read_out_2 : out std_logic_vector(size_int_addr_2-1 downto 0);
			addr_write_out : out std_logic_vector(size_int_addr_2-1 downto 0)
		);
	end component ddress_management;
	
	component management 
		generic(
			M_3 : integer := M_1;
			N_3 : integer := N_1;
			F_3 : integer := F_1;
			physical_addr_3  : integer := physical_addr_1
		);
		port(
			CALL 			: IN STD_LOGIC;
			RET  			: IN STD_LOGIC;
			CLK  			: IN STD_LOGIC;
			RESET			:IN std_logic;
			REG_ENABLE		: OUT STD_LOGIC;
			CWP				: OUT INTEGER;
			SWP 			: OUT INTEGER;
			SPILL			: OUT STD_LOGIC;
			FILL			: OUT STD_LOGIC;
			MEM_ENABLE_IN	: OUT STD_LOGIC;
			MEM_ENABLE_OUT	: OUT STD_LOGIC;
			REG_MEM_ADDR	: OUT STD_LOGIC_VECTOR(physical_addr_3-1 downto 0)
		
			--MEM_TO_REG_NUM  : OUT INTEGER;
		);
	end component management;
	
	component memory 
		generic(
			M_4 : integer := M_1;
			N_4 : integer := N_1;
			F_4 : integer := F_1;
			size_addr_4   : integer := physical_addr_1; 
			size_data_4	: integer := size_word_1
		);
		port(
			CLK	 		: IN std_logic;
			ENABLE_IN	: IN std_logic;
			ENABLE_OUT	: IN std_logic;
			DATA_IN 	: IN std_logic_vector(size_data_4-1 downto 0);
			DATA_OUT	: OUT std_logic_vector(size_data_4-1 downto 0);
			ADDR 		: IN std_logic_vector(size_addr_4-1 downto 0)
			
			--READ_EN_ONE : OUT std_logic;
			--WRITE_EN    : OUT std_logic
		);
	end component memory;
	
	component register_file 
		generic(
			M_5 : integer := M_1;
			N_5 : integer := N_1;
			F_5 : integer := F_1;
			size_word_5 : integer := size_word_1;
			physical_addr_5  : integer := physical_addr_1;
			physical_addr_num_5 : integer := physical_addr_num_1
		);
		port( 
			CLK			:IN std_logic;
			RESET		:IN std_logic;
			ENABLE		:IN std_logic;
			RD1			:IN std_logic;
			RD2			:IN std_logic;
			WR			:IN std_logic;
			ADD_WR		:IN std_logic_vector(physical_addr_5-1 downto 0);
			ADD_RD1		:IN std_logic_vector(physical_addr_5-1 downto 0);
			ADD_RD2		:IN std_logic_vector(physical_addr_5-1 downto 0);
			DATAIN		:IN std_logic_vector(size_word_5-1 downto 0);
			BUS_WRITE_ENABLE : IN  std_logic;
			BUS_READ_ENABLE  : IN  std_logic;
			OUT1		:OUT std_logic_vector(size_word_5-1 downto 0);
			OUT2		:OUT std_logic_vector(size_word_5-1 downto 0);
			ADDR_BUS    :IN std_logic_vector(physical_addr_5-1 downto 0);
			DATA_BUS_IN	:IN std_logic_vector(size_word_5-1 downto 0);
			DATA_BUS_OUT:OUT std_logic_vector(size_word_5-1 downto 0)
			--DATA_BUS	:INOUT std_logic_vector(size_word-1 downto 0)
		);
	end component register_file;
	
	signal CWP_s : INTEGER;
	signal SWP_s : INTEGER;
	signal addr_read_out_1_s : std_logic_vector(physical_addr_1-1 downto 0);
	signal addr_read_out_2_s : std_logic_vector(physical_addr_1-1 downto 0);
	signal addr_write_out_s : std_logic_vector(physical_addr_1-1 downto 0);
	signal MEM_ENABLE_IN_s : std_logic;
	signal MEM_ENABLE_OUT_s : std_logic;
	signal REG_MEM_ADDR_s : integer;
	signal REG_TO_MEM_s : std_logic_vector(size_word_1-1 downto 0);
	signal MEM_TO_REG_s : std_logic_vector(size_word_1-1 downto 0);
	signal addr_bus_s : std_logic_vector(physical_addr_1-1 downto 0);
	signal REG_ENABLE_s : std_logic;
	signal CLK_s : std_logic;
begin
	
		m_AD: ddress_management
			port map(
				addr_read_in_1 => ADDR_READ_ONE,
				addr_read_in_2 => ADDR_READ_TWO,
				addr_write_in  => ADDR_WRITE,
				cwp => CWP_s,

				addr_read_out_1 => addr_read_out_1_s,
				addr_read_out_2 => addr_read_out_2_s,
				addr_write_out => addr_write_out_s
			);
		
		m_CU:management
			port map(
				CALL => CALL,
				RET  => RET,
				CLK  => CLK,
				RESET => RESET,
				REG_ENABLE => REG_ENABLE_s,
				CWP	 => CWP_s,
				SWP  => SWP_s,
				SPILL => SPILL,
				FILL  => FILL,
				MEM_ENABLE_IN	=> MEM_ENABLE_IN_s,
				MEM_ENABLE_OUT	=> MEM_ENABLE_OUT_s,
				REG_MEM_ADDR	=> addr_bus_s
			);
			
		m_rf: register_file
			port map(
				CLK		=> CLK,
				RESET	=> RESET,
				ENABLE	=> REG_ENABLE_s,
				RD1		=> READ_EN_ONE,
				RD2		=> READ_EN_TWO,
				WR		=> WRITE_EN,
				ADD_WR	=> addr_write_out_s,
				ADD_RD1	=> addr_read_out_1_s,
				ADD_RD2	=> addr_read_out_2_s,
				DATAIN	=> DATA_WRITE,
				BUS_WRITE_ENABLE => MEM_ENABLE_OUT_s,
				BUS_READ_ENABLE => MEM_ENABLE_IN_s,
				OUT1	=> DATA_OUT_ONE,
				OUT2	=> DATA_OUT_TWO,
				ADDR_BUS => addr_bus_s,
				DATA_BUS_IN => MEM_TO_REG_s,
				DATA_BUS_OUT => REG_TO_MEM_s
			);
		
		m_mem: memory
			port map(
				CLK	 => CLK,
				ENABLE_IN	=> MEM_ENABLE_IN_s,
				ENABLE_OUT	=> MEM_ENABLE_OUT_s,
				DATA_IN 	=> REG_TO_MEM_s,
				DATA_OUT	=> MEM_TO_REG_s,
				ADDR 		=> addr_bus_s
			);
end structural;

configuration CFG_aarf_structural of aarf is
  for structural
	for all : ddress_management
		use configuration work.CFG_ddress_management_BEH;
	end for;
	
	for all : management
		use configuration work.CFG_management_BEH;
	end for;
	
	for all : register_file
		use configuration work.CFG_RF_BEH;
	end for;
	
	for all: memory
		use configuration work.CFG_memory_BEH;
	end for;
  end for;
end configuration;