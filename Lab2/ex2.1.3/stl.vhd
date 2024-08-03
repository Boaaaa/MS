--parametric sparse tree look-ahead adder 
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;
use WORK.constants.all;

entity stl is 

   GENERIC(
		NBIT : integer := 32 
	            );
	
	Port (
		A:	In	std_logic_vector(NBIT-1 downto 0);
		B:	In	std_logic_vector(NBIT-1  downto 0);
		Ci:	In	std_logic;
		
		C_o:	Out	std_logic_vector( 8 downto 0));
end stl; 





architecture STRUCTURAL of stl is

  
 
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




   signal zer_P: std_logic_vector(NBIT-1  downto 0);--|temporary zero element
   signal zer_G: std_logic_vector(NBIT-1  downto 0);--|
   
   
   
   signal one_G: std_logic_vector((NBIT/2)-1  downto 0);--|temporary first element
   signal one_P: std_logic_vector((NBIT/2)-1  downto 0);--|temporary first element
   
   
   signal sec_G: std_logic_vector((NBIT/4)-1  downto 0);--|temporary sec element
   signal sec_P: std_logic_vector((NBIT/4)-1  downto 0);--|temporary sec element
   
   signal ter_G: std_logic_vector(3  downto 0);--|temporary ter element
   signal ter_P: std_logic_vector( 3 downto 0);--|temporary ter element
   
   signal quad_G: std_logic_vector (3  downto 0);--|temporary quad element
   signal quad_P: std_logic_vector(3  downto 0);--|temporary quad element
   
   
   signal fifth_G: std_logic_vector(3  downto 0);--|temporary fifth element
   
   
   signal c_outs: std_logic_vector(N_subdiv-1  downto 0);--TEMPORARY RESULT OF carry
   
 --	f_add  : entity work.f_add(bhe) Port Map ( f_a=> ,f_b => , G => , P =>);
--	    g  : entity work.g(bhe) Port Map  ( Ga=> , Gb => , P => ,G_out => );
--	    pg : entity work.pg(bhe) Port Map ( Ga=> , Gb => , P1 => ,P2 =>,G_out=>,P_out=> );  
   
   


begin
--riga 00
   R0:  for i in 0 to N_BIT-1  generate
         R0_0: entity work.f_add(bhe) Port Map ( f_a=> A(I),f_b => B(I) , G =>zer_G(i), P =>zer_P(i));
        end generate R0;
 
 
 
 
--riga 1
   G1 : entity work.g(bhe)  Port Map ( Ga=>zer_G(1) , Gb =>zer_G(0) , P =>Ci , G_out=>one_G(0) );
      PG1:  for i in 1 to 15  generate
      
         PG0_0: entity work.pg(bhe) Port Map ( Ga=>zer_G(2*i+1) , Gb =>zer_G(2*i) , P1 =>zer_P(2*i+1) ,P2 =>zer_P(2*i),G_out=>one_G(i),P_out=>one_P(i) );
         
       end generate PG1;
          one_P(0) <= '0';


--riga 2
   G2 : entity work.g(bhe)  Port Map ( Ga=>one_G(1) , Gb =>one_G(0) , P =>one_G(0) , G_out=>sec_G(0) );
      PG2:  for i in 1 to 7 generate
         PG0_0: entity work.pg(bhe) Port Map ( Ga=> one_G(2*i+1) , Gb =>one_G(2*i) , P1 =>one_P(2*i+1) ,P2 =>one_P(2*i),G_out=>sec_G(i),P_out=>sec_P(i) );
          
       end generate PG2;
     
         sec_P(0) <= '0';
 
--riga 3
   G3 : entity work.g(bhe)  Port Map ( Ga=>sec_G(1) , Gb =>sec_G(0) , P =>sec_G(0) , G_out=> ter_G(0) );
      PG3:  for i in 1 to 3  generate
      PG0_0: entity work.pg(bhe) Port Map ( Ga=>sec_G(2*i+1) , Gb =>sec_G(2*i) , P1 =>sec_P(2*i+1) ,P2 =>sec_P(2*i),G_out=>ter_G(i),P_out=>ter_P(i) );
         
      end generate PG3;      
          ter_P(0) <= '0';

 -----------------------------------------------up here logical correct--------------------------------- 


        
--riga 4
  
   G40 : entity work.g(bhe)  Port Map ( Ga=>sec_G(2) , Gb =>ter_G(0) , P =>ter_P(2) , G_out=>quad_G(0) );
   G41 : entity work.g(bhe)  Port Map ( Ga=>ter_G(1) , Gb =>ter_G(0) , P =>ter_P(1) , G_out=>quad_G(1) );
   

   PG42 : entity work.pg(bhe)  Port Map ( Ga=>sec_G(6) , Gb =>ter_G(2) , P1 =>sec_P(6) ,P2 =>ter_P(2),G_out=>quad_G(2),P_out=>quad_P(2) );
   PG43 : entity work.pg(bhe)  Port Map ( Ga=>ter_G(3) , Gb =>ter_G(2) , P1 =>ter_P(3) ,P2 =>ter_P(2),G_out=>quad_G(3),P_out=>quad_P(3) );
   
 --riga 5     
        
  G50 : entity work.g(bhe)  Port Map ( Ga=>sec_G(4) , Gb =>quad_G(1) , P =>sec_P(4) , G_out=>fifth_G(0) );
  G51 : entity work.g(bhe)  Port Map ( Ga=>ter_G(3) , Gb =>quad_G(1) , P =>ter_P(3) , G_out=>fifth_G(1) );
  
  G52 : entity work.g(bhe)  Port Map ( Ga=>quad_G(2), Gb =>quad_G(1) , P =>quad_P(2) , G_out=>fifth_G(2) );
  G53 : entity work.g(bhe)  Port Map ( Ga=>quad_G(3), Gb =>quad_G(1) , P =>quad_P(3) , G_out=>fifth_G(3) );
  
   --CURRY SET UP
        
       c_o(0) <=  ci;               --0
       
       c_o(1) <=  sec_G(0);         --4
       
       c_o(2) <=  ter_G(0);        --8
       c_o(3) <=  quad_G(0);        --12
       c_o(4) <=  quad_G(1);        --16
       
       
       c_o(5) <=  quad_G(0);        --20
       
       c_o(6) <=  fifth_G(1);        --24
       c_o(7) <=  fifth_G(2);        --28
       c_o(8) <=  fifth_G(3);        --32
  
      
        
 

      
      
      
 
  
end STRUCTURAL;






