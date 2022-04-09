#####################################################
# User Defines
#####################################################
# MODIFIED BY USER
set LIB_DIR                     "/home/user/projects/2022_spring/PDK/BE"
set TOP_MODULE                  "ripple_carry_adder"
set ICC_IN_VERILOG_NETLIST_FILE "./user_data/ripple_carry_adder.gate.v"
set FUNC1_SDC         "./user_data/ripple_carry_adder_pnr.sdc"
set FUNCCTS_SDC       "./user_data/ripple_carry_adder_pnr.sdc"
set ICC_IN_IO_CONST_FILE          "./tdf/rca2.tdf"

#######################################################
## General ICC variables
#######################################################

set ICC_STRATEGY                   "qor"              ;# ttr | qor
set qor_effort                     "medium"           ;# low | medium | high. place optiomization effort, default is medium.
set INOUT_OPT                      true               ;# set to true when optimizing i2r and r2o paths
set GL_BASED_PLACE                 true              ;#(ekyoo) set to true when using high congested design
set GEN_GL_CONG_MAP                true              ;#(ekyoo ) set to true, to see global route based congestion map
set CLOCK_MAX_TRAN                 "0.3"              ;# clock path max transtion time.
set MAX_ROUTING_LAYER              "MET4"               ;# Do not use LB layer. LB layer must be used for RDL routing of flip chip
set MIN_ROUTING_LAYER              "MET1"
set CLK_MAX_ROUTING_LAYER          "MET4"
set CLK_MIN_ROUTING_LAYER          "MET2"

#######################################################
## For Power Definition
#######################################################

set MW_R_POWER_NET         "VDD"                 ;# This is real power net name.
set MW_R_GROUND_NET        "VSS"                 ;# This is real ground net name.
set MW_POWER_PORT          "VDD"                 ;# This is standard cell power pin name.
set MW_GROUND_PORT         "VSS"                 ;# This is standard cell ground pin name.
#####################################################
## For CTS & ROUTE
####################################################
set CLOCK_OPT_CTS_SCN_READ_AGAIN   true              ;# If true, ICC will create scenario again.  ekyoo
set CLOCK_OPT_PSYN_SCN_READ_AGAIN  false              ;# If true, ICC will create scenario again.  ekyoo
set ROUTE_SCN_READ_AGAIN           false              ;# If true, ICC will create scenario again.
set ROUTE_OPT_SCN_READ_AGAIN       false              ;# If true, ICC will create scenario again.
set HOLD_FIX                       true		      ;# If you want to fix hold violation then set true.
##########################################################################################
set REPORTS_DIR                 "reports"
