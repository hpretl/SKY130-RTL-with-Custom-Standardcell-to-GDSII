v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 1000 -540 1800 -140 {flags=graph
y1=0
y2=2
ypos1=0
ypos2=2
divy=1
subdivy=1
unity=1
x1=0
x2=20u
divx=10
subdivx=1
node="
clk_500k
rst_n
cnt_2
cnt_1
cnt_0
cnt,cnt_2,cnt_1,cnt_0"
color="9 9 9 9 9 9"
dataset=-1
unitx=1
logx=0
logy=0
digital=1}
N 210 -390 210 -380 {
lab=clk_500k}
N 470 -380 480 -380 {
lab=rst_n}
N 470 -400 480 -400 {
lab=clk_500k}
N 730 -390 740 -390 {
lab=cnt_[0..2]}
N 720 -300 720 -280 {
lab=GND}
N 720 -220 780 -220 {
lab=GND}
N 780 -300 780 -280 {
lab=GND}
N 750 -300 750 -280 {
lab=GND}
N 800 -300 800 -280 {
lab=GND}
N 800 -220 860 -220 {
lab=GND}
N 860 -300 860 -280 {
lab=GND}
N 830 -300 830 -280 {
lab=GND}
N 880 -300 880 -280 {
lab=GND}
N 880 -220 940 -220 {
lab=GND}
N 940 -300 940 -280 {
lab=GND}
N 910 -300 910 -280 {
lab=GND}
N 720 -280 720 -220 {
lab=GND}
N 750 -280 750 -220 {
lab=GND}
N 780 -280 780 -220 {
lab=GND}
N 800 -280 800 -220 {
lab=GND}
N 830 -280 830 -220 {
lab=GND}
N 860 -280 860 -220 {
lab=GND}
N 880 -280 880 -220 {
lab=GND}
N 910 -280 910 -220 {
lab=GND}
N 940 -280 940 -220 {
lab=GND}
N 910 -360 910 -340 {
lab=cnt_0}
N 830 -360 830 -340 {
lab=cnt_1}
N 750 -360 750 -340 {
lab=cnt_2}
N 740 -390 760 -390 {
lab=cnt_[0..2]}
N 210 -400 470 -400 {
lab=clk_500k}
N 210 -400 210 -390 {
lab=clk_500k}
N 410 -380 470 -380 {
lab=rst_n}
N 410 -380 410 -330 {
lab=rst_n}
C {devices/title.sym} 170 -40 0 0 {name=l6 author="Patrick Fath"}
C {devices/code.sym} 0 -200 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
* ngspice commands
****************
* True mixed signal? (xspice) or analog? (spice)
****************
.include /foss/designs/AMS_Test/spice/counter.xspice
*.include /foss/designs/AMS_Test/spice/counter.spice

.save all
.control
set num_threads=12
tran 100n 20u

write counter_tb.raw

.endc
"}
C {counter.sym} 630 -270 0 0 {name=xdut}
C {devices/gnd.sym} 590 -340 0 0 {name=l1 lab=GND}
C {devices/vdd.sym} 590 -440 0 0 {name=l1 lab=VDD}
C {devices/vsource.sym} 30 -290 0 0 {name=V_VDD value=1.8}
C {devices/gnd.sym} 30 -260 0 0 {name=l1 lab=GND}
C {devices/vdd.sym} 30 -320 0 0 {name=l1 lab=VDD}
C {devices/lab_wire.sym} 210 -400 0 0 {name=l8 sig_type=std_logic lab=clk_500k}
C {devices/lab_wire.sym} 410 -380 0 0 {name=l9 sig_type=std_logic lab=rst_n}
C {devices/vsource.sym} 210 -350 0 0 {name=V_CLK value="0 pulse(1.8 0 0 100p 100p 1u 2u)"}
C {sky130_fd_pr/corner.sym} 130 -200 0 0 {name=CORNER only_toplevel=false corner=tt}
C {devices/gnd.sym} 210 -320 0 0 {name=l7 lab=GND}
C {devices/vsource.sym} 410 -300 0 0 {name=V_RST value="0 pulse(1.8 0 2u 100p 100p 2u 2)"}
C {devices/gnd.sym} 410 -270 0 0 {name=l4 lab=GND}
C {sky130_fd_pr/nfet_01v8.sym} 750 -320 1 0 {name=M1
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
C {devices/lab_wire.sym} 750 -360 0 1 {name=l5 sig_type=std_logic lab=cnt_2}
C {devices/gnd.sym} 750 -220 0 0 {name=l11 lab=GND}
C {sky130_fd_pr/nfet_01v8.sym} 830 -320 1 0 {name=M2
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
C {devices/lab_wire.sym} 830 -360 0 1 {name=l12 sig_type=std_logic lab=cnt_1}
C {devices/gnd.sym} 830 -220 0 0 {name=l13 lab=GND}
C {sky130_fd_pr/nfet_01v8.sym} 910 -320 1 0 {name=M3
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
C {devices/lab_wire.sym} 910 -360 0 1 {name=l14 sig_type=std_logic lab=cnt_0}
C {devices/gnd.sym} 910 -220 0 0 {name=l15 lab=GND}
C {devices/lab_wire.sym} 740 -390 0 1 {name=l10 sig_type=std_logic lab=cnt_[0..2]}
C {devices/launcher.sym} 1360 -70 0 0 {name=h2 
descr="Load/unload
TRAN waveforms" 
tclcommand="
xschem raw_read $netlist_dir/counter_tb.raw tran
"
}
