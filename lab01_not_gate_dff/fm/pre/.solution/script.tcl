source -echo -verbose formality.tcl
set_svf -append { /home/user/projects/2022_spring/asic_backend_design_sp22/lab01_not_gate_dff/syn/not_with_dff.svf } 
read_verilog -container r -libname WORK -05 { /home/user/projects/2022_spring/asic_backend_design_sp22/lab01_not_gate_dff/src/rtl/not_with_dff.v } 
read_db { /home/user/projects/2022_spring/PDK/FE/Synopsys_DB/m18gm180s_synopsysdb_111206/m18gm180s_wci.db } 
set_top r:/WORK/not_with_dff 
read_verilog -container i -libname WORK -05 { /home/user/projects/2022_spring/asic_backend_design_sp22/lab01_not_gate_dff/syn/output/not_with_dff.gate.v } 
set_top i:/WORK/not_with_dff 
match 
verify 