*****SNM_Hold state ***********

******Inverter 1*******
M1 nq1 nqbar1 0 0 n w=1.6u l=0.4u
M5 nq1 nqbar1 avdd avdd p w=0.6u l=0.8u

******Inverter 2*******
M2 nqbar2 nq2 0 0 n w=1.6u l=0.4u
M6 nqbar2 nq2 avdd avdd p w=0.6u l=0.8u

******Acess Transistor*****
M3 avdd avdd nq1 0 n w=0.8u l=0.4u
M4 avdd avdd nqbar2 0 n w=0.8u l=0.4u

******Including .lib file******
.lib '/home/vlsi/my_project/project2020/eda/ngspice-32/scn4m_subm.lib'nom
.temp 25

******Voltage sources******
v_nqbar1 nqbar1 0 5
v_nq2 nq2 0 5
vdd avdd 0 5

******Dc Analysis*****
.dc v_nqbar1 0 5 0.1 v_nq2 0 5 0.1

.control
run 
plot  v(nqbar2) vs v(nq2) v(nqbar1) vs v(nq1)
.endc
.end
