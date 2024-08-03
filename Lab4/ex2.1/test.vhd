library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;
use work.myTypes.all;

entity dlx_cu_tb is
end;

architecture bench of dlx_cu_tb is

  component dlx_cu
  	generic (
  	  IR_SIZE            :     integer := 32;
  	  CW_SIZE            :     integer := 13);
  	port (
  	  Clk                : in  std_logic;
  	  R               : in  std_logic;
  	  IR_IN              : in  std_logic_vector(IR_SIZE - 1 downto 0);
  	  RF1                       : out std_logic;
  	  RF2                       : out std_logic;
  	  WF1                       : out std_logic;
  	  EN1                       : out std_logic;
  	  S1	                    : out std_logic;
  	  S2                        : out std_logic;
  	  ALU_1                     : out std_logic; 
  	  ALU_2                     : out std_logic; 
  	  EN2                       : out std_logic;
  	  RM                        : out std_logic;
  	  WM                        : out std_logic;
  	  EN3                       : out std_logic;
  	  S3                        : out std_logic
  	);
    end component;

  signal Clk: std_logic;
  signal R: std_logic;
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
	signal OP_CODE_s : std_logic_vector(OP_CODE_SIZE-1 downto 0);

  constant clock_period: time := 10 ns;
  signal stop_the_clock: boolean;

begin

  -- Insert values for generic parameters !!
  uut: dlx_cu generic map ( IR_SIZE => 32,
                            CW_SIZE =>13  )
                 port map ( Clk     => Clk,
                            R       => R,
                            IR_IN   => IR_IN,
                            RF1     => RF1,
                            RF2     => RF2,
                            WF1     => WF1,
                            EN1     => EN1,
                            S1      => S1,
                            S2      => S2,
                            ALU_1   => ALU_1,
                            ALU_2   => ALU_2,
                            EN2     => EN2,
                            RM      => RM,
                            WM      => WM,
                            EN3     => EN3,
                            S3      => S3 );

  stimulus: process
  begin
  
    -- Put initialisation code here

    R <= '0';
    wait for 5 ns;
    R <= '1';
    wait for 5 ns;
------------------------------------------------
--------------- R-Type ops ---------------------
------------------------------------------------
        -- ADD RS1,RS2,RD
        IR_IN <= RTYPE & "000000000000000" & RTYPE_ADD ;
        wait for 10 ns;

       -- SUB RS1,RS2,RD
       IR_IN <= RTYPE & "000000000000000" & RTYPE_sub ;
       wait for 10 ns;

        -- AND RS1,RS2,RD
        IR_IN <= RTYPE & "000000000000000" & RTYPE_AND ;
        wait for 10 ns;

       -- OR RS1,RS2,RD
       IR_IN <= RTYPE & "000000000000000" & RTYPE_or ;
       wait for 10 ns;

------------------------------------------------
--------------- I-Type ops ---------------------
------------------------------------------------

-- ADDI1 RS1,RD,INP1
IR_IN <=  ITYPE_ADDI1 & "00000000000000000000000000";
wait for 10 ns;

-- SUBI1 RS1,RD,INP1
IR_IN <= ITYPE_SUBI1 & "00000000000000000000000000";
wait for 10 ns;

-- ANDI1 RS1,RD,INP1
IR_IN <= ITYPE_ANDI1 & "00000000000000000000000000";
wait for 10 ns;

-- ORI1 RS1,RD,INP1
IR_IN <= ITYPE_ORI1 & "00000000000000000000000000";
wait for 10 ns;

-- ADDI2 RS1,RD,INP1
IR_IN <= ITYPE_ADDI2 & "00000000000000000000000000";
wait for 10 ns;

-- SUBI2 RS1,RD,INP1
IR_IN <= ITYPE_SUBI2 & "00000000000000000000000000";
wait for 10 ns;

-- ANDI2 RS1,RD,INP1
IR_IN <= ITYPE_ANDI2 & "00000000000000000000000000";
wait for 10 ns;

-- ORI2 RS1,RD,INP1
IR_IN <= ITYPE_ORI2 & "00000000000000000000000000";
wait for 10 ns;

-- MOV RS1,RD,INP1
IR_IN <= ITYPE_MOV & "00000000000000000000000000";
wait for 10 ns;

-- SREG1 RS1,RD,INP1
IR_IN <= ITYPE_S_REG1 & "00000000000000000000000000";
wait for 10 ns;

-- SREG2 RS1,RD,INP1
IR_IN <= ITYPE_S_REG2 & "00000000000000000000000000";
wait for 10 ns;

-- SMEM2 RS1,RD,INP1
IR_IN <= ITYPE_S_MEM2 & "00000000000000000000000000";
wait for 10 ns;

--LMEM1 RS1,RD,INP1
IR_IN <= ITYPE_L_MEM1 & "00000000000000000000000000";
wait for 10 ns;

--LMEM2 RS1,RD,INP1
IR_IN <= ITYPE_L_MEM2 & "00000000000000000000000000";
wait for 10 ns;
	

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