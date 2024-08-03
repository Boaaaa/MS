------------------------------------------------------------------------------------
                              -- RF MAIN--
------------------------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.constants.all;
use work.PK_ARR.all;

entity register_file is
 generic (  RF_word_bit      : integer     ; -- word_bit 
            RF_num_reg       : integer     ; --number of register in the line
			RF_num_Read_port : integer     ; --number of read
			RF_num_write_port: integer      --number of write
          );

 port (   
	 
        --control signal
	    clk: 		    IN std_logic;
        RF_RESET:    	IN std_logic;
		RF_en:          IN std_logic;
        
		--enable specific element of port
		RF_RD_en: 	IN std_logic_vector( RF_num_Read_port-1  downto 0); --signal to activate the data on read ennesimo
		RF_WR_en: 	IN std_logic_vector( RF_num_write_port-1 downto 0);

		--write inside reg
		wr_in:     in  RegF_write_in ( 0 to RF_num_write_port-1)   ;   --to import register from cpu
		Add_w_in:  in  RegF_add_write (0 to RF_num_write_port-1) ;   -- adress to be write the wr in
        
		--read from register
		re_in   :  buffer  RegF_read_out  ( RF_num_Read_port-1 downto 0 )  ;
		Add_R_in:  in      RegF_add_read     ( 0 to RF_num_Read_port-1) 

	   );

end register_file;






architecture A of register_file is

--definition of RF
 subtype REG_ADDR is natural range 0 to num_reg ; -- using natural type
 type REG_ARRAY is array(REG_ADDR) of std_logic_vector(RF_word_bit-1 downto 0); 
 signal REGISTERS : REG_ARRAY; 
--

  signal re_ii   :  RegF_read_out  ( RF_num_Read_port-1 downto 0 )  ;
  signal Data_R_1 : std_logic_vector(word_bit -1 downto 0);
  signal Data_R_2 : std_logic_vector(word_bit -1 downto 0);
  signal Data_R_3 : std_logic_vector(word_bit -1 downto 0);
begin

	process(CLK,RF_en) begin
	
if rising_edge(CLK) then
			if RF_RESET = '1' then
    			REGISTERS <= (others => (others => '0'));
		    end if;


		if RF_en = '1' then

		
          --##  write block   ##--------------------
          for I in 0 to num_write_port-1  loop
		   if (RF_WR_en( I) = '1') then
	        REGISTERS(to_integer(unsigned(Add_w_in(i)))) <= wr_in(i) ;
		    end if;
          End loop;
     	
          ---## end write block   ##-------------------



        ---##  Read block   ##--------------------
        for I in 0 to num_Read_port-1  loop
        
	    if (RF_RD_en(I) = '1')  then
		Re_in (i) <= REGISTERS(to_integer(unsigned(Add_R_in(i))));
		
		else
		Re_in (i) <= (others => 'Z');

	    end if;
         

        End loop;
  	 
        ---## end Read block   ##--------------------

   else
   re_in <= (others => (others => 'Z'))	   ;
   end if;
end if;	

  Data_R_1 <=  re_in(0);
  Data_R_2 <=  re_in(1);
  Data_R_3 <=  re_in(2);
        
	end process;
end A;

