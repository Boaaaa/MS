ghdl -a --ieee=synopsys constants.vhd  ;

ghdl -a --ieee=synopsys fa.vhd  ;
ghdl -a --ieee=synopsys mux.vhd  ;
ghdl -a --ieee=synopsys rca.vhd  ;
ghdl -a --ieee=synopsys csb.vhd  ;
ghdl -a --ieee=synopsys  sum_gen.vhd  ;

ghdl -a --ieee=synopsys g.vhd  ;
ghdl -a --ieee=synopsys pg.vhd  ;
ghdl -a --ieee=synopsys high_math.vhd  ;
ghdl -a --ieee=synopsys f_add.vhd  ;
ghdl -a --ieee=synopsys stl_base.vhd  ;
ghdl -a --ieee=synopsys sum_p4.vhd  ;
ghdl -a --ieee=synopsys tb_p4.vhd  ;


ghdl -r --ieee=synopsys sum_p4_tb --vcd=ciao.vcd;
gtkwave ciao.vcd





