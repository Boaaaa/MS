library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
use work.myTypes.all;

entity dlx_cu is
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
    Clk             : in  std_logic;    -- Clock
    Rst             : in  std_logic;    -- Reset:Active-Low
    -- Instruction Register
    IR_IN           : in std_logic_vector(IR_SIZE - 1 downto 0);
    
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
	S3                        : out std_logic);

end dlx_cu;

architecture dlx_cu_rtl of dlx_cu is

	type mem_array is array (integer range 0 to MICROCODE_MEM_SIZE - 1) of std_logic_vector(CW_SIZE - 1 downto 0);
	signal microcode : mem_array := (	
		"0000000000000",	--0 reset                                0
	-- these signals are used to arrange the control word	
	--in different stages
	-- order    (STAGE 1)         (STAGE 2 )       (STAGE 3)
	-- order (En1,RF1,RF2) (En2,S1,S2,Alu1,Alu2)(En3,RM,WB,S3,WF1)
	-- (En1,RF1,RF2,WF1)) (En2,S1,S2,Alu1,Alu2)(En3,RM,WB,S3)
	--_________________________R_type_____________________________
		"1111"&"00000"&"0000", --1 ADD R[R3] = R[R1] + R[R2] |R    
		"0000"&"11100"&"0000", --2 ADD R[R3] = R[R1] + R[R2] |R    
		"0000"&"00000"&"0111", --3 ADD R[R3] = R[R1] + R[R2] |R    
		"1111"&"00000"&"0000", --4 SUB R[R3] = R[R1] - R[R2]|R     
		"0000"&"11101"&"0000", --5 SUB R[R3] = R[R1] - R[R2]|R     
		"0000"&"00000"&"0111", --6 SUB R[R3] = R[R1] - R[R2]|R     
		"1111"&"00000"&"0000", --7 R[R3] = R[R1] AND R[R2]|R       
		"0000"&"11110"&"0000", --8 R[R3] = R[R1] AND R[R2]|R       
		"0000"&"00000"&"0111", --9 R[R3] = R[R1] AND R[R2]|R       
		"1111"&"00000"&"0000", --10 R[R3] = R[R1] OR R[R2]|R        
		"0000"&"11111"&"0000", --11 R[R3] = R[R1] OR R[R2]|R        
		"0000"&"00000"&"0111", --12 R[R3] = R[R1] OR R[R2]|R

	--_________________________I_type_____________________________          
		"1101"&"00000"&"0000", --13 ADDI1 I-Type R[R2] = R[R1] + INP1   
		"0000"&"11000"&"0000", --14 ADDI1 I-Type R[R2] = R[R1] + INP1   
		"0000"&"00000"&"0001", --15 ADDI1 I-Type R[R2] = R[R1] + INP1   
		"1101"&"00000"&"0000", --16 SUBI1 I-Type R[R2] = R[R1] - INP1   
		"0000"&"11001"&"0000", --17 SUBI1 I-Type R[R2] = R[R1] - INP1   
		"0000"&"00000"&"0001", --18 SUBI1 I-Type R[R2] = R[R1] - INP1   
		"1101"&"00000"&"0000", --19 ANDI1 I-Type R[R2] = R[R1] AND INP1 
		"0000"&"11010"&"0000", --20 ANDI1 I-Type R[R2] = R[R1] AND INP1 
		"0000"&"00000"&"0001", --21 ANDI1 I-Type R[R2] = R[R1] AND INP1 
		"1101"&"00000"&"0000", --22 ORI1 I-Type  R[R2] = R[R1] OR INP1  
		"0000"&"11011"&"0000", --23 ORI1 I-Type  R[R2] = R[R1] OR INP1       
		"0000"&"00000"&"0001", --24 ORI1 I-Type  R[R2] = R[R1] OR INP1  
		"1010"&"000000000", --25 ADDI2 I-Type R[R2] = R[R1] + INP2)     
		"0000"&"000100000", --26 ADDI2 I-Type R[R2] = R[R1] + INP2)     
		"0000"&"000000101", --27 ADDI2 I-Type R[R2] = R[R1] + INP2)     
		"1010"&"000000000", --28 SUBI2 I-Type R[R2] = R[R1] - INP2      
		"0000"&"001100000", --29 SUBI2 I-Type R[R2] = R[R1] - INP2      
		"0000"&"000000101", --30 SUBI2 I-Type R[R2] = R[R1] - INP2      
		"1010"&"000000000", --31 ANDI2 I-Type R[R2] = R[R1] AND INP2    
		"0000"&"010100000", --32 ANDI2 I-Type R[R2] = R[R1] AND INP2    
		"0000"&"000000101", --33 ANDI2 I-Type R[R2] = R[R1] AND INP2    
		"1010"&"000000000", --34 ORI2 I-Type  R[R2] = R[R1] OR INP2     
		"0000"&"011100000", --35 ORI2 I-Type  R[R2] = R[R1] OR INP2     
		"0000"&"000000101", --36 ORI2 I-Type  R[R2] = R[R1] OR INP2     


	--__________________________  to continue___________________________ 

		"1010"&"000000000", --37 MOV I-Type   R[R2] = R[R1]           
		"0000"&"000100000", --38 MOV I-Type   R[R2] = R[R1]           
		"0000"&"000000101", --39 MOV I-Type   R[R2] = R[R1]  

	    "0111"&"000000000", --40 S_REG1 I-Type op: R[RD] <= INP1  Save the value INP1 in the register file, R1 field is    
		"0000"&"100100000", --41 S_REG1 I-Type op: R[RD] <= INP1  Save the value INP1 in the register file, R1 field is    
		"0000"&"000000001", --42 S_REG1 I-Type op: R[RD] <= INP1  Save the value INP1 in the register file, R1 field is    
	    "1010"&"000000000", --43 S_REG2 I-Type op: R[RD] <= INP2  Save the value INP2 in the register file, R1 field is	
		"0000"&"000100000", --44 S_REG2 I-Type op: R[RD] <= INP2  Save the value INP2 in the register file, R1 field is	
		"0000"&"000000001", --45 S_REG2 I-Type op: R[RD] <= INP2  Save the value INP2 in the register file, R1 field is
     
		"1110"&"000000000", --46 S_MEM2 I-Type op: MEM[R[R1]+INP2] = R[R2] The content of the register R2 issaved in a memory cell, which address is calculated adding the content of the register R1 to the value INP2;	
		"0000"&"000100000", --47 S_MEM2 I-Type op: MEM[R[R1]+INP2] = R[R2] The content of the register R2 issaved in a memory cell, which address is calculated adding the content of the register R1 to the value INP2;	
		"0000"&"000001100", --48 S_MEM2 I-Type op: MEM[R[R1]+INP2] = R[R2] The content of the register R2 issaved in a memory cell, which address is calculated adding the content of the register R1 to the value INP2;	
	    "1111"&"000000000", --49 L_MEM1 I-Type op: R[R2] = MEM[R[R1]+INP1] The content of the memory cell,which address is calculated adding the content of the register R1 to the value INP1, is saved in theregister R2;	
		"0000"&"100110000", --50 L_MEM1 I-Type op: R[R2] = MEM[R[R1]+INP1] The content of the memory cell,which address is calculated adding the content of the register R1 to the value INP1, is saved in theregister R2;	
		"0000"&"000000111", --51 L_MEM1 I-Type op: R[R2] = MEM[R[R1]+INP1] The content of the memory cell,which address is calculated adding the content of the register R1 to the value INP1, is saved in theregister R2;	
	    "1110"&"000000000", --52  L_MEM2 I-Type op: R[R2] = MEM[R[R1]+INP2]  
		"0000"&"000110000", --53  L_MEM2 I-Type op: R[R2] = MEM[R[R1]+INP2]  
		"0000"&"000000111", --54  L_MEM2 I-Type op: R[R2] = MEM[R[R1]+INP2]  

		"0000"&"000000000", --55 NOP stall efect 
		"0000"&"100000000", --56 NOP stall efect 
		"0000"&"000000010" --57 NOP stall efect

	);

  signal ctrl_w_s : std_logic_vector(CW_SIZE - 1 downto 0);

  signal uPC : integer range 0 to 131072;
  signal ICount : integer range 0 to INSTRUCTIONS_EXECUTION_CYCLES;
  signal OP_CODE : std_logic_vector(OP_CODE_SIZE -1 downto 0);
                                                        
  signal func : std_logic_vector(FUNC_SIZE - 1 downto 0);
  
  
  

