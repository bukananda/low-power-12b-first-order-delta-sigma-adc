v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
P 4 1 370 -620 {}
N 320 -640 420 -640 {lab=VDD}
N 360 -620 420 -620 {lab=IN}
N 400 -600 420 -600 {lab=0}
N 400 -580 420 -580 {lab=#net1}
N 400 -580 400 -520 {lab=#net1}
N 280 -640 320 -640 {lab=VDD}
N 340 -620 360 -620 {lab=IN}
N 590 -800 640 -800 {lab=0}
N 590 -800 590 -790 {lab=0}
N 560 -820 640 -820 {lab=OUT1}
N 495 -860 640 -860 {lab=#net2}
N 560 -820 560 -725 {lab=OUT1}
N 620 -780 640 -780 {lab=0}
N 620 -780 620 -760 {lab=0}
N 530 -840 640 -840 {lab=#net3}
N 590 -600 620 -600 {lab=OUT1}
N 880 -820 930 -820 {lab=OUT2}
C {gnd.sym} 340 -560 0 0 {name=l2 lab=0}
C {gnd.sym} 400 -600 0 0 {name=l3 lab=0}
C {gnd.sym} 400 -460 0 0 {name=l4 lab=0}
C {gnd.sym} 420 -560 0 0 {name=l5 lab=0}
C {lab_pin.sym} 380 -620 1 0 {name=p2 sig_type=std_logic lab=IN}
C {devices/code_shown.sym} 185 -125 0 0 {name=MODELS1 only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {vsource.sym} 340 -590 0 0 {name=V2 value="PULSE(-1 1 0 50u 50u 0 100u)" savecurrent=false}
C {vsource.sym} 400 -490 0 0 {name=V4 value="PULSE(0 3.3 0 1n 1n 2.5u 5u)" savecurrent=false}
C {vsource.sym} 280 -610 0 0 {name=V1 value=3.3 savecurrent=false}
C {gnd.sym} 280 -580 0 0 {name=l1 lab=0}
C {COMPARATOR_SD.sym} 390 -460 0 0 {name=x1}
C {lab_pin.sym} 340 -640 1 0 {name=p3 sig_type=std_logic lab=VDD}
C {vsource.sym} 495 -830 0 0 {name=V3 value=3.3 savecurrent=false}
C {gnd.sym} 495 -800 0 0 {name=l7 lab=0}
C {gnd.sym} 590 -790 0 0 {name=l10 lab=0}
C {gnd.sym} 620 -760 0 0 {name=l11 lab=0}
C {DAC_1_BIT.sym} 630 -760 0 0 {name=x2}
C {vsource.sym} 530 -810 0 0 {name=V5 value=3.3 savecurrent=false}
C {gnd.sym} 530 -780 0 0 {name=l9 lab=0}
C {devices/code_shown.sym} 700 -685 0 0 {name=NGSPICE only_toplevel=true
value="
.param Wp=50u Wn=25u Ws=100u Ls=40u
.control
save all
tran 1u 1m
set color0=white
set color1=black
plot v(IN) v(OUT1) v(OUT2)
.endc

"}
C {lab_pin.sym} 600 -600 3 0 {name=p1 sig_type=std_logic lab=OUT1}
C {noconn.sym} 620 -600 2 0 {name=l6}
C {lab_pin.sym} 560 -750 0 0 {name=p4 sig_type=std_logic lab=OUT1}
C {noconn.sym} 560 -730 2 0 {name=l8}
C {lab_pin.sym} 910 -820 1 0 {name=p5 sig_type=std_logic lab=OUT2}
C {noconn.sym} 930 -820 1 0 {name=l12}
