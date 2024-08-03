library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;
use work.constants.all;
use work.PK_ARR.all;

entity register_file_tb is
end;


architecture bench of register_file_tb is

component register_file
  
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
       Add_R_in:  in   RegF_add_read  ( 0 to RF_num_Read_port-1) 
   
        );
   


end component;


constant RF_word_bit      : integer  := word_bit    ; -- word_bit 
constant RF_num_reg       : integer  := num_reg    ; --number of register in the line
constant RF_num_Read_port : integer  := num_Read_port    ; --number of read
constant RF_num_write_port: integer  := num_write_port   ;--number of write

  signal CLK: std_logic;
  signal RF_RESET: std_logic;
  signal RF_en: std_logic;
  signal RF_RD_en: std_logic_vector( RF_num_Read_port-1 downto 0);
  signal RF_WR_en: std_logic_vector( RF_num_write_port-1 downto 0);
  signal wr_in: RegF_write_in ( 0 to RF_num_write_port-1);
  signal re_in: RegF_read_out ( RF_num_Read_port-1 downto 0 );
 

  signal Add_R_in: RegF_add_read ( 0 to RF_num_Read_port-1) ;
  signal Add_w_in: RegF_add_write (0 to RF_num_write_port-1);
  constant clock_period: time := 1 ns;
  signal stop_the_clock: boolean  ;



  
  --showcast



begin

  -- Insert values for generic parameters !!
  uut: register_file generic map ( RF_word_bit       => RF_word_bit  ,
                                   RF_num_reg        => RF_num_reg  ,
                                   RF_num_Read_port  => RF_num_Read_port ,
                               RF_num_write_port => RF_num_write_port)
                        port map ( CLK            => CLK,
                                   RF_RESET          => RF_RESET,
                                   RF_en             => RF_en,
                                   RF_RD_en          => RF_RD_en,
                                   RF_WR_en          => RF_WR_en,
                                   wr_in             => wr_in,
                                   Add_w_in          => Add_w_in,
                                   re_in             => re_in,
                                   Add_R_in          => Add_R_in );


  stimulus: process
  begin
   
  wait for 2 ns;
  RF_RESET <= '1';
  RF_en <= '0';
  wait for 1 ns;
  RF_RESET <= '0';
  RF_en <= '1';
  RF_WR_en <= "01";
  -- dati damettere sono per write
  Add_w_in(1) <= "0010"   ;
  Add_w_in(0) <= "0110"  ;
  wait for 1 ns;
  wr_in(0) <= "100101"; 
  --implement reeeadmiss
  wait for 1 ns;
  RF_RD_en <= "111";
  wait for 1 ns;
  Add_r_in(1) <= "0010" ;
  Add_r_in(0) <= "0110"  ;
  wr_in(0) <= "110101"; 
 wait for 1 ns;
 RF_en <= '0';
 wait for 1 ns;
 RF_en <= '1';
 wait for 1 ns;


 wait for 1 ns;







   stop_the_clock <= true;
    wait;
  end process;

  clocking: process
  begin
    while not stop_the_clock loop
      CLK <= '0', '1' after clock_period / 2;
      wait for clock_period;
    end loop;
    wait;
  end process;

end;



