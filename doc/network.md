TRD Design

https://xilinx.github.io/vck190-ethernet-trd/2022.2/build/html/docs/build_vivado_design.html#build-the-image



MAC

https://support.xilinx.com/s/article/1209580?language=en_US



GT 

https://support.xilinx.com/s/article/IPI-blog-GT-to-IP-Integration?language=en_US#access-gt-pins


https://xilinx-wiki.atlassian.net/wiki/spaces/A/pages/487489537/Versal+Example+Designs



https://support.xilinx.com/s/article/1209580?language=en_US


device
versal:xcvc1902:vsvd1760




write_bd_tcl -force -hier_blks [get_bd_cells /mrmac_subsystem] ./test_mrmac_subsystem.tcl

source ./test_mrmac_subsystem.tcl


create_hier_cell_mrmac_subsystem  / mrmac_subsystem


# set xci dir
set_property CUSTOMIZED_DEFAULT_IP_LOCATION ./ [current_project]

# set bd address
assign_bd_address -target_address_space /BLP_S_AXI_CTRL_USER_00 [get_bd_addr_segs mrmac_core/mrmac_0/ptp_3_s_axi/reg0 ] -offset 0x202_010D_0000 -range 64k

AIE


https://xilinx.github.io/Vitis-Tutorials/2022-1/build/html/docs/AI_Engine_Development/Feature_Tutorials/02-using-gmio/single_aie_gmio.html

https://docs.amd.com/r/2022.2-English/Vitis-Tutorials-AI-Engine-Development/Feature-Tutorials?tocId=AGuPcKu7nN5JjbYB32fJPw




# quick for debug

sudo tcpdump -i ens1f1 -xx

ping 192.168.10.2 -I ens1f1




overhead is UDP (8), IP (20), Ethernet(14), FCS (4), IFG (12), preamble (7), start frame delimiter (1)



# flash type

Select the OSPI memory device cfgmem-ospi-x8, density 2048, width x8. Ensure you do not select the dual-stacked version.
Select OK if it asks to program
In the Program Configuration Memory Device window, set the Configuration file to be the xilinx_vck5000-es1_g3x16_201921_1.pdi. Leave the Bin Offset at 0, set the Initialization PDI to vck5k_ospi2.pdi. Make sure Address Range is set to Configuration File Only


# pdi utility

https://support.xilinx.com/s/article/Versal-PDI-Modification-TCL-Utility?language=en_US


# versal platform creation

https://xilinx.github.io/Vitis-Tutorials/2021-2/build/html/docs/Vitis_Platform_Creation/Introduction/03_Edge_VCK190/README.html



# ospi
 
PMC_MIO12_500_K28 OSPI_RESET_B
PMC_MIO11_500_J28   
PMC_MIO10_500_H29 OSPI_CS0_B 
PMC_MIO9_500_J29  OSPI_DQ7
PMC_MIO8_500_L29  OSPI_DQ6
PMC_MIO7_500_L30  OSPI_DQ5
PMC_MIO6_500_K30  OSPI_DQS
PMC_MIO5_500_J30  OSPI_DQ4
PMC_MIO4_500_H30  OSPI_DQ3  
PMC_MIO3_500_H31  OSPI_DQ2  
PMC_MIO2_500_K31  OSPI_DQ1  
PMC_MIO1_500_K32  OSPI_DQ0  
PMC_MIO0_500_J32  OSPI_SCLK  




# device tree

https://xterra2.avnet.com/yocto/yocto-image-device-tree-modifications/-/tree/main



https://github.com/Xilinx/device-tree-xlnx






# ip xci format




set_param ips.validateJSONSchemaRead 0 ; set_param ips.validateJSONSchemaWrite 0".
'set_param ips.writeJSONXCIFile true




https://adaptivesupport.amd.com/s/question/0D54U00007HmnBTSAZ/how-to-fix-error-ipflow-198166?language=en_US