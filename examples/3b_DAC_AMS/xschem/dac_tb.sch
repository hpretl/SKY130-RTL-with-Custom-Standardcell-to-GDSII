v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 1220 -920 2020 -520 {flags=graph
y1=0
y2=2
ypos1=0
ypos2=2
divy=1
subdivy=1
unity=1
x1=0
x2=2e-05
divx=10
subdivx=1
node="
clk_500k
rst_n
dac_i_2
dac_i_1
dac_i_0
dac_i,dac_i_2,dac_i_1,dac_i_0
"
color="9 9 6 6 6 6"
dataset=-1
unitx=1
logx=0
logy=0
digital=1}
B 2 1220 -520 2020 -120 {flags=graph
y1=0
y2=1.8
ypos1=0
ypos2=2
divy=10
subdivy=1
unity=1
x1=0
x2=2e-05
divx=10
subdivx=1
node="
dac_o
"
color="6"
dataset=-1
unitx=1
logx=0
logy=0
}
N 30 -520 30 -510 {
lab=clk_500k}
N 310 -500 320 -500 {
lab=rst_n}
N 310 -520 320 -520 {
lab=clk_500k}
N 510 -510 520 -510 {
lab=dac_i_[0..2]}
N 300 -500 310 -500 {
lab=rst_n}
N 170 -520 310 -520 {lab=clk_500k}
N 30 -510 30 -380 {
lab=clk_500k}
N 250 -500 250 -380 {
lab=rst_n}
N 250 -500 300 -500 {
lab=rst_n}
N 30 -520 170 -520 {
lab=clk_500k}
N 690 -460 690 -440 {
lab=GND}
N 690 -460 710 -460 {
lab=GND}
N 690 -540 710 -540 {
lab=VDD}
N 690 -560 690 -540 {
lab=VDD}
N 690 -520 710 -520 {
lab=dac_i_2}
N 690 -500 710 -500 {
lab=dac_i_1}
N 690 -480 710 -480 {
lab=dac_i_0}
N 1010 -540 1110 -540 {
lab=dac_o}
N 1080 -480 1080 -400 {
lab=GND}
N 1080 -400 1140 -400 {
lab=GND}
N 1140 -480 1140 -400 {
lab=GND}
N 1110 -480 1110 -400 {
lab=GND}
N 1110 -540 1110 -520 {
lab=dac_o}
C {sky130_fd_pr/corner.sym} 10 -240 0 0 {name=CORNER only_toplevel=false corner=tt}
C {devices/launcher.sym} 340 -210 0 0 {name=h2 
descr="Simulate" 
tclcommand="xschem netlist; xschem simulate"}
C {devices/vsource.sym} 500 -350 0 0 {name=Vdd value=1.8
}
C {devices/gnd.sym} 500 -320 0 0 {name=l4 lab=GND}
C {devices/title.sym} 160 -30 0 0 {name=l1 author="Patrick Fath"}
C {counter.sym} 470 -390 0 0 {name=xcnt}
C {devices/lab_wire.sym} 250 -500 0 0 {name=l42 sig_type=std_logic lab=rst_n}
C {devices/vsource.sym} 30 -350 0 0 {name=V_CLK value="0 pulse(1.8 0 0 100p 100p 1u 2u)"}
C {devices/vsource.sym} 250 -350 0 0 {name=V_RST value="0 pulse(1.8 0 2u 100p 100p 2u 2)"}
C {devices/lab_wire.sym} 520 -510 0 1 {name=l45 sig_type=std_logic lab=dac_i_[0..2]}
C {devices/launcher.sym} 340 -160 0 0 {name=h1 
descr="Load/unload
TRAN waveforms" 
tclcommand="
xschem raw_read $netlist_dir/dac_tb.raw tran
"
}
C {devices/code.sym} 130 -240 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
* ngspice commands
****************
* True mixed signal? (xspice) or analog? (spice)
****************
.include /foss/designs/SKY130-RTL-with-Custom-Standardcell-to-GDSII/examples/3b_DAC_AMS/spice/counter.xspice
*.include /foss/designs/SKY130-RTL-with-Custom-Standardcell-to-GDSII/examples/3b_DAC_AMS/spice/counter.spice

.save all
.control
set noaskquit
set num_threads=12

tran 10n 20u

write dac_tb.raw

.endc
"}
C {devices/lab_wire.sym} 100 -520 0 0 {name=l39 sig_type=std_logic lab=clk_500k}
C {dac.sym} 860 -500 0 0 {name=x1}
C {devices/gnd.sym} 30 -320 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} 250 -320 0 0 {name=l3 lab=GND}
C {devices/vdd.sym} 500 -380 0 0 {name=l5 lab=VDD}
C {devices/vdd.sym} 410 -560 0 0 {name=l6 lab=VDD}
C {devices/gnd.sym} 410 -460 0 0 {name=l7 lab=GND}
C {devices/vdd.sym} 690 -560 0 0 {name=l8 lab=VDD}
C {devices/gnd.sym} 690 -440 0 0 {name=l9 lab=GND}
C {devices/lab_wire.sym} 690 -520 0 0 {name=l10 sig_type=std_logic lab=dac_i_2}
C {devices/lab_wire.sym} 690 -500 0 0 {name=l11 sig_type=std_logic lab=dac_i_1}
C {devices/lab_wire.sym} 690 -480 0 0 {name=l12 sig_type=std_logic lab=dac_i_0}
C {sky130_fd_pr/nfet_01v8.sym} 1110 -500 1 0 {name=M1
L=0.15
W=1
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {devices/gnd.sym} 1110 -400 0 0 {name=l13 lab=GND}
C {devices/lab_wire.sym} 1110 -540 0 1 {name=l14 sig_type=std_logic lab=dac_o}
