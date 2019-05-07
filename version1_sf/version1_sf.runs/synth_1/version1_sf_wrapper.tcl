# 
# Synthesis run script generated by Vivado
# 

create_project -in_memory -part xc7z010clg400-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir /home/ibai/vivado/ESDC/Lab2/version1_sf/version1_sf.cache/wt [current_project]
set_property parent.project_path /home/ibai/vivado/ESDC/Lab2/version1_sf/version1_sf.xpr [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
set_property board_part digilentinc.com:zybo:part0:1.0 [current_project]
set_property ip_repo_paths {
  /home/ibai/vivado/ESDC/Lab2/vga_sync
  /home/ibai/vivado/ESDC/Lab2/add_generator
} [current_project]
set_property ip_output_repo /home/ibai/vivado/ESDC/Lab2/version1_sf/version1_sf.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_vhdl -library xil_defaultlib /home/ibai/vivado/ESDC/Lab2/version1_sf/version1_sf.srcs/sources_1/bd/version1_sf/hdl/version1_sf_wrapper.vhd
add_files /home/ibai/vivado/ESDC/Lab2/version1_sf/version1_sf.srcs/sources_1/bd/version1_sf/version1_sf.bd
set_property used_in_implementation false [get_files -all /home/ibai/vivado/ESDC/Lab2/version1_sf/version1_sf.srcs/sources_1/bd/version1_sf/ip/version1_sf_axi_gpio_0_0/version1_sf_axi_gpio_0_0_board.xdc]
set_property used_in_implementation false [get_files -all /home/ibai/vivado/ESDC/Lab2/version1_sf/version1_sf.srcs/sources_1/bd/version1_sf/ip/version1_sf_axi_gpio_0_0/version1_sf_axi_gpio_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/ibai/vivado/ESDC/Lab2/version1_sf/version1_sf.srcs/sources_1/bd/version1_sf/ip/version1_sf_axi_gpio_0_0/version1_sf_axi_gpio_0_0.xdc]
set_property used_in_implementation false [get_files -all /home/ibai/vivado/ESDC/Lab2/version1_sf/version1_sf.srcs/sources_1/bd/version1_sf/ip/version1_sf_axi_gpio_0_1/version1_sf_axi_gpio_0_1_board.xdc]
set_property used_in_implementation false [get_files -all /home/ibai/vivado/ESDC/Lab2/version1_sf/version1_sf.srcs/sources_1/bd/version1_sf/ip/version1_sf_axi_gpio_0_1/version1_sf_axi_gpio_0_1_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/ibai/vivado/ESDC/Lab2/version1_sf/version1_sf.srcs/sources_1/bd/version1_sf/ip/version1_sf_axi_gpio_0_1/version1_sf_axi_gpio_0_1.xdc]
set_property used_in_implementation false [get_files -all /home/ibai/vivado/ESDC/Lab2/version1_sf/version1_sf.srcs/sources_1/bd/version1_sf/ip/version1_sf_axi_gpio_0_2/version1_sf_axi_gpio_0_2_board.xdc]
set_property used_in_implementation false [get_files -all /home/ibai/vivado/ESDC/Lab2/version1_sf/version1_sf.srcs/sources_1/bd/version1_sf/ip/version1_sf_axi_gpio_0_2/version1_sf_axi_gpio_0_2_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/ibai/vivado/ESDC/Lab2/version1_sf/version1_sf.srcs/sources_1/bd/version1_sf/ip/version1_sf_axi_gpio_0_2/version1_sf_axi_gpio_0_2.xdc]
set_property used_in_implementation false [get_files -all /home/ibai/vivado/ESDC/Lab2/version1_sf/version1_sf.srcs/sources_1/bd/version1_sf/ip/version1_sf_axi_gpio_0_3/version1_sf_axi_gpio_0_3_board.xdc]
set_property used_in_implementation false [get_files -all /home/ibai/vivado/ESDC/Lab2/version1_sf/version1_sf.srcs/sources_1/bd/version1_sf/ip/version1_sf_axi_gpio_0_3/version1_sf_axi_gpio_0_3_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/ibai/vivado/ESDC/Lab2/version1_sf/version1_sf.srcs/sources_1/bd/version1_sf/ip/version1_sf_axi_gpio_0_3/version1_sf_axi_gpio_0_3.xdc]
set_property used_in_implementation false [get_files -all /home/ibai/vivado/ESDC/Lab2/version1_sf/version1_sf.srcs/sources_1/bd/version1_sf/ip/version1_sf_processing_system7_0_3/version1_sf_processing_system7_0_3.xdc]
set_property used_in_implementation false [get_files -all /home/ibai/vivado/ESDC/Lab2/version1_sf/version1_sf.srcs/sources_1/bd/version1_sf/ip/version1_sf_rst_ps7_0_100M_1/version1_sf_rst_ps7_0_100M_1_board.xdc]
set_property used_in_implementation false [get_files -all /home/ibai/vivado/ESDC/Lab2/version1_sf/version1_sf.srcs/sources_1/bd/version1_sf/ip/version1_sf_rst_ps7_0_100M_1/version1_sf_rst_ps7_0_100M_1.xdc]
set_property used_in_implementation false [get_files -all /home/ibai/vivado/ESDC/Lab2/version1_sf/version1_sf.srcs/sources_1/bd/version1_sf/ip/version1_sf_rst_ps7_0_100M_1/version1_sf_rst_ps7_0_100M_1_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/ibai/vivado/ESDC/Lab2/version1_sf/version1_sf.srcs/sources_1/bd/version1_sf/ip/version1_sf_blk_mem_gen_0_0/version1_sf_blk_mem_gen_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/ibai/vivado/ESDC/Lab2/version1_sf/version1_sf.srcs/sources_1/bd/version1_sf/ip/version1_sf_xbar_2/version1_sf_xbar_2_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/ibai/vivado/ESDC/Lab2/version1_sf/version1_sf.srcs/sources_1/bd/version1_sf/ip/version1_sf_auto_pc_0/version1_sf_auto_pc_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/ibai/vivado/ESDC/Lab2/version1_sf/version1_sf.srcs/sources_1/bd/version1_sf/version1_sf_ooc.xdc]
set_property is_locked true [get_files /home/ibai/vivado/ESDC/Lab2/version1_sf/version1_sf.srcs/sources_1/bd/version1_sf/version1_sf.bd]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc /home/ibai/vivado/ESDC/Lab2/version1_sf/version1_sf.srcs/constrs_1/imports/Lab2/zyboVGA_lab2_sw.xdc
set_property used_in_implementation false [get_files /home/ibai/vivado/ESDC/Lab2/version1_sf/version1_sf.srcs/constrs_1/imports/Lab2/zyboVGA_lab2_sw.xdc]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]

synth_design -top version1_sf_wrapper -part xc7z010clg400-1


write_checkpoint -force -noxdef version1_sf_wrapper.dcp

catch { report_utilization -file version1_sf_wrapper_utilization_synth.rpt -pb version1_sf_wrapper_utilization_synth.pb }
