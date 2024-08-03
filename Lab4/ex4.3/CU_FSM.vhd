--AS A memo
--                        stage 1
-- EN1 en the register file and the pipeline registers;
-- RF1 |
-- RF2 | -> en the read port 1 and 2 of the register file;
-- WF1      en the write port of the register file.

--                        stage 2
-- EN2 enables the pipe registers;
-- S1 |   0 = external input   1 = register input
-- S2 | ->input selection of the second first multiplexer;
-- ALU1, ALU2 alu control bit;

--                        stage 3
-- EN3 en the memory and the pipeline register;
-- RM enables the read-out of the memory;
-- WM enables the write-in of the memory;
-- S3 input selection of the multiplexer.


library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
use work.myTypes.all;

entity dlx_cu is
	generic (

	  IR_SIZE            :     integer := 32;  -- Instruction Register Size  (quanto sono lunghe le istruzioni)  
	  CW_SIZE            :     integer := 13);  -- Control Word Size:(ogni output del blocco)
  
  
	port (

	--overall signal
	  Clk                : in  std_logic;  -- Clock
	  R               : in  std_logic;  -- Reset:Active-Low
	  IR_IN              : in  std_logic_vector(IR_SIZE - 1 downto 0); --instruction input 31 large

	  -- pipe stage 1
	  EN1                       : out std_logic;
	  RF1                       : out std_logic;
	  RF2                       : out std_logic;
	  WF1                       : out std_logic;
	  
	  -- pipe stage 2
	  EN2                       : out std_logic;
	  S1	                    : out std_logic;
	  S2                        : out std_logic;
	  ALU_1                     : out std_logic; 
	  ALU_2                     : out std_logic; 
  
	   -- pipe stage 3
	  EN3                       : out std_logic;
	  RM                        : out std_logic;
	  WM                        : out std_logic;
	  S3                        : out std_logic
	);
  end dlx_cu;
   

architecture dlx_hw_cu_avrch of dlx_cu is

	Type mem_array is array (integer range 0 to 18) of std_logic_vector(CW_SIZE-1 downto 0);
	signal ctrl_w_mem : mem_array := (	
 -- these signals are used to arrange the control words used during the pipeling 
 --in different stages
 -- order    (STAGE 1)         (STAGE 2 )       (STAGE 3)
  -- order (En1,RF1,RF2) (En2,S1,S2,Alu1,Alu2)(En3,RM,WB,S3,WF1)
  -- (En1,RF1,RF2,WF1)) (En2,S1,S2,Alu1,Alu2)(En3,RM,WB,S3)
--_________________________R_type_____________________________
		"1111"&"11100"&"0111", -- ADD R[R3] = R[R1] + R[R2] |R    0
		"1111"&"11101"&"0111", -- SUB R[R3] = R[R1] - R[R2]|R     1
		"1111"&"11110"&"0111", -- R[R3] = R[R1] AND R[R2]|R       2
		"1111"&"11111"&"0111", -- R[R3] = R[R1] OR R[R2]|R        3

--_________________________I_type_____________________________          
		"1101"&"11000"&"0001", -- ADDI1 I-Type R[R2] = R[R1] + INP1        4
		"1101"&"11001"&"0001", -- SUBI1 I-Type R[R2] = R[R1] - INP1        5
		"1101"&"11010"&"0001", -- ANDI1 I-Type R[R2] = R[R1] AND INP1      6
		"1101"&"11011"&"0001", -- ORI1 I-Type  R[R2] = R[R1] OR INP1       7

		"1010"&"000100101", -- ADDI2 I-Type R[R2] = R[R1] + INP2)       8
		"1010"&"001100101", -- SUBI2 I-Type R[R2] = R[R1] - INP2        9
		"1010"&"010100101", -- ANDI2 I-Type R[R2] = R[R1] AND INP2      10
		"1010"&"011100101", -- ORI2 I-Type  R[R2] = R[R1] OR INP2       11


--		___________________________  to continue___________________________ 

		"1010"&"000100101", -- MOV I-Type   R[R2] = R[R1] 12

	    "0111"&"100100001", -- S_REG1 I-Type op: R[RD] 13 <= INP1  Save the value INP1 in the register file, R1 field is
	    "1010"&"000100001", -- S_REG2 I-Type op: R[RD] 14 <= INP2  Save the value INP2 in the register file, R1 field is
     
		"1110"&"000101100", -- S_MEM2 I-Type op: MEM[R[R1]+INP2] = R[R2] 15 The content of the register R2 issaved in a memory cell, which address is calculated adding the content of the register R1 to the value INP2;
	    "1111"&"100110111", -- L_MEM1 I-Type op: R[R2] = MEM[R[R1]+INP1] 16The content of the memory cell,which address is calculated adding the content of the register R1 to the value INP1, is saved in theregister R2;
	    "1110"&"000110111", --  L_MEM2 I-Type op: R[R2] = MEM[R[R1]+INP2]  17

		"0000"&"100000010" -- NOP stall efect 18

	);


-- Here there is NO PIPELINE, so only one control word is needed
    signal     FUNC     : std_logic_vector(FUNC_SIZE-1 downto 0);    -- take func
    signal     OP_CODE  :  std_logic_vector(OP_CODE_SIZE-1 downto 0);-- take the OPCODE
	signal      ctrl_w_s : std_logic_vector(CW_SIZE-1 downto 0);	-- control word signal
