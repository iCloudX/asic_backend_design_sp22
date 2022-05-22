set LIB_DIR   "/home/user/PDK/BE"
set top_design adder_top

set search_path                 ". $LIB_DIR/Astro_FRAM/hgi1113tp1_astrofram_140612/hgi1113tp1_5lm/LM \
                                   $LIB_DIR/Astro_FRAM/m18gm180s_astrofram_150724/STD/m18gm180s_5lm/LM"


set target_library "m18gm180s_bci.db"

set link_library "* m18gm180s_bci.db hgi1113tp1_bcc.db"

read_verilog ./prep_data/01.verilog/adder_top.chip_finish.vg

current_design $top_design

link

# set_operating_conditions -analysis_type on_chip_variation -max fast_i  -max_library m18gm180s_bci -min slow -min_library m18gm180s_bci

read_sdc ./prep_data/02.sdc/adder_top.pnr_chip_finish.sdc

read_parasitics -format SPEF -verbose ./prep_data/03.spef/adder_top_bestRC.SPEF

report_annotated_parasitics -check

set_propagated_clock [all_clock]

report_design

check_timing -verbose

report_analysis_coverage

report_constraint -all_violators

write_sdf adder_top.post_min.sdf
