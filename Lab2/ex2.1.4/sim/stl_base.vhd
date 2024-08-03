--parametric sparse tree look-ahead adder 
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;
use WORK.constants.all;
use work.high_math.all;

entity CARRY_GENERATOR is 

   GENERIC(
		NBIT : integer := ALL_BITS;
		NBIT_PER_BLOCK: integer := N_subdiv
	);
	
	Port (
		A:	In	std_logic_vector(NBIT-1 downto 0);
		B:	In	std_logic_vector(NBIT-1  downto 0);
		Cin:	In	std_logic;
		Co:	Out	std_logic_vector(NBIT/NBIT_PER_BLOCK downto 0)
	);
end CARRY_GENERATOR; 


architecture STRUCTURAL of CARRY_GENERATOR is

 
 ---------------- FIRST adder of basic adder---------------------------
  component f_add  
	Port (	
	    f_a:	In	std_logic;  --variable of upper block left
		f_b:	In	std_logic;  --variable of upper block reight
		G:	Out	std_logic;  --output of first
		P:	Out	std_logic  --output of second
		);
	
  end component; 
  
  ----------------END FIRST adder of basic adder------------------------
  
 
 
 
---------------------- g adder ----------------------------------------- 
  component g 
	Port (	
	    Ga:	In	std_logic;
		Gb:	In	std_logic;
		P:	In	std_logic;
		G_out:	Out	std_logic
		);
  end component; 
  
 ---------------END g --------------------------------- 
  
  
  
 
 ---------------------- pg adder ----------------------------------------  
  component pg 

	Port (	
	    Ga:	In	std_logic;  --variable of upper block left
		Gb:	In	std_logic;  --variable of upper block reight
		P1:	In	std_logic;  -- immediate vicinance ci
		P2:	In	std_logic; --shifted of two curry
		G_out:	Out	std_logic;  --output of first
		P_out:	Out	std_logic  --output of second
		);
  end component; 
  
 ---------------END g adderbasic adder--------------------------------- 
 type SignalVector is array(NBIT downto 1) of std_logic_vector(NBIT downto 1);
 signal P_1 : std_logic_vector(NBIT downto 1);
 signal G_1 : std_logic_vector(NBIT downto 1);
 signal C_G : SignalVector;
 signal C_P : SignalVector;
 constant layers : integer := log2(NBIT);
 
 begin
	--step1 get pg net work
	R0: for i in 0 to NBIT-1  generate
         R0_0: f_add Port Map ( f_a=> A(i),f_b => B(i) , G =>C_G(i+1)(i+1), P =>C_P(i+1)(i+1));
    end generate R0;
	Co(0) <= Cin;
	
		R1: for i in 1 to layers generate
			R2: for j in 1 to NBIT generate
				-- get G block
				IFG: if ((j mod 2**i = 0 or j mod NBIT_PER_BLOCK = 0) and j> 2**(i-1) and j <= 2**i) generate
					G_B: g 
						Port Map(
							Ga => C_G(j)(2**(i-1)+1),
							Gb => C_G(2**(i-1))(1),
							P  => C_P(j)(2**(i-1)+1),						
							G_out => C_G(j)(1)
							
						);
					res1: if j mod NBIT_PER_BLOCK = 0 generate
						Co(j/NBIT_PER_BLOCK) <= C_G(j)(1);
					end generate res1;
				end generate IFG;
				IFP0: if j/2**i >= 1 and j mod 2**i > 0 and ((j - 2**i) > 2**(i-1)) and j < 2**(i+1)and (j mod NBIT_PER_BLOCK = 0)generate
					PG_B0: pg
						Port Map(
							Ga => C_G(j)((j/2**(i-1))*2**(i-1)+1),
							Gb => C_G((j/2**(i-1))*2**(i-1))((j/2**(i-1))*2**(i-1)-2**(i-1)+1),
							P1 => C_P(j)((j/2**(i-1))*2**(i-1)+1),
							P2 => C_P((j/2**(i-1))*2**(i-1))((j/2**(i-1))*2**(i-1)-2**(i-1)+1),
							G_out => C_G(j)((j/2**(i-1))*2**(i-1)-2**(i-1)+1),
							P_out => C_P(j)((j/2**(i-1))*2**(i-1)-2**(i-1)+1)
						);
				end generate IFP0;
				ifP1: if j/2**i > 1 and j mod 2**i =0 generate
					PG_B1:pg
						Port Map(
							Ga => C_G(j)(j-2**(i-1)+1),
							Gb => C_G(j-2**(i-1))(j-2**i+1),
							P1 => C_P(j)(j-2**(i-1)+1),
							P2 => C_P(j-2**(i-1))(j-2**i+1),
							G_out => C_G(j)(j-2**i+1),
							P_out => C_P(j)(j-2**i+1)
						);
				end generate IFP1;
			end generate R2;
		end generate R1;
end STRUCTURAL;


configuration CFG_CARRY_GENERATOR_STRUCTURAL of CARRY_GENERATOR is
  for STRUCTURAL
	for R0
		for all : f_add
			use configuration WORK.CFG_F_ADD_STRUCTURAL;
		end for;
	end for;
	for R1
		for R2 
			for IFG
				for all : g
					use configuration WORK.CFG_G_BHE;
				end for;
			end for;
			for IFP0
				for all : pg
					use configuration WORK.CFG_PG_BHE;
				end for;
			end for;
			for IFP1
				for all : pg
					use configuration WORK.CFG_PG_BHE;
				end for;
			end for;
		end for;
	end for;
  end for;
end CFG_CARRY_GENERATOR_STRUCTURAL;