-- FSM
  -- it takes 3 clock cycles to complete an instruction
  -- at each clock cycle, a new state is taken
	
  -- FSM 3 states + 1 reset state   00  ready, 01 state0, 10 state1, 11 state2
  signal CURRENT_STATE: bit_vector(1 downto 0);
  signal NEXT_STATE : bit_vector(1 downto 0);
  signal STATE_SWITCH : bit := '0';   --for check input data at the first time, it will work after data comeing
begin

  
-- process that manages the current state, sensitive to the Clk and Rst
process(Clk, R)
begin
  if R='0' then
	CURRENT_STATE <=  READY;
	--ctrl_w_s <= (others => '0');
  elsif rising_edge(Clk) then
	if STATE_SWITCH = '1' then
		CURRENT_STATE <= NEXT_STATE;
	end if;
  end if;
end process;

-- process that assigns the different outputs depending on the state in which the FSM is
	--, then switches to the next
process(CURRENT_STATE)
  begin
	  case CURRENT_STATE is

		when STATE0 =>
		                EN1 <= ctrl_w_s(CW_SIZE-1);
		                RF1 <= ctrl_w_s(CW_SIZE-2);	
		                RF2 <= ctrl_w_s(CW_SIZE-3);
		                WF1 <= ctrl_w_s (cW_SIZE-4);
                        NEXT_STATE <= STATE1;  
		  
		when STATE1 =>
		                EN2 <= ctrl_w_S(CW_SIZE-5);
						S1 <= ctrl_w_s(CW_SIZE-6);
		                S2 <= ctrl_w_s(CW_SIZE-7);
		                ALU_1    <=    ctrl_w_s(CW_SIZE-8)   ;          
	                	ALU_2    <=    ctrl_w_s(CW_SIZE-9);
			            NEXT_STATE <= STATE2;

        when STATE2 =>
	                	EN3 <= ctrl_w_s(CW_SIZE-10);
	                	RM <= ctrl_w_s(CW_SIZE-11);
	                	WM <= ctrl_w_S(CW_SIZE-12);
	                	S3 <= ctrl_w_S(CW_SIZE-13);
						NEXT_STATE <= STATE0;
		when READY =>
						EN1 <= '0';
		                RF1 <= '0';
		                RF2 <= '0';
		                WF1 <= '0';
						EN2 <= '0';
						S1 <= '0';
		                S2 <= '0';
		                ALU_1 <= '0';        
	                	ALU_2 <= '0';
						EN3 <= '0';
	                	RM <= '0';
	                	WM <= '0';
	                	S3 <= '0';
			            NEXT_STATE <= STATE0;
		end case;
  end process;



	chek: process (IR_IN)
    begin
		if (R='1') then
			if (IR_IN(31 downto 26) = "000000") then
				FUNC    <= IR_IN(10 downto 0);  
				OP_CODE <= "000000";-- 
			else
				FUNC    <= (others => '0');  
				OP_CODE <= IR_IN(31 downto 26);-- 	
			end if;
			STATE_SWITCH <= '1';
		end if;
	end process;

	-- process which prepares the control word based on the input signal FUNC and OPCODE
	ALU_OP_CODE_P:	process(OP_CODE, FUNC)
	begin
		case OP_CODE is
			
			when RTYPE =>
				case FUNC is
					when RTYPE_ADD =>
						ctrl_w_s <= ctrl_w_mem(0);
					when RTYPE_SUB =>
						ctrl_w_s <= ctrl_w_mem(1);
					when RTYPE_AND =>
						ctrl_w_s <= ctrl_w_mem(2);
					when RTYPE_OR =>
						ctrl_w_s <= ctrl_w_mem(3);
					when NOP =>
				    	ctrl_w_s <= ctrl_w_mem(18);
					when others => ctrl_w_s <=(others => '0') ;
				end case;

			when ITYPE_ADDI1 =>
				ctrl_w_s <= ctrl_w_mem(4);
			when ITYPE_SUBI1 =>
				ctrl_w_s <= ctrl_w_mem(5);
			when ITYPE_ANDI1 =>
				ctrl_w_s <= ctrl_w_mem(6);
			when ITYPE_ORI1 =>
				ctrl_w_s <= ctrl_w_mem(7);
			when ITYPE_ADDI2 =>
				ctrl_w_s <= ctrl_w_mem(8);
			when ITYPE_SUBI2 =>
				ctrl_w_s <= ctrl_w_mem(9);
			when ITYPE_ANDI2 =>
				ctrl_w_s <= ctrl_w_mem(10);
			when ITYPE_ORI2 =>
				ctrl_w_s <= ctrl_w_mem(11);
			when ITYPE_MOV =>
				ctrl_w_s <= ctrl_w_mem(12);
			when ITYPE_S_REG1 =>
				ctrl_w_s <= ctrl_w_mem(13);
			when ITYPE_S_REG2 =>
				ctrl_w_s <= ctrl_w_mem(14);
			when ITYPE_S_MEM2 =>
				ctrl_w_s <= ctrl_w_mem(15);
			when ITYPE_L_MEM1 =>
				ctrl_w_s <= ctrl_w_mem(16);
			when ITYPE_L_MEM2 =>
				ctrl_w_s <= ctrl_w_mem(17);
			when others =>
				ctrl_w_s <= (others => '0');
		end case;
	end process;

end architecture;

configuration CFG_dlx_cu_behavior of dlx_cu is
	for dlx_hw_cu_avrch
	
	end for;
end CFG_dlx_cu_behavior;




  


