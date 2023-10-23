# General
 set ::env(DESIGN_NAME) counter
 set ::env(CLOCK_PORT) "clk_i"
 set ::env(CLOCK_PERIOD) 20

# Files
 set ::env(VERILOG_FILES) "$::env(DESIGN_DIR)/../../verilog/rtl/counter.v"

# Floorplanning
 set ::env(FP_CORE_UTIL) 0.4

# Power distribution network settings
 set ::env(VDD_NETS) {VPWR}
 set ::env(GND_NETS) {VGND}

# LVS
 set ::env(MAGIC_EXT_USE_GDS) {1}
