source -echo -verbose formality.tcl
read_verilog -container r -libname WORK -05 { /home/user/projects/2022_spring/asic_backend_design_sp22/lab98_adder_prj_block_level/syn/output/adder_top.gate.v } 
read_db { /home/user/projects/2022_spring/PDK/FE/Synopsys_DB/m18gm180s_synopsysdb_111206/m18gm180s_wci.db } 
set_top r:/WORK/adder_top 
read_verilog -container i -libname WORK -05 { /home/user/projects/2022_spring/asic_backend_design_sp22/lab98_adder_prj_block_level/layout/outputs/adder_top.chip_finish.vg } 
set_top i:/WORK/adder_top 
match 
verify 