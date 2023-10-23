# 3b_DAC_AMS

(c) 2023 Patrick Fath, Institute for Integrated Circuits, Johannes Kepler University, Linz, Austria

Example for an Aanalog-Mixed-Signal (AMS) simulation with ngspice using a 3b-DAC.

# Quick Start

## Design and Simulation
Folder: 3b_DAC_AMS/verilog/tb
Run: iverilog -g2005 -I "../rtl/" -s counter_tb -o dump.vvp counter_tb.v
Run: verilator --lint-only -Wall ../rtl/counter.v
Run: vvp dump.vvp > dump.log
Run: gtkwave dump.vcd

## Mixed-Signal Simulation
### Verilog RTL to SKY130 standard cell .spice netlist using OpenLane
Folder: 3b_DAC_AMS/openlane
Setup a minimal OpenLane project before!
Insert "set ::env(MAGIC_EXT_USE_GDS) {1}" into your OpenLane config.tcl to force device/transistor-level extraction in spice netlist instead of block/cell-level
Run: flow.tcl -design counter -tag foo -overwrite
SKY130 standard cell .spice netlist is 3b_DAC_AMS/openlane/counter/runs/foo/results/signoff/counter.gds.spice.
Copy this file to 3b_DAC_AMS/spice/counter.spice.
### SKY130 standard cell .spice netlist to behaviour .xspice netlist
Folder: 3b_DAC_AMS/spice/
Run: python3 spi2xspice.py $PDKPATH/libs.ref/sky130_fd_sc_hd/lib/sky130_fd_sc_hd__tt_025C_1v80.lib -io_time=500p -time=50p -idelay=5p -odelay=50p -cload=250f counter.spice counter.xspice
### Simulation
Make a xschem symbol, adjust the pin order to the order of your netlist file and set the symbol type to type=primitive.
Add .include <pathtoyourdesign>/spice/counter.xspice statement to ngspice for a mixed-signal or .include <pathtoyourdesign>/spice/counter.spice for an analog simulation.

# Further Information
[1] https://github.com/iic-jku/SKY130_SAR-ADC1/blob/main/doc/mixed_signal_simulation.md
[2] http://opencircuitdesign.com/qflow/
