# CMOS SRAM IP in MOSIS 0.5um CMOS Technology
## Table of Contents
- [Introduction](https://github.com/akpatro-github/sram#Introduction)
- [Flowchart](https://github.com/akpatro-github/sram#Flowchart)
- [Description](https://github.com/akpatro-github/sram#Description)
- [Directory Structure](https://github.com/akpatro-github/sram#Directory-Structure)
- [EDA Setup](https://github.com/akpatro-github/sram#EDA-setup)
- [Acknowledgement](https://github.com/akpatro-github/sram#Acknowledgement)

## Introduction
This project throws light on Designing of 1kx32-bit 6T SRAM memory using [OpenRAM](https://www.openidentityplatform.org/openam) compiler. 
 - **SRAM Specification** 
	 -  Memory Size --> 1kx32-bit
	 - Technology PDK file --> 0.4um SCMOS Technology from MOSIS
	 -  Operating voltage --> 5V
	 - Access time --> less than 30ns
## Flow Chart
 Below flow chart gives a complete idea of project.

![Flowchart](https://github.com/akpatro-github/sram/blob/master/Diagrams/Block%20Diagram/flow_chart.png)

## Description
### Tools Used

 - **NgSpice** - Ngspice is a mixed-level/mixed-signal [electronic circuit simulator](https://en.wikipedia.org/wiki/Electronic_circuit_simulation). It is a successor of the latest stable release of Berkeley [SPICE](https://en.wikipedia.org/wiki/SPICE "SPICE"), version [3f.5](http://embedded.eecs.berkeley.edu/pubs/downloads/spice/index.htm), which was released in 1993. Ngspice is based on three [open-source](https://en.wikipedia.org/wiki/Open-source_software "Free-software")  [free-software](https://en.wikipedia.org/wiki/Free-software) packages: [Spice3f5](http://embedded.eecs.berkeley.edu/pubs/downloads/spice/index.htm), [Xspice](http://ngspice.sourceforge.net/xspice.html) and [Cider1b1](http://www.eecs.berkeley.edu/Pubs/TechRpts/1993/2382.htm)
	-   [SPICE](https://en.wikipedia.org/wiki/SPICE) is the origin of all electronic circuit simulators, its successors are widely used in the electronics community.
	-   [Xspice](https://en.wikipedia.org/wiki/Ngspice#cite_note-5)  is an extension to Spice3 that provides additional C language code models to support analog behavioral modeling and co-simulation of digital components through a fast event-driven algorithm.
	-   [Cider](https://en.wikipedia.org/wiki/Ngspice#cite_note-6)  adds a numerical device simulator to ngspice. It couples the circuit-level simulator to the device simulator to provide enhanced simulation accuracy (at the expense of increased simulation time). Critical devices can be described with their technology parameters (numerical models), all others may use the original ngspice compact models.
	 
 - **Magic** - Magic is a venerable VLSI layout tool, written in the 1980's at Berkeley by John Ousterhout, now famous primarily for writing the scripting interpreter language Tcl. Due largely in part to its liberal Berkeley open-source license, magic has remained popular with universities and small companies. The open-source license has allowed VLSI engineers with a bent toward programming to implement clever ideas and help magic stay abreast of fabrication technology. However, it is the well thought-out core algorithms which lend to magic the greatest part of its popularity. Magic is widely cited as being the easiest tool to use for circuit layout, even for people who ultimately rely on commercial tools for their product design flow.
 -  **OpenRAM** - OpenRAM is an award winning open-source Python framework to create the layout, netlists, timing and power models, placement and routing models, and other views necessary to use SRAMs in ASIC design. OpenRAM supports integration in both commercial and open-source flows with both predictive and fabricable technologies. For more information on OpenRAM compiler please [click here](https://github.com/mguthaus/OpenRAM/blob/master/OpenRAM_ICCAD_2016_paper.pdf "OpenRAM")
### Input And Output Files for the tools 

![Flowchart](https://github.com/akpatro-github/sram/blob/master/Diagrams/Block%20Diagram/flow_chart.png)

## Directory Structure
```bash
<HOME_DIR> [eg. /home/vlsi]
   ├── sram	[Git repo]
	   ├── OpenRAM_sizing [Sizing of all devices taken from OpenRAM]
		   ├──
		   ├──
       ├── SRAM_sizing	[SRAM Sizing has done mannualy]
	       ├──
	       ├──
```
## EDA Setup
- To Download EDA tools(NGSpice, Magic, Netgen) on your System clone the repo and follow the [Github page](https://www.github.com/silicon-vlsi/project2020).
**Clone the Repo**
'git clone https://www.github.com/silicon-vlsi/project2020'
## Acknowledgement
- Dr.Saroj Rout, Associate Professor, Silicon Institute of Technology
- Mr.Santunu sarangi, Assistant professor, Silicon Institute of Technology 
