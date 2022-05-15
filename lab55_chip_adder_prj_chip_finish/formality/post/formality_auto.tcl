formality

source -echo -verbose formality.tcl

read_verilog -container r -libname WORK -05 { /home/shin/workspace/soc_design/test00/layout/user_data/pad_TOP_gate.v }
 
read_db { /home/shin/workspace/soc_design/test00/PDK/FE/Synopsys_DB/m18gm180s_synopsysdb_111206/m18gm180s_wci.db /home/shin/workspace/soc_design/test00/PDK/FE/Synopsys_DB/hgi1113tp1_040926/db/hgi1113tp1_wci.db }

set hdlin_unresolved_modules black_box 

set_top r:/WORK/pad_TOP 

read_verilog -container i -libname WORK -05 { /home/shin/workspace/soc_design/test00/layout/outputs/pad_TOP.chip_finish.vg } 

set_top i:/WORK/pad_TOP 

match 

verify 

exit
