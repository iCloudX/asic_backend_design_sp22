file mkdir output

set top_design pad_TOP
#set top_design ripple_carry_adder

read_ddc ../../syn/output/$top_design.mapped.ddc

link

current_design

read_sdc -echo ../../syn/output/$top_design.sdc

update_timing -full

check_timing -verbose

report_analysis_coverage

write_sdf ./output/$top_design.sdf_pt

exit

