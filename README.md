# CMOS SRAM IP in MOSIS 0.5um CMOS Technology
## Table of Contents
- [SRAM Desgin](https://github.com/akpatro-github/sram#SRAM-Design)
- [Flowchart](#Flowchart)
- [Block Diagram](https://github.com/akpatro-github/sram#Block-Diagram)
- [Custom cells required for OpenRAM](https://github.com/akpatro-github/sram#Custom-cells-required-for-OpenRAM)
- [Pre-Layout](https://github.com/akpatro-github/sram#Pre-layout)
  - [6T-SRAM Memory cell](https://github.com/akpatro-github/sram#6T-SRAM-Memory-cell)
  - [Precharge circuit]
  - [Sense Amplifier](https://github.com/akpatro-github/sram#Sense-Amlifier)
  - [Write Driver](https://github.com/akpatro-github/sram#Write-Driver)
  - Tri-state Buffer
  - D-Flipflop
- Post-Layout
- [Installing EDA Tools in your device](https://github.com/akpatro-github/sram#Installing-EDA-Tools-in-your-device)
- Future work  
  
 ## SRAM Design
   
   The project is generally focused on the design of 1k*32-bit 6T SRAM memory using [OpenRAM](https://www.openidentityplatform.org/openam) compiler.For the design of the custom memory array, OpenRAM memory compiler takes design rules, custom cells to generate a SRAM memory cell.
   - SRAM Specification - Memory Size of 1k*32-bit, Operating voltage - 5V, Technology PDK file - 0.5um SCMOS Technology from MOSIS, Access time less than 30ns 
     - For more information on OpenRAM compiler please [click here](https://github.com/mguthaus/OpenRAM/blob/master/OpenRAM_ICCAD_2016_paper.pdf "OpenRAM")

 ## Flowchart
 ![Flowchart](https://github.com/akpatro-github/sram/blob/master/Diagrams/Block%20Diagram/flow_chart.png)
 
 ## Block Diagram
 ![block dia](https://user-images.githubusercontent.com/71965706/94511998-881da380-0238-11eb-91c3-ffe9e7b702da.png)

  The SRAM block consists of 8 major blocks:The bit-cell array, Address Decoder, Sense Amplifier, Word-line driver, Bit-cell precharge circuit, Writ Driver, Control logic and column MUX. In this project i have designed and characterised the Bit-cell array that all the devices of SRAM-6T cell using NGSpice tool with 0.5um SCMOS technology from MOSIS.

## Custom cells required for OpenRAM
 - SRAM Bit cell
 - Sense Amplifier
 - Write Driver
 - Tristate Buffer
 - D-Flipflop
 

### Installing EDA Tools in your device
- To Download EDA tools(NGSpice, Magic, Netgen) on your System clone the repo and follow the [Github page](https://www.github.com/silicon-vlsi/project2020).
**Clone the Repo**
'git clone https://www.github.com/silicon-vlsi/project2020'


## Future work
- To create the layout using Magic.
- To do post layout simulation.
- And to compile the whole circuit using the OpenRAM compiler. 

  
