*****Dc Analysis of 6T_SRAM******

.global vdd gnd
.lib '/home/vlsi/my_project/project2020/eda/ngspice-32/scn4m_subm.lib'nom


******Inverter*****
.subckt invX1 in out
m1 out in vdd vdd p w=2.6u l=0.4u m=1
m2 out in gnd gnd n w=0.74u l=0.4u m=1
.ends invX1

*******SRAM 6T cell*******

*******Acess Transistor******
m3 nq  nwl nbl  gnd n w=0.6u l=0.5u
m4 nqb nwl nblb gnd n w=0.6u l=0.5u

********Back to back inverter****
Xinv1 nq nqb invX1
Xinv2 nqb nq invX1

******DC char inv********
Xinv3 nin nout invX1

.temp 27
.param vsupply=5
*******For read operation read_en=1 and for write read_en=0******
.param read_en=0
.param vbl=vsupply*read_en
.param vblb=vsupply

V_vdd vdd 0 vsupply
V_nwl nwl 0 vsupply
V_bl  nbl  0 vbl
V_blb nblb 0 vblb
*
vinv nin 0 0

.nodeset v(nq)=vsupply*(1-read_en)

.op
*.dc vinv 0 5 0.1


.end

