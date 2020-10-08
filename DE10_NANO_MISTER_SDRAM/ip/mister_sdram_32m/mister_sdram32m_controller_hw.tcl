# TCL File Generated by Component Editor 18.1
# Thu Oct 08 13:11:01 CST 2020
# DO NOT MODIFY


# 
# mister_sdram32m_controller "mister_sdram32m_controller" v1.0
#  2020.10.08.13:11:01
# 
# 

# 
# request TCL package from ACDS 16.1
# 
package require -exact qsys 16.1


# 
# module mister_sdram32m_controller
# 
set_module_property DESCRIPTION ""
set_module_property NAME mister_sdram32m_controller
set_module_property VERSION 1.0
set_module_property INTERNAL false
set_module_property OPAQUE_ADDRESS_MAP true
set_module_property GROUP Mister
set_module_property AUTHOR ""
set_module_property DISPLAY_NAME mister_sdram32m_controller
set_module_property INSTANTIATE_IN_SYSTEM_MODULE true
set_module_property EDITABLE true
set_module_property REPORT_TO_TALKBACK false
set_module_property ALLOW_GREYBOX_GENERATION false
set_module_property REPORT_HIERARCHY false


# 
# file sets
# 
add_fileset QUARTUS_SYNTH QUARTUS_SYNTH "" ""
set_fileset_property QUARTUS_SYNTH TOP_LEVEL mister_sdram32m_controller
set_fileset_property QUARTUS_SYNTH ENABLE_RELATIVE_INCLUDE_PATHS false
set_fileset_property QUARTUS_SYNTH ENABLE_FILE_OVERWRITE_MODE false
add_fileset_file mister_sdram32m_controller.v VERILOG PATH mister_sdram32m_controller.v TOP_LEVEL_FILE


# 
# parameters
# 


# 
# display items
# 


# 
# connection point clock
# 
add_interface clock clock end
set_interface_property clock clockRate 0
set_interface_property clock ENABLED true
set_interface_property clock EXPORT_OF ""
set_interface_property clock PORT_NAME_MAP ""
set_interface_property clock CMSIS_SVD_VARIABLES ""
set_interface_property clock SVD_ADDRESS_GROUP ""

add_interface_port clock clk clk Input 1


# 
# connection point reset
# 
add_interface reset reset end
set_interface_property reset associatedClock clock
set_interface_property reset synchronousEdges DEASSERT
set_interface_property reset ENABLED true
set_interface_property reset EXPORT_OF ""
set_interface_property reset PORT_NAME_MAP ""
set_interface_property reset CMSIS_SVD_VARIABLES ""
set_interface_property reset SVD_ADDRESS_GROUP ""

add_interface_port reset reset_n reset_n Input 1


# 
# connection point za
# 
add_interface za avalon end
set_interface_property za addressUnits WORDS
set_interface_property za associatedClock clock
set_interface_property za associatedReset reset
set_interface_property za bitsPerSymbol 8
set_interface_property za burstOnBurstBoundariesOnly false
set_interface_property za burstcountUnits WORDS
set_interface_property za explicitAddressSpan 0
set_interface_property za holdTime 0
set_interface_property za linewrapBursts false
set_interface_property za maximumPendingReadTransactions 7
set_interface_property za maximumPendingWriteTransactions 0
set_interface_property za readLatency 0
set_interface_property za readWaitTime 1
set_interface_property za setupTime 0
set_interface_property za timingUnits Cycles
set_interface_property za writeWaitTime 0
set_interface_property za ENABLED true
set_interface_property za EXPORT_OF ""
set_interface_property za PORT_NAME_MAP ""
set_interface_property za CMSIS_SVD_VARIABLES ""
set_interface_property za SVD_ADDRESS_GROUP ""

add_interface_port za za_waitrequest waitrequest Output 1
add_interface_port za az_addr address Input 24
add_interface_port za az_wr_n write_n Input 1
add_interface_port za az_rd_n read_n Input 1
add_interface_port za za_valid readdatavalid Output 1
add_interface_port za az_data writedata Input 16
add_interface_port za za_data readdata Output 16
add_interface_port za az_cs chipselect Input 1
add_interface_port za az_be_n byteenable_n Input 2
set_interface_assignment za embeddedsw.configuration.isFlash 0
set_interface_assignment za embeddedsw.configuration.isMemoryDevice 0
set_interface_assignment za embeddedsw.configuration.isNonVolatileStorage 0
set_interface_assignment za embeddedsw.configuration.isPrintableDevice 0


# 
# connection point conduit_end
# 
add_interface conduit_end conduit end
set_interface_property conduit_end associatedClock clock
set_interface_property conduit_end associatedReset reset
set_interface_property conduit_end ENABLED true
set_interface_property conduit_end EXPORT_OF ""
set_interface_property conduit_end PORT_NAME_MAP ""
set_interface_property conduit_end CMSIS_SVD_VARIABLES ""
set_interface_property conduit_end SVD_ADDRESS_GROUP ""

add_interface_port conduit_end zs_addr sdram_addr Output 13
add_interface_port conduit_end zs_ba sdram_ba Output 2
add_interface_port conduit_end zs_cas_n sdram_cas_n Output 1
add_interface_port conduit_end zs_cke sdram_cke Output 1
add_interface_port conduit_end zs_cs_n sdram_cs_n Output 1
add_interface_port conduit_end zs_dq sdram_dq Bidir 16
add_interface_port conduit_end zs_dqm sdram_dqm Output 2
add_interface_port conduit_end zs_ras_n sdram_ras_n Output 1
add_interface_port conduit_end zs_we_n sdram_we_n Output 1

