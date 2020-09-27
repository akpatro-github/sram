*******SRAM cell with all parasitics*******

xi1 gnd vdd bl blb wl sram_6T

*******Wire Load Cap*******
cw1 bl 0 1270f
cw2 blb 0 1270f
cw3 wl 0 5100f

*******Pre-charge Circuit******
mp1 bl  pc  vdd vdd p w=3u l=0.4u m=1
mp2 blb pc  vdd vdd p w=3u l=0.4u m=1
mp3 bl  pc  blb vdd p w=3u l=0.4u m=1
******For write operation********
*mn4 bl  nw0 gnd gnd n w=3u l=0.4u m=1
*mn5 blb nw1 gnd gnd n w=3u l=0.4u m=1

*******Parasitic Transistors*******
m6 bl  gnd vdd gnd n w=0.8u l=0.4u m=127
m7 blb gnd vdd gnd n w=0.8u l=0.4u m=127
m8 vdd wl  gnd gnd n w=0.8u l=0.4u m=255
m9 vdd wl  vdd gnd n w=0.8u l=0.4u m=255
*******Syncronise fron clock signal*******
m10 vdd clk pc vdd p w=2u l=0.4u m=1
m11 pc clk gnd gnd n w=1u l=0.4u m=1
*****Adding sram_6t.sp file******
.include '/home/vlsi/Desktop/my_lab/sram_6T.sp'
.global gnd
.end

