library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;
use work.myTypes.all;

entity dlx_cu_tb is
end;

architecture bench of dlx_cu_tb is

  component dlx_cu
  	generic (
		INSTRUCTIONS_EXECUTION_CYCLES : integer := 3;  -- Instructions Execution
                                                   -- Clock Cycles
		MICROCODE_MEM_SIZE            : integer := 58;  -- Microcode Memory Size
                                                   -- Memory Size
		OP_CODE_SIZE : integer := 6;        -- Op Code Size
		FUNC_SIZE	 : integer := 11;
		IR_SIZE      : integer := 32;       -- Instruction Register Size
		CW_SIZE      : integer := 13);      -- Control Word Size
  	port (
  	  Clk                : in  std_logic;
  	  Rst               : in  std_logic;
  	  IR_IN              : in  std_logic_vector(IR_SIZE - 1 downto 0);
  	  EN1                       : out std_logic;
	  RF1                       : out std_logic;
  	  RF2                       : out std_logic;
  	  WF1                       : out std_logic;
  	  EN2                       : out std_logic;
  	  S1	                    : out std_logic;
  	  S2                        : out std_logic;
  	  ALU_1                     : out std_logic; 
  	  ALU_2                     : out std_logic; 
  	  EN3                       : out std_logic;
  	  RM                        : out std_logic;
  	  WM                        : out std_logic;
  	  S3                        : out std_logic
  	);
    end component;

  signal Clk: std_logic;
  signal Rst: std_logic;
  signal IR_IN: std_logic_vector(31 downto 0);
  signal RF1: std_logic;
  signal RF2: std_logic;
  signal WF1: std_logic;
  signal EN1: std_logic;
  signal S1: std_logic;
  signal S2: std_logic;
  signal ALU_1: std_logic;
  signal ALU_2: std_logic;
  signal EN2: std_logic;
  signal RM: std_logic;
  signal WM: std_logic;
  signal EN3: std_logic;
  signal S3: std_logic ;
  signal FUNC_s : std_logic_vector(FUNC_SIZE-1 downto 0);

  constant clock_period: time := 10 ns;
  signal stop_the_clock: boolean;

begin

  -- Insert values for generic parameters !!
	uut:dlx_cu generic map(
					INSTRUCTIONS_EXECUTION_CYCLES => 3,  
					MICROCODE_MEM_SIZE            => 58,            
					OP_CODE_SIZE 				  => 6,
					FUNC_SIZE	 				  => 11,					
					IR_SIZE      				  => 32,
					CW_SIZE      				  => 13
				)
              port map ( 
					Clk     => Clk,
                    Rst     => Rst,
                    IR_IN   => IR_IN,
					EN1     => EN1,
                    RF1     => RF1,
                    RF2     => RF2,
                    WF1     => WF1,
                    EN2     => EN2,     
                    S1      => S1,
                    S2      => S2,
                    ALU_1   => ALU_1,
                    ALU_2   => ALU_2,
                    EN3     => EN3,    
                    RM      => RM,
                    WM      => WM,        
                    S3      => S3 
				);

  stimulus: process
  begin
  
    -- Put initialisation code here

    Rst <= '0';
    wait for 10 ns;
    Rst <= '1';
    wait for 10 ns;
------------------------------------------------

--ADD RS1,RS2,RD  R type
IR_IN <= RTYPE & "00110001000100000000000001";
wait for 30 ns;

--ADDI1 R1,R2,INP1   I type
IR_IN <= ITYPE_ADDI1 & "00110001000000001001001000";
wait for 30 ns;

--LMEM2 RS1,RD,INP1
IR_IN <= ITYPE_L_MEM2 & "00000000000000000000000000";
wait for 30 ns;

-- SMEM2 RS1,RD,INP1
IR_IN <= ITYPE_S_MEM2 & "00000000000000000000000000";
wait for 30 ns;

--LMEM1 RS1,RD,INP1
IR_IN <= ITYPE_L_MEM1 & "00000000000000000000000000";
wait for 30 ns;

--LMEM2 RS1,RD,INP1
IR_IN <= ITYPE_L_MEM2 & "00000000000000000000000000";
wait for 30 ns;
	

        wait;

    stop_the_clock <= true;
    wait;
  end process;

  clocking: process
  begin
    while not stop_the_clock loop
      Clk <= '0', '1' after clock_period / 2;
      wait for clock_period;
    end loop;
    wait;
  end process;

end;

configuration CFG_dlx_cu_test of dlx_cu_tb is
	for bench
		for all : dlx_cu
			use configuration work.CFG_dlx_cu_behavior;
		end for;
	end for;
end configuration;