library ieee; 
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use WORK.constants.all;

entity tb_sg is 
end tb_sg; 

architecture TEST of tb_sg is


	component sum_gen is
		generic (
			NBIT_PER_BLOCK: integer := N_BIT;
			NBLOCKS:	integer := N_Block);
		port (
			A_sg:	in	std_logic_vector(N_BIT*N_BLOCK-1 downto 0);
			B_sg:	in	std_logic_vector(N_BIT*N_BLOCK-1 downto 0);
			Ci_sg:	in	std_logic_vector(N_BLOCK-1 downto 0);
			S_sg:	out	std_logic_vector(N_BIT*N_BLOCK-1 downto 0));
	end component;
	
	
		signal  A_sg:		std_logic_vector(N_BIT*N_BLOCK-1 downto 0);
		signal	B_sg:		std_logic_vector(N_BIT*N_BLOCK-1 downto 0);
		signal	Ci_sg:		std_logic_vector(N_BLOCK-1 downto 0);
		signal	So_sg:		std_logic_vector(N_BIT*N_BLOCK-1 downto 0);
	
	


begin
	
	 uut: entity work.sum_gen(Sgen)
           generic map (
                        NBIT_PER_BLOCK => N_BIT,
		            	NBLOCKS	=> N_Block  )
           port map ( A_sg  => A_sg,
                      B_sg  => B_sg,
                      Ci_sg => Ci_sg,
                      S_sg => So_sg );



  stimulus: process
  begin
  
     wait for 1 ps; 
    A_sg <= "0000000000000000";
    B_sg <= "0000000000000000";
    Ci_sg <= "1111";
     
     wait for 1 ps; 
    A_sg <= "0000000000000000";
    B_sg <= "0001000001000000";
    Ci_sg <= "1101";
     
     wait for 1 ps; 
    A_sg <= "1000000000000000";
    B_sg <= "0000000100000100";
    Ci_sg <= "0000";
     
     
     
     
    wait for 5 ns; 
    wait;

    wait;
  end process;
	

end TEST;


