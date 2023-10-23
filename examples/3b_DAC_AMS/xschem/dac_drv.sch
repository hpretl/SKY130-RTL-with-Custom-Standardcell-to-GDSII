v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {Buffer for DAC.} 470 -200 0 0 0.4 0.4 {}
N 460 -350 530 -350 { lab=vss}
N 400 -350 420 -350 { lab=in}
N 460 -620 530 -620 { lab=vdd}
N 460 -280 530 -280 { lab=vss}
N 300 -440 400 -440 { lab=in}
N 300 -620 460 -620 { lab=vdd}
N 460 -440 460 -380 {
lab=#net1}
N 400 -550 420 -550 {
lab=in}
N 400 -440 400 -350 {
lab=in}
N 460 -620 460 -580 {
lab=vdd}
N 530 -620 530 -550 {
lab=vdd}
N 310 -280 460 -280 { lab=vss}
N 460 -550 530 -550 {
lab=vdd}
N 400 -550 400 -500 {
lab=in}
N 460 -320 460 -280 {
lab=vss}
N 530 -350 530 -280 { lab=vss}
N 800 -550 820 -550 {
lab=#net1}
N 860 -620 860 -580 {
lab=vdd}
N 930 -620 930 -550 {
lab=vdd}
N 860 -550 930 -550 {
lab=vdd}
N 800 -550 800 -500 {
lab=#net1}
N 600 -620 670 -620 {
lab=vdd}
N 860 -350 930 -350 { lab=vss}
N 800 -350 820 -350 { lab=#net1}
N 860 -320 860 -280 {
lab=vss}
N 930 -350 930 -280 { lab=vss}
N 530 -280 860 -280 {
lab=vss}
N 800 -440 800 -350 {
lab=#net1}
N 460 -440 600 -440 {
lab=#net1}
N 860 -440 860 -380 {
lab=out}
N 990 -440 1020 -440 {
lab=out}
N 600 -470 600 -440 {
lab=#net1}
N 400 -500 560 -500 {
lab=in}
N 600 -620 600 -530 {
lab=vdd}
N 600 -500 670 -500 {
lab=vdd}
N 670 -620 670 -500 {
lab=vdd}
N 860 -620 930 -620 {
lab=vdd}
N 860 -280 930 -280 {
lab=vss}
N 600 -440 800 -440 {
lab=#net1}
N 990 -620 990 -530 {
lab=vdd}
N 930 -620 990 -620 {
lab=vdd}
N 800 -500 950 -500 {
lab=#net1}
N 990 -470 990 -440 {
lab=out}
N 990 -500 1060 -500 {
lab=vdd}
N 1060 -620 1060 -500 {
lab=vdd}
N 990 -620 1060 -620 {
lab=vdd}
N 400 -500 400 -440 {
lab=in}
N 670 -620 860 -620 {
lab=vdd}
N 460 -520 460 -440 {
lab=#net1}
N 860 -520 860 -440 {
lab=out}
N 530 -620 600 -620 {
lab=vdd}
N 800 -500 800 -440 {
lab=#net1}
N 860 -440 990 -440 {
lab=out}
C {devices/ipin.sym} 300 -620 0 0 {name=p1 lab=vdd}
C {devices/ipin.sym} 310 -280 0 0 {name=p2 lab=vss}
C {devices/ipin.sym} 300 -440 0 0 {name=p3 lab=in}
C {devices/opin.sym} 1020 -440 0 0 {name=p4 lab=out}
C {devices/title.sym} 160 -30 0 0 {name=l1 author="Harald Pretl"}
C {sky130_fd_pr/nfet_01v8.sym} 440 -350 0 0 {name=M1
L=0.5
W=5
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
C {sky130_fd_pr/pfet_01v8.sym} 440 -550 0 0 {name=M2A
L=0.5
W=5
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 840 -550 0 0 {name=M4A
L=0.5
W=5
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 840 -350 0 0 {name=M3
L=0.5
W=5
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
C {sky130_fd_pr/pfet_01v8.sym} 580 -500 0 0 {name=M2B
L=0.5
W=5
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 970 -500 0 0 {name=M4B
L=0.5
W=5
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
