library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use WORK.constants.all;

entity MULTIPLIER_tb is
end MULTIPLIER_tb;


architecture TEST of MULTIPLIER_tb is

  constant numBit : integer :=8; --:= 4;    -- :=8  --:=16    

  --  input	 
  signal A_mp_i : std_logic_vector(numBit-1 downto 0) := (others => '0');
  signal B_mp_i : std_logic_vector(numBit-1 downto 0) := (others => '0');

  -- output
  signal Y_mp_i : std_logic_vector(2*numBit-1 downto 0);
  
  
  component BOOTMUL
		generic (
			A_BIT  : integer:=numBit;
			B_BIT: integer := numBit
		);
		port ( 
			A : in std_logic_vector (A_BIT-1 downto 0);
			B: in std_logic_vector (B_BIT-1 downto 0);
         
			Y   : out std_logic_vector (2*numBit-1 downto 0)
        );
   end component;

  --signal A: std_logic_vector (A_BIT-1 downto 0);
  --signal B: std_logic_vector (B_BIT-1 downto 0);
  --signal mux_out: std_logic_vector(((A_BIT+B_BIT)*(B_BIT/2))-1 downto 0);
  --signal Y: std_logic_vector ((A_BIT+B_BIT)-1 downto 0) ;

begin

	uut: BOOTMUL 
		generic map ( 
			A_BIT   => numBit,
            B_BIT   => numBit 
		)
        port map ( 
			A => A_mp_i,
			B => B_mp_i,
            Y => Y_mp_i 
		);
		
  -- PROCESS FOR TESTING TEST - COMLETE CYCLE ---------
  test: process
  begin

    -- cycle for operand A
    NumROW : for i in 0 to 2**(numBit)-1 loop
	
		
        -- cycle for operand B
    	NumCOL : for i in 0 to 2**(numBit)-1 loop
			B_mp_i <= B_mp_i + '1';
			wait for 5 ns;
		
		end loop NumCOL ;
		A_mp_i <= A_mp_i + '1';
	end loop NumROW ;
	
    wait;          
	end process test;


end;