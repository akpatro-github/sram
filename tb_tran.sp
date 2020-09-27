**********Testbench For transiiant Analysis********

.temp 105
.NODESET v(xi1.nq)=5
.tran 5p 300n

.include '/home/vlsi/Desktop/my_lab/sram_parasitics.sp'
.include '/home/vlsi/Desktop/my_lab/sense_amp.sp'
.include '/home/vlsi/Desktop/my_lab/write_driver.sp'
.lib '/home/vlsi/my_project/project2020/eda/ngspice-32/scn4m_subm.lib'ff

******Voltage Sources******
vsup vdd 0 dc 5
v_clk clk 0 PULSE(0 5 0n 1n 1n 13n 30n)
*v_w0 nw0 0 PULSE(0 5 20n  2n 2n 18n 230n)
*v_w1 nw1 0 PULSE(0 5 140n 2n 2n 18n 230n)
v_wl wl  0 PULSE(0 5 23n  1n 1n 5n 30n)
v_en en  0 PULSE(5 0 26n 1n 1n 2n 60n)
v_din din 0 PULSE(5 0 45n 1n 1n 6n 120n)
v_w_en w_en 0 PULSE(0 5 45n 1n 1n 6n 60n)
.control
run
plot v(clk)+42 v(pc)+36 v(wl)+24 v(bl)+18 v(blb)+18 v(xi1.nq)+12 v(xi1.nqbar)+12 v(nout)+6 v(en) v(w_en)+30
.endc
.end
