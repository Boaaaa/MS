
------------------------------------------------------------------------------------
                                   -- MUX --
------------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use WORK.constants.all;

entity mux_bl is
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

 End mux_bl;

architecture Beh of mux_bl is

component sll_block
 generic (
    A_BIT  : integer:=A_BIT;
    B_BIT: integer := B_BIT;
    S_sel:integer
     );

 port ( 
 A_mp_i : in std_logic_vector (A_BIT-1 downto 0);
 Y_mp_i : out std_logic_vector(4*(B_BIT+A_BIT)-1  downto 0)
    );
        
 end component;


component mux
  
 GENERIC(   F_NBIT: integer     );
      
 Port (	
     
       A:   	In	std_logic_vector(F_NBIT-1 downto 0) ;
      NA:   	In	std_logic_vector(F_NBIT-1 downto 0) ;
     AA:	    In	std_logic_vector(F_NBIT-1  downto 0);
     NAA:	In	std_logic_vector(F_NBIT-1  downto 0);
     SEL:	In	std_logic_vector (2 downto 0);
     Y:	Out	std_logic_vector(F_NBIT-1  downto 0)
 );


 end component;
--signals


signal Tmp_Y: std_logic_vector(4*(B_BIT+A_BIT)-1 downto 0) ;


begin
sllo: sll_block generic map ( A_BIT  =>A_BIT ,  B_BIT  => B_BIT,   S_sel  => S_sel)
port map ( A_mp_i => A ,  Y_mp_i => Tmp_Y );
muxo: mux
GENERIC map(   F_NBIT => B_BIT+A_BIT  )
 
Port map (	A  => Tmp_Y( A_BIT+B_BIT-1 downto 0) ,
           NA  =>Tmp_Y(3*(A_BIT+B_BIT)-1 downto 2*(A_BIT+B_BIT)) ,
           AA  =>Tmp_Y(2*(A_BIT+B_BIT)-1 downto (A_BIT+B_BIT) ) ,
           NAA	=>Tmp_Y(4*(A_BIT+B_BIT)-1 downto 3*(A_BIT+B_BIT)) ,
           SEL	=> sel,
           Y	=> Y  );
            
End Beh ; 




















------------------------------------------------------------------------------------
                                   -- slide --
------------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use WORK.constants.all;

entity sll_block is
    generic (
        A_BIT  : integer:=A_BIT;
        B_BIT: integer := B_BIT;
        S_sel:integer
         );

    port ( 
     A_mp_i : in std_logic_vector (A_BIT-1 downto 0);
     Y_mp_i : out std_logic_vector(4*(B_BIT+A_BIT)-1  downto 0)
        );
    End sll_block;


architecture Beh of sll_block is

component shift_register
          GENERIC( 
              NBIT : integer := A_BIT ;
              F_NBIT : integer :=(B_BIT+A_BIT) ;
              sll_bit: integer );
            
         port (
                A   : in  std_logic_vector(NBIT-1 downto 0);
                Y   : out std_logic_vector( F_NBIT-1 downto 0)
                );
        
        end component;



component Neg_cmpl
 GENERIC( end_NBIT : integer );
     
 port (
       A   : in  std_logic_vector(end_NBIT-1 downto 0);
       Y   : out std_logic_vector(end_NBIT-1 downto 0)
       );

        
        end component;

--ok

signal Tem_sll      :   std_logic_vector(2*(B_BIT+A_BIT)-1  downto 0);
signal Tem_sll_neg      :   std_logic_vector(2*(B_BIT+A_BIT)-1  downto 0);



begin
 sll_HIGHER : entity work.shift_register(shft)
    generic map ( NBIT =>A_BIT ,F_NBIT => (B_BIT+A_BIT) , sll_bit => 2*S_sel+1)
           port map ( A =>A_mp_i , Y => Tem_sll( 2*(B_BIT+A_BIT)-1 downto (B_BIT+A_BIT))  );

 sll_lower: entity work.shift_register(shft)
    generic map ( NBIT =>A_BIT ,F_NBIT => (B_BIT+A_BIT) , sll_bit => 2*S_sel)
           port map ( A =>A_mp_i , Y => Tem_sll( (B_BIT+A_BIT)-1 downto 0)  );

                  

 NEG_lower: Neg_cmpl
           GENERIC map(  end_NBIT  => (B_BIT+A_BIT)  )
              
       Port map (	A  =>  Tem_sll( (B_BIT+A_BIT)-1 downto 0)  ,
                    Y	=>  Tem_sll_neg ( (B_BIT+A_BIT)-1 downto 0)  );
 NEG_higher: Neg_cmpl
           GENERIC map(  end_NBIT  => (B_BIT+A_BIT)  )
                       
                Port map (	A  =>  Tem_sll( 2*(B_BIT+A_BIT)-1 downto (B_BIT+A_BIT))  ,
                             Y	=>  Tem_sll_neg( 2*(B_BIT+A_BIT)-1 downto (B_BIT+A_BIT))  );
         

Y_mp_i (2*(B_BIT+A_BIT)-1 downto 0)                 <= Tem_sll;  
Y_mp_i (4*(B_BIT+A_BIT)-1 downto 2*(B_BIT+A_BIT) )<= Tem_sll_neg;  
-- <=Tem_np_block ;
End Beh ; 




