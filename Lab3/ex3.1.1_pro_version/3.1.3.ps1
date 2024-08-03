ghdl -a --ieee=synopsys functions.vhd  ;
ghdl -a --ieee=synopsys constants.vhd  ;
ghdl -a --ieee=synopsys registerfile.vhd  ;
ghdl -a --ieee=synopsys testbench.vhd  ;

ghdl -r --ieee=synopsys register_file_tb --vcd=ciao.vcd;
gtkwave ciao.vcd




