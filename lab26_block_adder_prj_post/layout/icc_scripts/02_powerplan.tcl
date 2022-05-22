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

   create_rectangular_rings  -nets  {VDD VSS}  -left_offset 65 -left_segment_layer MET4 -left_segment_width 10 -extend_ll -extend_lh -right_offset 65 -right_segment_layer MET4 -right_segment_width 10 -extend_rl -extend_rh -bottom_offset 65 -bottom_segment_layer MET5 -bottom_segment_width 10 -extend_bl -extend_bh -top_offset 65 -top_segment_layer MET5 -top_segment_width 10 -extend_tl -extend_th

   create_power_straps  -direction horizontal  -start_at 20 -num_placement_strap 8 -increment_x_or_y 40 -nets  {VDD VSS}  -layer MET5 -width 2

   create_power_straps  -direction vertical  -start_at 20 -num_placement_strap 8 -increment_x_or_y 40 -nets  {VDD VSS}  -layer MET4 -width 2 -start_low_ends last_targets  -start_high_ends last_targets

### Add well edge cell
  add_end_cap -respect_blockage -ignore_soft_blockage -lib_cell $WELL_EDGE_CELL
	create_fp_placement -timing_driven -no_hierarchy_gravity

# PG connection
  derive_pg_connection -power_net VDD  -power_pin VDD  -ground_net VSS  -ground_pin VSS

## connect P/G (I/O STD)
  preroute_standard_cells -connect horizontal  -port_filter_mode off -cell_master_filter_mode off -cell_instance_filter_mode off -voltage_area_filter_mode off -route_type {P/G Std. Cell Pin Conn}

	verify_pg_nets

    save_mw_cel -as $TOP_MODULE
#   close_mw_lib

#    exit
