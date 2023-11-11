#set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets {clk_i_BUF}]
create_clock -period 10 [get_ports clk_i]
#set_property -dict { PACKAGE_PIN AD11 IOSTANDARD LVDS } [get_ports { clk_i}] ; 
