## This file is a general .xdc for the Basys3 rev B board
## To use it in a project:
## - uncomment the lines corresponding to used pins
## - rename the used ports (in each line, after get_ports) according to the top level signal names in the project

## Clock signal
#set_property PACKAGE_PIN W5 [get_ports clk_in]				
	#set_property IOSTANDARD LVCMOS33 [get_ports clk_in]
	#create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports clk]
 
## Switches
set_property PACKAGE_PIN V17 [get_ports {D[7]}]			
set_property IOSTANDARD LVCMOS33 [get_ports {D[7]}]
set_property PACKAGE_PIN V16 [get_ports {D[6]}]		
set_property IOSTANDARD LVCMOS33 [get_ports {D[6]}]
set_property PACKAGE_PIN W16 [get_ports {D[5]}]					
set_property IOSTANDARD LVCMOS33 [get_ports {D[5]}]
set_property PACKAGE_PIN W17 [get_ports {D[4]}]				
set_property IOSTANDARD LVCMOS33 [get_ports {D[4]}]
set_property PACKAGE_PIN W15 [get_ports {D[3]}]					
set_property IOSTANDARD LVCMOS33 [get_ports {D[3]}]
set_property PACKAGE_PIN V15 [get_ports {D[2]}]					
set_property IOSTANDARD LVCMOS33 [get_ports {D[2]}]
set_property PACKAGE_PIN W14 [get_ports {D[1]}]					
set_property IOSTANDARD LVCMOS33 [get_ports {D[1]}]
set_property PACKAGE_PIN W13 [get_ports {D[0]}]					
set_property IOSTANDARD LVCMOS33 [get_ports {D[0]}]

set_property PACKAGE_PIN W2 [get_ports {selectie1}]					
set_property IOSTANDARD LVCMOS33 [get_ports {selectie1}]
set_property PACKAGE_PIN U1 [get_ports {selectie0}]					
set_property IOSTANDARD LVCMOS33 [get_ports {selectie0}]
set_property PACKAGE_PIN T1 [get_ports {ParalelLoad}]				
set_property IOSTANDARD LVCMOS33 [get_ports {ParalelLoad}]
set_property PACKAGE_PIN R2 [get_ports {reset}]					
set_property IOSTANDARD LVCMOS33 [get_ports {reset}]
 
set_property PACKAGE_PIN U16 [get_ports {Q[7]}]		
set_property IOSTANDARD LVCMOS33 [get_ports {Q[7]}]
set_property PACKAGE_PIN E19 [get_ports {Q[6]}]	
set_property IOSTANDARD LVCMOS33 [get_ports {Q[6]}]
set_property PACKAGE_PIN U19 [get_ports {Q[5]}]	
set_property IOSTANDARD LVCMOS33 [get_ports {Q[5]}]
set_property PACKAGE_PIN V19 [get_ports {Q[4]}]		
set_property IOSTANDARD LVCMOS33 [get_ports {Q[4]}]
set_property PACKAGE_PIN W18 [get_ports {Q[3]}]		
set_property IOSTANDARD LVCMOS33 [get_ports {Q[3]}]
set_property PACKAGE_PIN U15 [get_ports {Q[2]}]		
set_property IOSTANDARD LVCMOS33 [get_ports {Q[2]}]
set_property PACKAGE_PIN U14 [get_ports {Q[1]}]		
set_property IOSTANDARD LVCMOS33 [get_ports {Q[1]}]
set_property PACKAGE_PIN V14 [get_ports {Q[0]}]					
set_property IOSTANDARD LVCMOS33 [get_ports {Q[0]}]

set_property PACKAGE_PIN U18 [get_ports clk]						
set_property IOSTANDARD LVCMOS33 [get_ports clk]
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets clk]
