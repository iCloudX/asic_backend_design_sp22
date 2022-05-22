## chip_finish : decap/filler
#############################################

## Set STEP
    set step "chip_finish"

## source the common_setup & Common variables file
    source -echo -v ./user_scripts/user_design_setup.tcl
    source -echo -v ./user_scripts/common_lib_setup.tcl


## Copy library and open cell
    set _mw_lib ./mdb/${TOP_MODULE}_${step}
    if {[file exist $_mw_lib]} {
            exec mv $_mw_lib ./mdb/old/${TOP_MODULE}_${step}_${back}
    }
    copy_mw_lib -from ./mdb/${TOP_MODULE}_cts_route -to $_mw_lib
## Open Library and Cell
    set_mw_technology_file -technology $TECH_FILE $_mw_lib
    set_mw_lib_reference $_mw_lib -mw_reference_library $MW_REFERENCE_LIB_DIRS
    open_mw_lib $_mw_lib
    remove_mw_cel [remove_from_collection [get_mw_cel *] [get_mw_cel $TOP_MODULE]] -all_versions -all_view -verbose
    open_mw_cel $TOP_MODULE
    link
    current_design $TOP_MODULE

## Read scenario file
    set_tlu_plus_files -max_tluplus $TLUPLUS_MIN_FILE -min_tluplus $TLUPLUS_MIN_FILE -tech2itf_map $MAP_FILE
    #set_dont_touch_placement [all_macro_cells]
    read_sdc $FUNC_CHIP_FINISH_SDC


##Source antenna rule
# set_route_zrt_detail_options -default_port_external_gate_size 0
    source $ANTENNA_RULE
    report_antenna_rules

## To fix antenna violations
    set_route_zrt_detail_options -antenna true

## Search & Repair
    verify_zrt_route
    route_zrt_detail -inc true -initial_drc_from_input true


### PG connection
    derive_pg_connection -power_net VDD  -power_pin VDD  -ground_net VSS  -ground_pin VSS


## Intermediate Save
    set_route_zrt_global_options -timing_driven true
    set_route_zrt_track_options  -timing_driven true
    set_route_zrt_detail_options -timing_driven true
    save_mw_cel

## Running extraction and updating the timing
    extract_rc -coupling_cap
    update_timing


## Report
    set legalize_support_phys_only_cell true
    create_qor_snapshot -show_all -significant_digits 4 -name $step
    redirect -file $REPORTS_DIR/${step}.snap.rpt          { report_qor_snapshot -name $step -save_as $step.snap.rpt }
    redirect -file $REPORTS_DIR/${step}.hfn.rpt           { report_net_fanout -threshold 10 }
    redirect -file $REPORTS_DIR/${step}.qor.rpt -tee      { report_qor -scenario [all_scenarios] -significant_digits 4 }
    redirect -file $REPORTS_DIR/${step}.physical.sum -tee { report_design -physical -nosplit }
    redirect -file $REPORTS_DIR/${step}.vth_use.rpt -tee  { report_threshold_voltage_group }
    redirect -file $REPORTS_DIR/${step}.check_legality    { check_legality -verbose }
    redirect -file $REPORTS_DIR/${step}.constraints.rpt   { report_constraint  \
                   -all_violators -nosplit -significant_digits 4 }
    redirect -file $REPORTS_DIR/${step}.max.timing.rpt    {
                   report_timing -significant_digits 4 \
                   -delay max -transition_time  -capacitance \
                   -max_paths 100 -nets -input_pins -slack_lesser_than 0.01 \
                   -physical -attributes -nosplit -derate
    }
  

## Insert FILLER

set FILLER "FILL64 FILL32 FILL16 FILL8 FILL4 FILL2 FILL1"

insert_stdcell_filler -cell_without_metal $FILLER -ignore_soft_placement_blockage -between_std_cells_only -connect_to_power {VDD} -connect_to_ground {VSS}

## check  LVS
     verify_lvs -max_error 2000

### Save cell and extract verilog/def files
#    change_names -rule verilog -hier
#    set verilogout_no_tri true
#    save_mw_cel -as $TOP_MODULE

## Write outputs
    change_names -rule verilog -hier
    set verilogout_no_tri true

write_verilog ./outputs/${TOP_MODULE}.${step}.vg \
              -no_corner_pad_cells -no_pad_filler_cells -diode_ports \
              -no_core_filler_cells -no_flip_chip_bump_cells -wire_declaration

write_verilog ./outputs/${TOP_MODULE}.${step}.sim.v \
              -no_corner_pad_cells -no_pad_filler_cells -diode_ports \
              -no_core_filler_cells -no_flip_chip_bump_cells -wire_declaration \
              -no_tap_cells -no_unconnected_cells

set_write_stream_options -child_depth 0 \
             -output_pin {geometry text} \
             -keep_data_type -max_name_length 128

write_stream -lib_name ./mdb/${TOP_MODULE}_${step} -format gds -cells $TOP_MODULE \
             ./outputs/${TOP_MODULE}.${step}.gds_depth0

set_write_stream_options -child_depth 30 \
             -output_pin {geometry text} \
             -keep_data_type -max_name_length 128

write_stream -lib_name ./mdb/${TOP_MODULE}_${step} -format gds -cells $TOP_MODULE \
             ./outputs/${TOP_MODULE}.${step}.gds_depth30

write_def -nondefault_rule -rows_tracks_gcells -vias -all_vias -components -pins -blockages -regions_groups \
             -specialnets -nets -diode_pins -output ./outputs/${TOP_MODULE}.${step}.def


## Save cell and extract verilog/def files
    save_mw_cel -as $TOP_MODULE

#close_mw_lib
#exit
