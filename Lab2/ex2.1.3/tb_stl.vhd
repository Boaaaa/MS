library ieee; 
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use WORK.constants.all;

entity tb_stl is 
end tb_stl; 

architecture TEST of tb_stl is






	component sum_gen is
   GENERIC(
		NBIT : integer := 32
	            );
	
	Port (
		A:	In	std_logic_vector(NBIT downto 1);
		B:	In	std_logic_vector(NBIT  downto 1);
		Ci:	In	std_logic;
		
		C_o:	Out	std_logic_vector(8 downto 1));
	end component;
	
	
	  
       signal         A_s:		std_logic_vector(N_BIT downto 1);
       signal	      B_s:		std_logic_vector(N_BIT  downto 1);
	   signal	     Ci_s:	  	std_logic;
       signal	    C_o_s:	   	std_logic_vector( 8 downto 1);
	   
	


begin
	
	 uut: entity work.stl(STRUCTURAL)
           generic map (
                        NBIT => 32
		            	 )
           port map ( A  => A_s,
                      B  => B_s,
                      Ci=> Ci_s,
                      C_o => C_o_s );



  stimulus: process
  begin
  
     wait for 3 ns; 
    A_s <= "00000000000000000000000000000000";
    B_s <= "00000000000000000000000000000000";
    Ci_s <= '0';
     wait for 3 ns; 
    A_s <= "10001000100010001000100010001000";
    B_s <= "10000010100000001001000010000000";
    Ci_s <= '1';
     
    
     
     
     
    wait for 5 ns; 
    wait;

    wait;
  end process;
	

end TEST;


