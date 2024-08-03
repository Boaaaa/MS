
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use WORK.constants.all;



------------------------------------------------------------------------------------
                                   -- mux_outs--
------------------------------------------------------------------------------------
entity BOOTMUL is
    generic (
        A_BIT  : integer:=A_BIT;
        B_BIT: integer := B_BIT
                );
    
     port ( 
       A : in std_logic_vector (A_BIT-1 downto 0);
       B: in std_logic_vector (B_BIT-1 downto 0);
      
       Y   : out std_logic_vector ((A_BIT+B_BIT)-1 downto 0)
        );

 End BOOTMUL;

architecture Beh of BOOTMUL is

component mux_bl
 generic (
    A_BIT  : integer:=A_BIT;
    B_BIT: integer := B_BIT;
    S_sel:integer
      );

 port ( 
   A : in std_logic_vector (A_BIT-1 downto 0);
   sel : in std_logic_vector (2 downto 0);
   Y   : out std_logic_vector ((A_BIT+B_BIT)-1 downto 0)
    );
        
 end component;

component adder 
  GENERIC( add_NBIT : integer );
      
   port (
          A   : in  std_logic_vector(add_NBIT-1 downto 0);
          B   : in  std_logic_vector(add_NBIT-1 downto 0);
          Y   : out std_logic_vector(add_NBIT-1 downto 0)
          );
  
          end component;


--signals

 signal Tmp_B: std_logic_vector(B_BIT downto 0) ;

 signal mux_out:  std_logic_vector(((A_BIT+B_BIT)*(B_BIT/2))-1 downto 0) ;
 signal  Y_temp_adder   :  std_logic_vector ((A_BIT+B_BIT)-1 downto 0);
 --signal  adder_mid_out   :  std_logic_vector ((A_BIT+B_BIT)-1 downto 0);
 signal  adder_mid_out   :  std_logic_vector ((A_BIT+B_BIT)*(B_BIT/2-1)-1 downto 0);
 

begin

Tmp_B <= B & '0';


 
MUX:   for I in 0 to ((B_BIT/2)-1) generate

       MUX :entity work.mux_bl(Beh)
        GENERIC map ( A_BIT  =>A_BIT ,  B_BIT  => B_BIT,   S_sel  => I)

       Port map (	
           A  => A ,
           SEL	=> Tmp_B( 2*I+2 downto 2*I),
           Y => mux_out ( I*(A_BIT+B_BIT) + (A_BIT+B_BIT) -1 downto   I*(A_BIT+B_BIT))
        );
  
    end generate mux;

--add0

ADDER0: entity work.adder(Beh)
    GENERIC map(add_NBIT => (A_BIT+B_BIT))
    Port map (	
			A  => mux_out ((A_BIT+B_BIT) -1 downto  0),
			B  => mux_out (2*(A_BIT+B_BIT) -1 downto (A_BIT+B_BIT)),
			Y	=> adder_mid_out((A_BIT+B_BIT) -1 downto  0)
		);  

addi :   for I in 1 to ((B_BIT/2)-2) generate
  
    ADDER: entity work.adder(Beh)
    GENERIC map(add_NBIT => (A_BIT+B_BIT))
    Port map (
			A  	=> mux_out ( (I+2)*(A_BIT+B_BIT) -1 downto   (I+1)*(A_BIT+B_BIT) ),
			B  	=> adder_mid_out(I*(A_BIT+B_BIT) -1 downto  (I-1)*(A_BIT+B_BIT)),
			Y	=> adder_mid_out((I+1)*(A_BIT+B_BIT) -1 downto  I*(A_BIT+B_BIT))
		);
   
    end generate addi;          
	
    Y <= adder_mid_out((B_BIT/2-1)*(A_BIT + B_BIT)-1 downto (B_BIT/2-2)*(A_BIT + B_BIT));     
End Beh ; 


  