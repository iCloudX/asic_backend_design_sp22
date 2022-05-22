#####################################################################################################
##  Common setup file 
#####################################################################################################
set_route_mode_options -zroute true
##  Setup libraries

set search_path                 ". $LIB_DIR/Astro_FRAM/hgi1113tp1_astrofram_140612/hgi1113tp1_5lm/LM \
				   $LIB_DIR/Astro_FRAM/m18gm180s_astrofram_150724/STD/m18gm180s_5lm/LM"

set target_library "m18gm180s_wci.db m18gm180s_typ.db m18gm180s_bci.db m18gm180s_bcc.db hgi1113tp1_wci.db hgi1113tp1_typ.db hgi1113tp1_bcc.db"


set link_library "* m18gm180s_wci.db m18gm180s_typ.db m18gm180s_bci.db m18gm180s_bcc.db hgi1113tp1_wci.db hgi1113tp1_typ.db hgi1113tp1_bcc.db"


set all_milky " $LIB_DIR/Astro_FRAM/m18gm180s_astrofram_150724/STD/m18gm180s_5lm $LIB_DIR/Astro_FRAM/hgi1113tp1_astrofram_140612/hgi1113tp1_5lm" 
set MW_REFERENCE_LIB_DIRS       "$all_milky"

#####################################################################################################
##  TECH and TLUP Files
#####################################################################################################
set TECH_FILE                   "$LIB_DIR/Astro_tech/HL18G18XXM1X_m18gm180s_astrotech_150818/5LM/STD/HL18G18XXM15_m18gm180s_astrotech_150724.tf"
set MAP_FILE                    "$LIB_DIR/Astro_tech/HL18G18XXM1X_m18gm180s_astrotech_150818/5LM/HL18G18XXM15_astrotech_150724.mapping"
set TLUPLUS_MAX_FILE            "$LIB_DIR/Astro_tech/HL18G18XXM1X_m18gm180s_astrotech_150818/5LM/STD/tluplus_for_icc/HL18G_L29_STD_5LM_bestRC.tluplus"
set TLUPLUS_MIN_FILE            "$LIB_DIR/Astro_tech/HL18G18XXM1X_m18gm180s_astrotech_150818/5LM/STD/tluplus_for_icc/HL18G_L29_STD_5LM_worstRC.tluplus"


#####################################################################################################
##  ANTENNA RULE
set ANTENNA_RULE "$LIB_DIR/Astro_tech/HL18G18XXM1X_m18gm180s_astrotech_150818/5LM/Antenna.cmd_for_STD_and_CWB.tcl"

#####################################################################################################
#####################################################################################################
##  DECAP CELLS, STD FILLERS and IO FILLERS
#####################################################################################################

set RVT_FILLER                  "FILL64 FILL32 FILL16 FILL8 FILL4 FILL2 FILL1"
set IO_FILLER                   "IOFILLER60 IOFILLER10 IOFILLER5 IOFILLER_OVERLAP"
set IO_FILLER_OVERLAP           "IOFILLER_OVERLAP"

#####################################################################################################
##  WELL EDGE CELL and TAP CELL
set WELL_EDGE_CELL FILL2


set timing_enable_multiple_clocks_per_reg true
set timing_enable_non_sequential_checks true
set case_analysis_with_logic_constants true
set disable_auto_time_borrow false   
set legalize_support_phys_only_cell true

set_separate_process_options -placement false
set_separate_process_options -routing false
set_separate_process_options -extraction false

#####################################################################################################
## ETC
#####################################################################################################

set sh_enable_page_mode false

setenv TMPDIR [sh pwd]/TMP
set back [sh date +%m%d_%H:%M:%S]

#####################################################################################################
