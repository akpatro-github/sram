# Design and simulation of 1k 32-bit 6T-SRAM using NGSpice
## Table of Contents
- SRAM Desgin
- Block Diagram
- Pre-Layout
  - 6T-SRAM Memory cell
  - Precharge circuit
  - Sense Amplifier
  - Write Driver
  
  
  ## SRAM Design
    The project is generally focused on the design of 1k 32-bit 6T SRAM memory using [OpenRAM](https://www.openidentityplatform.org/openam) compiler.For the design of the custom memory array, OpenRAM memory compiler takes in Spice nelist file and Layout file to generate a SRAM memory cell.
   - SRAM Specification - Memory Size of 1k 32-bit, Operating voltage - 5V, Technology PDK file - 0.5um SCMOS Technology from MOSIS, Access time less than 30ns 
     - For more information on OpenRAM compiler please [click here](https://github.com/mguthaus/OpenRAM/blob/master/OpenRAM_ICCAD_2016_paper.pdf "OpenRAM")
   ## Block Diagram
![block dia](https://user-images.githubusercontent.com/71965706/94511998-881da380-0238-11eb-91c3-ffe9e7b702da.png)

  The SRAM block consists of 8 major blocks:The bit-cell array, Address Decoder, Sense Amplifier, Word-line driver, Bit-cell precharge circuit, Writ Driver, Control logic and column MUX. In this project i have designed and characterised the Bit-cell array that all the devices of SRAM-6T cell using NGSpice tool with 0.5um SCMOS technology from MOSIS.
  ## Pre-Layout
   In this section I have represented the DC analysis and Transient Analysis of the 6T-SRAM cell which i have simulated using NGSpice.
   ### 6T-SRAM Memory cell
  **Circuit Diagram**
  
  
  ![SRAM_6t](https://user-images.githubusercontent.com/71965706/94513996-b6ea4880-023d-11eb-81be-3733cea20c55.png)
  
  
  **DC Analysis**
  
  ![Dc sim](https://user-images.githubusercontent.com/71965706/94514148-1cd6d000-023e-11eb-8fc0-00866ce9f399.png)

  From the Dc Analysis we can get the operating point of the CMOS Inverters and we can also get the Design Margin for the pull-up and pull-down device by performing write operatrion. 
  
  **Circuit Daigram of SRAM cell with all Parasitcs**
  
  ![sram_parasitcs](https://user-images.githubusercontent.com/71965706/94519493-3715ab80-0248-11eb-9020-a3098cc748f5.png)


  
