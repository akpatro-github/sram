******SRAM_6T CIRCUIT********

.SUBCKT sram_6T agnd avdd B BB W

******Inverter 1*******
M1 nq nqbar agnd agnd n w=1.6u l=0.4u
M5 nq nqbar avdd avdd p w=0.6u l=0.8u

******Inverter 2*******
M2 nqbar nq agnd agnd n w=1.6u l=0.4u
M6 nqbar nq avdd avdd p w=0.6u l=0.8u

******Acess Transistor*****
M3 B  W nq    agnd n w=0.8u l=0.4u
M4 BB W nqbar agnd n w=0.8u l=0.4u

.ENDS sram_6T

