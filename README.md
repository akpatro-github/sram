# Design and simulation of 1k 32-bit 6T-SRAM using NGSpice
## Table of Contents
- SRAM Desgin
- Block Diagram
- Pre-Layout
  - 1k 32-bit 6T-SRAM Memory cell
  - Precharge circuit
  - Sense Amplifier
  - Write Driver
  
  
  ## SRAM Design
    The project is generally focused on the design of 1k 32-bit 6T SRAM memory using [OpenRAM](https://www.openidentityplatform.org/openam) compiler.For the design of the custom memory array, OpenRAM memory compiler takes in Spice nelist file and Layout file to generate a SRAM memory cell.
   - SRAM Specification - Memory Size of 1k 32-bit, Operating voltage - 5V, Technology PDK file - 0.5um SCMOS Technology from MOSIS, Access time less than 30ns 
     - For more information on OpenRAM compiler please [click here](https://github.com/mguthaus/OpenRAM/blob/master/OpenRAM_ICCAD_2016_paper.pdf "OpenRAM")
   ## Block Diagram
![block dia](https://user-images.githubusercontent.com/71965706/94511998-881da380-0238-11eb-91c3-ffe9e7b702da.png)
