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
 
## Pre-Layout

  To clone the Repository and download the Netlist files for Simulation, enter the following commands in your terminal
```
$  sudo apt install -y git
$  git clone https://github.com/akpatro-github/sram
$  cd sram/pre_layout_netlist/testbench
```

### 6T-SRAM Memory cell
  **Circuit Diagram**
  
![SRAM_6t](https://user-images.githubusercontent.com/71965706/96550231-382d7c00-12ce-11eb-95e7-e4aac9ccbe42.png)
  
  **DC Analysis of the Inverters**
  ```
  $ ngspice tb_dc.sp
  ```
  ![Dc sim](https://user-images.githubusercontent.com/71965706/94514148-1cd6d000-023e-11eb-8fc0-00866ce9f399.png)

  From the Dc Analysis we can get the operating point of the CMOS Inverters and we can also get the Design Margin for the pull-up and pull-down device by performing write operatrion. Using this sizes i am getting the margin of pull-up network be 10X then the size has used. 
  
  ### 6T cell Stability
  **Hold SNM**
  
  ![snm_hold](https://user-images.githubusercontent.com/71965706/96537268-723d5480-12b3-11eb-8a28-a5287f05e7d5.png)
  
  ```
  $ ngspice snm_hold.sp
  ```
  ![snm_hold](https://user-images.githubusercontent.com/71965706/96468772-1b4f6500-124a-11eb-842e-e0a1d4b05bab.png)
  
  **Read SNM**
  
![snm_read](https://user-images.githubusercontent.com/71965706/96537701-8d5c9400-12b4-11eb-9cdd-57a2dcb1b334.png)
  
  ```
  $ ngspice snm_read.sp
  ```
![snm_read](https://user-images.githubusercontent.com/71965706/96537145-3609f400-12b3-11eb-9d63-2443f39e6f15.png)
  
  **Circuit Daigram of SRAM cell with all Parasitcs**

![sram_parasitcs](https://user-images.githubusercontent.com/71965706/96549455-239cb400-12cd-11eb-8d27-67c1fd624be1.png)

  In the above circuit diagram consists of SRAM_6T cell with all its parasitics, precharged circuit, sense amplifier and write driver.As 1kx32-bit SRAM consists of 32k of bit cells, so it can taken as 128*256 number of cells(i.e. 128 number of rows and 256 number of columns). For Simulation we are taking one 6T SRAM cell with the parasitic capacitor of all the cells. cw1, cw2, cw3 are the wire load capacitors(10fF/cell) which are connected to BIT, complementary BIT and word line. Simillarly M6, M7, M8, M9 are the parasitic mosfets which is equaly do the operation like 1kx32-bit cell array. 
  Here  I have done a Transiant analysis(excluding sense Amp and write driver).
  
  **Transient Analysis**

![SRAM_sim](https://user-images.githubusercontent.com/71965706/94520666-472e8a80-024a-11eb-9492-f35dc69cfd40.png)
  
   In the above simulation i have done a Write-Read-write operation. Red colored one is my input signal to Pre-charge circuit. Blue colored one represents the word line signal, next 2 signals represents the BIT and complemet BIT signal and last two signals represents the internal node volatages which stored in the cell(i.e. q and qbar).
   I have calculated the maximum volatages variation at internal node(which is happening in the time of Read Operation) for different [PVT](https://in.search.yahoo.com/search?fr=mcafee&type=D210IN662G0&p=pvt+corner+in+vlsi) corners(i.e. SS, NOM & FF corner) and for the temperature -40C,25C and 105C.
    
  **Simulation Result**
  
  ![SRAM](https://user-images.githubusercontent.com/71965706/94521572-e99b3d80-024b-11eb-967b-eef5a0cfa152.png)
  
### Sense Amlifier
  
  Sense Amplifier generally used to detect the node voltage stored in the memory. It will be operate at the time of Read operation. I have used a latch based Sense amplifier in my design.
  
  **Circuit Diagram**
   
 ![Sense](https://user-images.githubusercontent.com/71965706/94522258-ff5d3280-024c-11eb-9a69-a9c65f69bedb.png)
  
### Write Driver

  The write drivers send the input data signals onto the bit-lines for a write operation. The write drivers are tri-stated so that they can be placed between the column multiplexer/memory array and the sense amplifiers. There is one write driver for each input data bit.

**Circuit Diagram**

![write_driver](https://user-images.githubusercontent.com/71965706/94522716-b48fea80-024d-11eb-8e7a-538e793c3781.png)

## Simulation of 6T-SRAM cell with write driver and sense amplifier
  ```
   $ ngspice tb_tran.sp
  ```
![clk sync](https://user-images.githubusercontent.com/71965706/94522882-fae54980-024d-11eb-91bf-f5a0534491ce.png)

### Installing EDA Tools in your device
- To Download EDA tools(NGSpice, Magic, Netgen) on your System clone the repo and follow the [Github page](https://www.github.com/silicon-vlsi/project2020).
**Clone the Repo**
'git clone https://www.github.com/silicon-vlsi/project2020'


## Future work
- To create the layout using Magic.
- To do post layout simulation.
- And to compile the whole circuit using the OpenRAM compiler. 

  
