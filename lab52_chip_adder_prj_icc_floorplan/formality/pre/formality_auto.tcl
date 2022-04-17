formality

source -echo -verbose formality.tcl

set_svf -append { /home/shin/workspace/soc_design/lab02_ripple_carry_adder/syn/ripple_carry_adder.svf } 

read_verilog -container r -libname WORK -05 { /home/shin/workspace/soc_design/lab02_ripple_carry_adder/src/rtl/full_adder.v /home/shin/workspace/soc_design/lab02_ripple_carry_adder/src/rtl/ripple_carry_adder.v } 

read_db { /home/shin/workspace/soc_design/lab02_ripple_carry_adder/PDK/FE/Synopsys_DB/m18gm180s_synopsysdb_111206/m18gm180s_wci.db } 

set_top r:/WORK/ripple_carry_adder 

read_verilog -container i -libname WORK -05 { /home/shin/workspace/soc_design/lab02_ripple_carry_adder/syn/output/ripple_carry_adder.gate.v } 

set_top i:/WORK/ripple_carry_adder 

match 

verify 

exit
