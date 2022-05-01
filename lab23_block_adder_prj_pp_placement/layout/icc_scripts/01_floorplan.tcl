###########################################################
## floorplan: floorplan and virtual placement
###########################################################

## Set STEP
	set step "floorplan"

## source the common_setup & Common variables file
	source -echo -v ./user_scripts/user_design_setup.tcl
	source -echo -v ./user_scripts/common_lib_setup.tcl

## Copy library and open cell
	set _mw_lib ./mdb/${TOP_MODULE}_${step}
	if {[file exist $_mw_lib]} {
	        exec mv $_mw_lib ./mdb/old/${TOP_MODULE}_${step}_${back}
	}
	copy_mw_lib -from ./mdb/${TOP_MODULE}_read_design -to $_mw_lib

## Open Library and Cell
	set_mw_technology_file -technology $TECH_FILE $_mw_lib
	set_mw_lib_reference $_mw_lib -mw_reference_library $MW_REFERENCE_LIB_DIRS
	open_mw_lib $_mw_lib
	remove_mw_cel [remove_from_collection [get_mw_cel *] [get_mw_cel $TOP_MODULE]] -all_versions -all_view -verbose
	open_mw_cel $TOP_MODULE
	link
	current_design $TOP_MODULE

## Read scenario 
	set_tlu_plus_files -max_tluplus $TLUPLUS_MAX_FILE -min_tluplus $TLUPLUS_MAX_FILE -tech2itf_map $MAP_FILE
        read_sdc $FUNC1_SDC

###Create initial floorplan 
create_floorplan -core_utilization 0.6 -left_io2core 100 -bottom_io2core 100 -right_io2core 100 -top_io2core 100

##Add IO Filler : Not use block design
#	insert_pad_filler -cell $IO_FILLER -overlap_cell $IO_FILLER_OVERLAP

##Load tdf file 
source -echo $ICC_IN_IO_CONST_FILE

### apply tdf floorplan 
create_floorplan -core_utilization 0.6 -left_io2core 100 -bottom_io2core 100 -right_io2core 100 -top_io2core 100

## create_fp_placement
create_fp_placement -timing_driven -no_hierarchy_gravity

## Unplace all standard cells 
remove_placement -object_type standard_cell
	
## Save
save_mw_cel -as $TOP_MODULE

#close_mw_lib
 
#exit
