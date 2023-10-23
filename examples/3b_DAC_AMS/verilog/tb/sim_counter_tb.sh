echo "RUN: iverilog:"
iverilog -g2005 -I "../rtl/" -s counter_tb -o dump.vvp counter_tb.v
echo "DONE: iverilog. RUN: verilator"
verilator --lint-only -Wall ../rtl/counter.v
echo "DONE: verilator. RUN: vvp"
vvp dump.vvp > dump.log
echo "DONE: vvp. Load dump.vcd in gtkwave"
gtkwave dump.vcd
