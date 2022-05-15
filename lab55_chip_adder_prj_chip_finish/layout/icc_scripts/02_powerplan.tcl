###########################################################
## powerplan: power planning
###########################################################

## Set STEP
    set step "powerplan"

## source the common_setup & Common variables file
    source -echo -v ./user_scripts/user_design_setup.tcl
    source -echo -v ./user_scripts/common_lib_setup.tcl

## Copy library and open cell
    set _mw_lib ./mdb/${TOP_MODULE}_${step}
    if {[file exist $_mw_lib]} {
            exec mv $_mw_lib ./mdb/old/${TOP_MODULE}_${step}_${back}
    }
    copy_mw_lib -from ./mdb/${TOP_MODULE}_floorplan -to $_mw_lib

## Open Library and Cell
    set_mw_technology_file -technology $TECH_FILE $_mw_lib
    set_mw_lib_reference $_mw_lib -mw_reference_library $MW_REFERENCE_LIB_DIRS
    open_mw_lib $_mw_lib
    remove_mw_cel [remove_from_collection [get_mw_cel *] [get_mw_cel $TOP_MODULE]] -all_versions -all_view -verbose
    open_mw_cel $TOP_MODULE
    link
    current_design $TOP_MODULE

## Read scenario file 
    set_tlu_plus_files -max_tluplus $TLUPLUS_MAX_FILE -min_tluplus $TLUPLUS_MAX_FILE -tech2itf_map $MAP_FILE
    read_sdc $FUNC1_SDC

#### PG connection
    derive_pg_connection -power_net VDD  -power_pin VDD  -ground_net VSS  -ground_pin VSS
#
#### Power Strap
#	set_fp_rail_constraints -add_layer  -layer MET5 -direction horizontal -max_strap 14 -min_strap 5 -max_width 5 -min_width 1 -spacing minimum
#	set_fp_rail_constraints -add_layer  -layer MET4 -direction vertical -max_strap 14 -min_strap 5 -max_width 5 -min_width 1 -spacing minimum
#	set_fp_rail_region_constraints  -polygon {{505.595 1158.965} {505.595 538.995} {1169.400 538.995} {1169.400 1158.965}}
#	set_fp_rail_constraints -set_global   -no_routing_over_hard_macros
#	synthesize_fp_rail  -nets {VSS VDD} -voltage_supply 1.8 -synthesize_power_plan -power_budget 350 -pad_masters { VDD:PVDDPIL.FRAM VSS:PVSSOPI.FRAM }
#	commit_fp_rail

#   create_rectangular_rings  -nets  {VDD VSS}  -left_offset 220 -left_segment_layer MET4 -left_segment_width 10 -extend_ll -extend_lh -right_offset 220 -right_segment_layer MET4 -right_segment_width 10 -extend_rl -extend_rh -bottom_offset 220 -bottom_segment_layer MET5 -bottom_segment_width 10 -extend_bl -extend_bh -top_offset 220 -top_segment_layer MET5 -top_segment_width 10 -extend_tl -extend_th
#   create_rectangular_rings  -nets  {VDD VSS}  -left_offset 65 -left_segment_layer MET4 -left_segment_width 10 -extend_ll -extend_lh -right_offset 65 -right_segment_layer MET4 -right_segment_width 10 -extend_rl -extend_rh -bottom_offset 65 -bottom_segment_layer MET5 -bottom_segment_width 10 -extend_bl -extend_bh -top_offset 65 -top_segment_layer MET5 -top_segment_width 10 -extend_tl -extend_th
create_rectangular_rings  -nets  {VDD VSS}  -left_offset 80 -left_segment_layer MET4 -left_segment_width 10 -right_offset 80 -right_segment_layer MET4 -right_segment_width 10 -bottom_offset 80 -bottom_segment_layer MET5 -bottom_segment_width 10 -top_offset 80 -top_segment_layer MET5 -top_segment_width 10 

create_power_straps  -direction horizontal  -start_at 460 -num_placement_strap 10 -increment_x_or_y 80 -nets  {VDD VSS}  -layer MET5 -width 2
create_power_straps  -direction vertical  -start_at 460 -num_placement_strap 10 -increment_x_or_y 80 -nets  {VDD VSS}  -layer MET4 -width 2

#
### Add well edge cell
    add_end_cap -respect_blockage -ignore_soft_blockage -lib_cell $WELL_EDGE_CELL
	create_fp_placement -timing_driven -no_hierarchy_gravity

# PG connection
    derive_pg_connection -power_net VDD  -power_pin VDD  -ground_net VSS  -ground_pin VSS

## connect P/G (I/O STD)
    preroute_instances -primary_routing_layer pin
    preroute_standard_cells -connect horizontal  -port_filter_mode off -cell_master_filter_mode off -cell_instance_filter_mode off -voltage_area_filter_mode off -route_type {P/G Std. Cell Pin Conn}
    verify_pg_nets

# FROM IDEC
#	set_preroute_drc_strategy  -treat_fat_blockage_as_fat_wire  -min_layer MET1  -max_layer MET5
#  	preroute_instances  -ignore_macros -primary_routing_layer pin
#	preroute_standard_cells -connect horizontal  -skip_macro_pins  -skip_pad_pins  -remove_floating_pieces  -do_not_route_over_macros  -port_filter_mode off -cell_master_filter_mode off -cell_instance_filter_mode off -voltage_area_filter_mode off -route_type {P/G Std. Cell Pin Conn}
#
##### 

######### WHAT IS START ? ##############
#	set_pnet_options -partial "MET2 MET3 MET4"
###### legalize placement to move violating STD cells away from the power straps
#	legalize_fp_placement
#
#	# Perform actual global routing to make sure the congestion
#	route_zrt_global
#	report_congestion -grc_based -by_layer -routing_stage global
#
#	#Perform global route congestion map analysis from the GUI (no need to "Reload)
#	#Perform timing analysis
#
#
## optimize_fp_timing -fix_design_rule
## route_zrt_global
#
#     report_timing
######### WHAT IS END ? ##############

save_mw_cel -as $TOP_MODULE
#close_mw_lib

#    exit
