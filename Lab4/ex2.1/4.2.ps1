ghdl -a --ieee=synopsys myTypes.vhd  ;
ghdl -a --ieee=synopsys CU_HARD.vhd  ;
ghdl -a --ieee=synopsys test.vhd  ;
ghdl -r --ieee=synopsys dlx_cu_tb --vcd=ciao.vcd;
gtkwave ciao.vcd










