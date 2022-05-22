set LIB_DIR   "/home/user/PDK/BE"
#set MEM_DIR   "/home/idec/lecture_2015/REF"
set top_design pad_TOP

set search_path                 ". $LIB_DIR/Astro_FRAM/hgi1113tp1_astrofram_140612/hgi1113tp1_5lm/LM \
                                   $LIB_DIR/Astro_FRAM/m18gm180s_astrofram_150724/STD/m18gm180s_5lm/LM"


set target_library "m18gm180s_bci.db"

set link_library "* m18gm180s_bci.db hgi1113tp1_bcc.db"

read_verilog ./prep_data/pad_TOP.chip_finish.vg

current_design $top_design

link

# set_operating_conditions -analysis_type on_chip_variation -max fast_i  -max_library m18gm180s_bci -min slow -min_library m18gm180s_bci

read_sdc ./prep_data/adder_top.pnr_chip_finish.sdc

read_parasitics -format SPEF -verbose ./prep_data/pad_TOP_bestRC.SPEF

report_annotated_parasitics -check

set_propagated_clock [all_clock]

report_design

check_timing -verbose

report_analysis_coverage

report_constraint -all_violators

write_sdf pad_TOP.post_min.sdf

exit
