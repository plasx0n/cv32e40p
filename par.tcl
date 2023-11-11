#read_verilog [lindex $argv 0]
#read_xdc clock.xdc

create_clock -period 10 [get_ports clk]
synth_design -part xc7k325tffg900-2 -top picorv32
# opt_design -sweep -propconst -resynth_seq_area
# opt_design -directive ExploreSequentialArea
place_design
# phys_opt_design
route_design

report_utilization -hierarchical -file report_utilization_[lindex $argv 1]
report_timing_summary -file report_timing_[lindex $argv 1]
report_power -file report_power_[lindex $argv 1]
