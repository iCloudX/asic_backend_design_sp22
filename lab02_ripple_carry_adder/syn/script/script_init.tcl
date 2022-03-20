set top_design ripple_carry_adder
#set top_design pad_TOP
set_svf ripple_carry_adder.svf
#set_svf pad_TOP.svf
define_design_lib work -path ./work

set rtl [ list \
  ../src/rtl/ripple_carry_adder.v \
  ../src/rtl/full_adder.v \
]


#set rtl [ list \
  ../src/rtl/pad_TOP_no_powerpad.v\
  ../src/rtl/ripple_carry_adder.v \
  ../src/rtl/full_adder.v \
]

analyze -format verilog $rtl
elaborate -architecture verilog $top_design
#uniquify : uniquify is executed automatically

foreach_in_collection design [ get_designs "*" ] {
    current_design $design
    set_fix_multiple_port_nets -all -buffer_constants
}

#read_ddc ./output/pad_TOP_unmapped.ddc
current_design $top_design

set_fix_multiple_port_nets -all -buffer_constants

link
check_design
