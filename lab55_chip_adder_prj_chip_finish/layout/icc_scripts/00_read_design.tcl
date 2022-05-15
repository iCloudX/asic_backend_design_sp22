###########################################################
## read_design: read verilog netlist and scenarios
###########################################################

## Set STEP
	set step "read_design"

## source the common_setup & Common variables file
	source -echo -v ./user_scripts/user_design_setup.tcl
	source -echo -v ./user_scripts/common_lib_setup.tcl


## Clear library
	set _mw_lib ./mdb/${TOP_MODULE}_${step}
	if {[file exist $_mw_lib]} {
	        exec rm -rf $_mw_lib
	}

## Create design milkyway db
	create_mw_lib -technology $TECH_FILE  \
	    -mw_reference_library $MW_REFERENCE_LIB_DIRS \
	    -bus_naming_style {[%d]} \
	    -open \
	    ./mdb/${TOP_MODULE}_${step}


## Read verilog netlist
	read_verilog -top ${TOP_MODULE} $ICC_IN_VERILOG_NETLIST_FILE
	link
	current_design $TOP_MODULE
	uniquify_fp_mw_cel

## Read scenario 
        set_tlu_plus_files -max_tluplus $TLUPLUS_MAX_FILE -min_tluplus $TLUPLUS_MAX_FILE -tech2itf_map $MAP_FILE
                read_sdc $FUNC1_SDC

## Save
	change_names -rule verilog -hier
	set verilogout_no_tri true
	save_mw_cel -as ${TOP_MODULE}

## Close lib
#	close_mw_lib

#   exit
