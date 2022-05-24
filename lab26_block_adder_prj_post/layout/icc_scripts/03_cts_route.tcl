## Set STEP
    set step "cts_route"

## source the common_setup & Common variables file
    source -echo -v ./user_scripts/user_design_setup.tcl
    source -echo -v ./user_scripts/common_lib_setup.tcl

## Copy library and open cell
    set _mw_lib ./mdb/${TOP_MODULE}_${step}
    if {[file exist $_mw_lib]} {
            exec mv $_mw_lib ./mdb/old/${TOP_MODULE}_${step}_${back}
    }
    copy_mw_lib -from ./mdb/${TOP_MODULE}_powerplan -to $_mw_lib

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
    #set_dont_touch_placement [all_macro_cells]
    read_sdc $FUNCCTS_SDC

set enable_recovery_removal_arcs true
set timing_enable_multiple_clocks_per_reg true
set timing_remove_clock_reconvergence_pessimism true

set physopt_enable_via_res_support true
set physopt_hard_keepout_distance 5

set_buffer_opt_strategy -effort medium

### Place OPT
    remove_placement -object_type standard_cell
    set_clock_tree_options -clock_trees [all_clocks] -layer_list "MET2 MET3 MET4"
    place_opt -congestion -area_recovery -effort $qor_effort -power

    legalize_placement -effort medium

### HFN balanced buffer tree
    remove_buffer_tree -from [get_nets rst_n]
    create_buffer_tree -from [get_nets rst_n]

### Place OPT for HFN nets
    remove_ideal_network [get_nets rst_n]
    compile_clock_tree -high_fanout_net [get_nets rst_n]

# idel network reporting
    report_timing
    report_timing -path full -delay max -max_paths 20
    report_timing -path full -delay min -max_paths 20

##  CTS
   set_ignored_layers -rc_congestion_ignored_layers MET5 -max_routing_layer MET4 -min_routing_layer MET2
#   set_ignored_layers -max_routing_layer MET4 -min_routing_layer MET2
#   set_ignored_layers -min_routing_layer MET2

  clock_opt -only_cts -no_clock_route

  remove_ideal_network [all_fanout -flat -clock_tree]
  set_fix_hold [all_clocks]

    report_timing
    report_timing -path full -delay max -max_paths 20
    report_timing -path full -delay min -max_paths 20

## Global zroute
  route_zrt_global

  extract_rc
  update_timing
  report_timing
    report_timing -path full -delay max -max_paths 20
    report_timing -path full -delay min -max_paths 20



### Route 
  # set antenna rule
   source $ANTENNA_RULE
  report_antenna_rules
  set_route_zrt_detail_options -antenna true

  route_opt 
 

### Serch & Repair

    verify_zrt_route
    route_zrt_detail -inc true -initial_drc_from_input true

## Timing check 
  extract_rc
  update_timing
  report_timing
    report_timing -path full -delay max -max_paths 20
    report_timing -path full -delay min -max_paths 20


## LVS
 derive_pg_connection -power_net VDD  -power_pin VDD  -ground_net VSS  -ground_pin VSS
 verify_lvs

## Save deisgn 
  save_mw_cel -as ${TOP_MODULE}


### Close library 
#  close_mw_lib
#  exit
