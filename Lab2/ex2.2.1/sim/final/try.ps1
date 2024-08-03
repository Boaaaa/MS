clear
ghdl -a --ieee=synopsys constants.vhd  ;
ghdl -a --ieee=synopsys st.vhd  ;
ghdl -a --ieee=synopsys muxsll_block.vhd  ;
ghdl -a --ieee=synopsys multiplier.vhd  ;
ghdl -a --ieee=synopsys tb_BL_MUX.vhd  ;

ghdl -r --ieee=synopsys BOOTMUL_tb --vcd=ciao.vcd;
gtkwave ciao.vcd