begin  -- dlx_cu_rtl

	ctrl_w_s <= microcode(uPC);

	EN1 <= ctrl_w_s(CW_SIZE-1);
	RF1 <= ctrl_w_s(CW_SIZE-2);	
	RF2 <= ctrl_w_s(CW_SIZE-3);
	WF1 <= ctrl_w_s (cW_SIZE-4);
	EN2 <= ctrl_w_S(CW_SIZE-5);
	S1 <= ctrl_w_s(CW_SIZE-6);
	S2 <= ctrl_w_s(CW_SIZE-7);
	ALU_1    <=    ctrl_w_s(CW_SIZE-8)   ;          
	ALU_2    <=    ctrl_w_s(CW_SIZE-9);
	EN3 <= ctrl_w_s(CW_SIZE-10);
	RM <= ctrl_w_s(CW_SIZE-11);
	WM <= ctrl_w_S(CW_SIZE-12);
	S3 <= ctrl_w_S(CW_SIZE-13);

	OP_CODE <= IR_IN(IR_SIZE -1 downto 26);
	func <= IR_IN(IR_SIZE-22 downto 0);

	-- purpose: Update the uPC value depending on the instruction Op Code
	-- type   : sequential
	-- inputs : Clk, Rst, IR_IN
	-- outputs: uPs
	uPC_Proc: process (Clk, Rst)
	begin  -- process uPC_Proc
		if Rst = '0' then                   -- asynchronous reset (active low)
			uPC <= 0;
			ICount <= 0;
		elsif rising_edge(Clk) then  -- rising clock edge
			--if (ICount < 1) then
			--	uPC <= 1;
			--	ICount <= ICount + 1;
			if (ICount < 1) then
				ICount <= ICount + 1;
				if OP_CODE = RTYPE then		--choose different option
					if func = RTYPE_ADD then
						uPC <= 1;
					elsif func = RTYPE_SUB then
						uPC <= 4;
					elsif func = RTYPE_AND then
						uPC <= 7;
					elsif func = RTYPE_OR then
						uPC <= 10;
					else
						uPC <= 0;
					end if;
				elsif OP_CODE = ITYPE_ADDI1 then
					uPC <= 13;
				elsif OP_CODE = ITYPE_SUBI1 then
					uPC <= 16;
				elsif OP_CODE = ITYPE_ANDI1 then
					uPC <= 19;
				elsif OP_CODE = ITYPE_ORI1  then
					uPC <= 22;
				elsif OP_CODE = ITYPE_ADDI2 then
					uPC <= 25;
				elsif OP_CODE = ITYPE_SUBI2 then
					uPC <= 28;
				elsif OP_CODE = ITYPE_ANDI2 then
					uPC <= 31;
				elsif OP_CODE = ITYPE_ORI2  then
					uPC <= 34;
				elsif OP_CODE = ITYPE_MOV   then
					uPC <= 37;
				elsif OP_CODE = ITYPE_S_REG1 then
					uPC <= 40;
				elsif OP_CODE = ITYPE_S_REG2 then
					uPC <= 43;
				elsif OP_CODE = ITYPE_S_MEM2 then
					uPC <= 46;
				elsif OP_CODE = ITYPE_L_MEM1 then
					uPC <= 49;
				elsif OP_CODE = ITYPE_L_MEM2 then
					uPC <= 52;
				else 
					uPC <= 0;
					ICount <= 0;	--must set Icount in order to avoid going to next step
				end if;
			elsif (ICount < INSTRUCTIONS_EXECUTION_CYCLES) then
				upc <= upc + 1;
				if (ICount = INSTRUCTIONS_EXECUTION_CYCLES-1) then
					ICount <= 0;
				else
					ICount <= ICount + 1;
				end if;
			else
				ICount <= 0;
				uPC <= 0;
			end if;
      
		end if;
  end process uPC_Proc;
end dlx_cu_rtl;


configuration CFG_dlx_cu_behavior of dlx_cu is 
	for dlx_cu_rtl
	end for;
end configuration;