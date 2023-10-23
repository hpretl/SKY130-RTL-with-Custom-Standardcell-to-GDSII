v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {Resistive R-string DAC w/ 3bit.

Target use is as analog test macro for TinyTapeout 5.

VDD=1.8V, IDD=~90uA @ 300K @ TT} 680 -1040 0 0 0.4 0.4 {}
N 380 -80 600 -80 { lab=vss}
N 380 -800 620 -800 {
lab=vdd}
N 380 -320 640 -320 {
lab=in0}
N 600 -660 640 -660 {
lab=vss}
N 600 -300 600 -140 {
lab=vss}
N 600 -300 640 -300 {
lab=vss}
N 600 -480 640 -480 {
lab=vss}
N 620 -700 640 -700 {
lab=vdd}
N 620 -800 620 -700 {
lab=vdd}
N 620 -700 620 -520 {
lab=vdd}
N 620 -520 640 -520 {
lab=vdd}
N 620 -520 620 -340 {
lab=vdd}
N 620 -340 640 -340 {
lab=vdd}
N 600 -480 600 -300 {
lab=vss}
N 600 -660 600 -480 {
lab=vss}
N 380 -500 640 -500 {
lab=in1}
N 380 -680 640 -680 {
lab=in2}
N 600 -120 600 -80 {
lab=vss}
N 600 -140 600 -120 {
lab=vss}
N 600 -120 640 -120 {
lab=vss}
N 620 -340 620 -160 {
lab=vdd}
N 620 -160 640 -160 {
lab=vdd}
N 600 -140 640 -140 {
lab=vss}
N 940 -700 1020 -700 {
lab=v2}
N 1080 -700 1120 -700 {
lab=#net1}
N 1180 -700 1300 -700 {
lab=vout}
N 1300 -700 1300 -640 {
lab=vout}
N 1300 -700 1560 -700 {
lab=vout}
N 1080 -340 1120 -340 {
lab=#net2}
N 1080 -160 1120 -160 {
lab=#net3}
N 940 -520 1020 -520 {
lab=v1}
N 940 -340 1020 -340 {
lab=v0}
N 940 -160 1020 -160 {
lab=#net4}
N 1300 -400 1300 -340 {
lab=#net5}
N 1180 -340 1300 -340 {
lab=#net5}
N 1300 -340 1300 -160 {
lab=#net5}
N 1180 -160 1300 -160 {
lab=#net5}
N 1300 -520 1300 -460 {
lab=#net6}
N 1180 -520 1300 -520 {
lab=#net6}
N 1300 -580 1300 -520 {
lab=#net6}
N 1240 -610 1280 -610 {
lab=vss}
N 1240 -280 1240 -80 {
lab=vss}
N 1150 -80 1240 -80 {
lab=vss}
N 1240 -430 1280 -430 {
lab=vss}
N 1050 -680 1050 -640 {
lab=vss}
N 1150 -640 1240 -640 {
lab=vss}
N 1240 -640 1240 -610 {
lab=vss}
N 1150 -680 1150 -640 {
lab=vss}
N 1050 -500 1050 -460 {
lab=vss}
N 1150 -460 1240 -460 {
lab=vss}
N 1150 -500 1150 -460 {
lab=vss}
N 1050 -320 1050 -280 {
lab=vss}
N 1150 -280 1240 -280 {
lab=vss}
N 1150 -320 1150 -280 {
lab=vss}
N 1050 -140 1050 -80 {
lab=vss}
N 1150 -140 1150 -80 {
lab=vss}
N 1240 -460 1240 -430 {
lab=vss}
N 1050 -640 1150 -640 {
lab=vss}
N 1240 -610 1240 -460 {
lab=vss}
N 1050 -460 1150 -460 {
lab=vss}
N 1240 -430 1240 -280 {
lab=vss}
N 1050 -280 1150 -280 {
lab=vss}
N 600 -80 1050 -80 {
lab=vss}
N 1050 -80 1150 -80 {
lab=vss}
N 1080 -520 1120 -520 {
lab=#net7}
C {devices/title.sym} 160 -30 0 0 {name=l1 author="Harald Pretl"}
C {devices/ipin.sym} 380 -800 0 0 {name=p1 lab=vdd}
C {devices/ipin.sym} 380 -80 0 0 {name=p2 lab=vss}
C {devices/opin.sym} 1560 -700 0 0 {name=p3 lab=vout}
C {devices/ipin.sym} 380 -320 0 0 {name=p4 lab=in0}
C {dac_drv.sym} 790 -680 0 0 {name=xdrv_b2}
C {dac_drv.sym} 790 -500 0 0 {name=xdrv_b1}
C {dac_drv.sym} 790 -320 0 0 {name=xdrv_b0}
C {devices/ipin.sym} 380 -500 0 0 {name=p6 lab=in1}
C {devices/ipin.sym} 380 -680 0 0 {name=p8 lab=in2}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} 1300 -610 0 0 {name=R1
W=0.35
L=1.4
model=res_xhigh_po_0p35
spiceprefix=X
mult=1}
C {dac_drv.sym} 790 -140 0 0 {name=xdrv_dummy}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} 1050 -700 3 0 {name=R2
W=0.35
L=1.4
model=res_xhigh_po_0p35
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} 1150 -700 3 0 {name=R3
W=0.35
L=1.4
model=res_xhigh_po_0p35
spiceprefix=X
mult=1}
C {devices/spice_probe.sym} 1440 -700 0 0 {name=p10 attrs=""}
C {devices/lab_wire.sym} 970 -700 0 0 {name=l2 lab=v2}
C {devices/lab_wire.sym} 970 -520 0 0 {name=l4 lab=v1}
C {devices/lab_wire.sym} 970 -340 0 0 {name=l5 lab=v0}
C {devices/spice_probe.sym} 970 -700 0 0 {name=p11 attrs=""}
C {devices/spice_probe.sym} 970 -520 0 0 {name=p5 attrs=""}
C {devices/spice_probe.sym} 970 -340 0 0 {name=p7 attrs=""}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} 1300 -430 0 0 {name=R4
W=0.35
L=1.4
model=res_xhigh_po_0p35
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} 1050 -520 3 0 {name=R5
W=0.35
L=1.4
model=res_xhigh_po_0p35
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} 1150 -520 3 0 {name=R6
W=0.35
L=1.4
model=res_xhigh_po_0p35
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} 1050 -340 3 0 {name=R8
W=0.35
L=1.4
model=res_xhigh_po_0p35
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} 1150 -340 3 0 {name=R9
W=0.35
L=1.4
model=res_xhigh_po_0p35
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} 1050 -160 3 0 {name=R10
W=0.35
L=1.4
model=res_xhigh_po_0p35
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} 1150 -160 3 0 {name=R11
W=0.35
L=1.4
model=res_xhigh_po_0p35
spiceprefix=X
mult=1}
