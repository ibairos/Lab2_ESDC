# 
# Synthesis run script generated by Vivado
# 

set_param project.vivado.isBlockSynthRun true
set_msg_config -msgmgr_mode ooc_run
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
read_ip -quiet /home/ibai/vivado/ESDC/Lab2/version1_sf/version1_sf.srcs/sources_1/bd/version1_sf/ip/version1_sf_axi_gpio_0_3/version1_sf_axi_gpio_0_3.xci
set_property used_in_implementation false [get_files -all /home/ibai/vivado/ESDC/Lab2/version1_sf/version1_sf.srcs/sources_1/bd/version1_sf/ip/version1_sf_axi_gpio_0_3/version1_sf_axi_gpio_0_3_board.xdc]
set_property used_in_implementation false [get_files -all /home/ibai/vivado/ESDC/Lab2/version1_sf/version1_sf.srcs/sources_1/bd/version1_sf/ip/version1_sf_axi_gpio_0_3/version1_sf_axi_gpio_0_3_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/ibai/vivado/ESDC/Lab2/version1_sf/version1_sf.srcs/sources_1/bd/version1_sf/ip/version1_sf_axi_gpio_0_3/version1_sf_axi_gpio_0_3.xdc]
set_property is_locked true [get_files /home/ibai/vivado/ESDC/Lab2/version1_sf/version1_sf.srcs/sources_1/bd/version1_sf/ip/version1_sf_axi_gpio_0_3/version1_sf_axi_gpio_0_3.xci]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]

set cached_ip [config_ip_cache -export -no_bom -use_project_ipc -dir /home/ibai/vivado/ESDC/Lab2/version1_sf/version1_sf.runs/version1_sf_axi_gpio_0_3_synth_1 -new_name version1_sf_axi_gpio_0_3 -ip [get_ips version1_sf_axi_gpio_0_3]]

if { $cached_ip eq {} } {

synth_design -top version1_sf_axi_gpio_0_3 -part xc7z010clg400-1 -mode out_of_context

#---------------------------------------------------------
# Generate Checkpoint/Stub/Simulation Files For IP Cache
#---------------------------------------------------------
catch {
 write_checkpoint -force -noxdef -rename_prefix version1_sf_axi_gpio_0_3_ version1_sf_axi_gpio_0_3.dcp

 set ipCachedFiles {}
 write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ version1_sf_axi_gpio_0_3_stub.v
 lappend ipCachedFiles version1_sf_axi_gpio_0_3_stub.v

 write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ version1_sf_axi_gpio_0_3_stub.vhdl
 lappend ipCachedFiles version1_sf_axi_gpio_0_3_stub.vhdl

 write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ version1_sf_axi_gpio_0_3_sim_netlist.v
 lappend ipCachedFiles version1_sf_axi_gpio_0_3_sim_netlist.v

 write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ version1_sf_axi_gpio_0_3_sim_netlist.vhdl
 lappend ipCachedFiles version1_sf_axi_gpio_0_3_sim_netlist.vhdl

 config_ip_cache -add -dcp version1_sf_axi_gpio_0_3.dcp -move_files $ipCachedFiles -use_project_ipc -ip [get_ips version1_sf_axi_gpio_0_3]
}

rename_ref -prefix_all version1_sf_axi_gpio_0_3_

write_checkpoint -force -noxdef version1_sf_axi_gpio_0_3.dcp

catch { report_utilization -file version1_sf_axi_gpio_0_3_utilization_synth.rpt -pb version1_sf_axi_gpio_0_3_utilization_synth.pb }

if { [catch {
  file copy -force /home/ibai/vivado/ESDC/Lab2/version1_sf/version1_sf.runs/version1_sf_axi_gpio_0_3_synth_1/version1_sf_axi_gpio_0_3.dcp /home/ibai/vivado/ESDC/Lab2/version1_sf/version1_sf.srcs/sources_1/bd/version1_sf/ip/version1_sf_axi_gpio_0_3/version1_sf_axi_gpio_0_3.dcp
} _RESULT ] } { 
  send_msg_id runtcl-3 error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
  error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
}

if { [catch {
  write_verilog -force -mode synth_stub /home/ibai/vivado/ESDC/Lab2/version1_sf/version1_sf.srcs/sources_1/bd/version1_sf/ip/version1_sf_axi_gpio_0_3/version1_sf_axi_gpio_0_3_stub.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a Verilog synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  write_vhdl -force -mode synth_stub /home/ibai/vivado/ESDC/Lab2/version1_sf/version1_sf.srcs/sources_1/bd/version1_sf/ip/version1_sf_axi_gpio_0_3/version1_sf_axi_gpio_0_3_stub.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a VHDL synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  write_verilog -force -mode funcsim /home/ibai/vivado/ESDC/Lab2/version1_sf/version1_sf.srcs/sources_1/bd/version1_sf/ip/version1_sf_axi_gpio_0_3/version1_sf_axi_gpio_0_3_sim_netlist.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the Verilog functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

if { [catch {
  write_vhdl -force -mode funcsim /home/ibai/vivado/ESDC/Lab2/version1_sf/version1_sf.srcs/sources_1/bd/version1_sf/ip/version1_sf_axi_gpio_0_3/version1_sf_axi_gpio_0_3_sim_netlist.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the VHDL functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}


} else {


if { [catch {
  file copy -force /home/ibai/vivado/ESDC/Lab2/version1_sf/version1_sf.runs/version1_sf_axi_gpio_0_3_synth_1/version1_sf_axi_gpio_0_3.dcp /home/ibai/vivado/ESDC/Lab2/version1_sf/version1_sf.srcs/sources_1/bd/version1_sf/ip/version1_sf_axi_gpio_0_3/version1_sf_axi_gpio_0_3.dcp
} _RESULT ] } { 
  send_msg_id runtcl-3 error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
  error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
}

if { [catch {
  file rename -force /home/ibai/vivado/ESDC/Lab2/version1_sf/version1_sf.runs/version1_sf_axi_gpio_0_3_synth_1/version1_sf_axi_gpio_0_3_stub.v /home/ibai/vivado/ESDC/Lab2/version1_sf/version1_sf.srcs/sources_1/bd/version1_sf/ip/version1_sf_axi_gpio_0_3/version1_sf_axi_gpio_0_3_stub.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a Verilog synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  file rename -force /home/ibai/vivado/ESDC/Lab2/version1_sf/version1_sf.runs/version1_sf_axi_gpio_0_3_synth_1/version1_sf_axi_gpio_0_3_stub.vhdl /home/ibai/vivado/ESDC/Lab2/version1_sf/version1_sf.srcs/sources_1/bd/version1_sf/ip/version1_sf_axi_gpio_0_3/version1_sf_axi_gpio_0_3_stub.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a VHDL synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  file rename -force /home/ibai/vivado/ESDC/Lab2/version1_sf/version1_sf.runs/version1_sf_axi_gpio_0_3_synth_1/version1_sf_axi_gpio_0_3_sim_netlist.v /home/ibai/vivado/ESDC/Lab2/version1_sf/version1_sf.srcs/sources_1/bd/version1_sf/ip/version1_sf_axi_gpio_0_3/version1_sf_axi_gpio_0_3_sim_netlist.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the Verilog functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

if { [catch {
  file rename -force /home/ibai/vivado/ESDC/Lab2/version1_sf/version1_sf.runs/version1_sf_axi_gpio_0_3_synth_1/version1_sf_axi_gpio_0_3_sim_netlist.vhdl /home/ibai/vivado/ESDC/Lab2/version1_sf/version1_sf.srcs/sources_1/bd/version1_sf/ip/version1_sf_axi_gpio_0_3/version1_sf_axi_gpio_0_3_sim_netlist.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the VHDL functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

}; # end if cached_ip 

if {[file isdir /home/ibai/vivado/ESDC/Lab2/version1_sf/version1_sf.ip_user_files/ip/version1_sf_axi_gpio_0_3]} {
  catch { 
    file copy -force /home/ibai/vivado/ESDC/Lab2/version1_sf/version1_sf.srcs/sources_1/bd/version1_sf/ip/version1_sf_axi_gpio_0_3/version1_sf_axi_gpio_0_3_stub.v /home/ibai/vivado/ESDC/Lab2/version1_sf/version1_sf.ip_user_files/ip/version1_sf_axi_gpio_0_3
  }
}

if {[file isdir /home/ibai/vivado/ESDC/Lab2/version1_sf/version1_sf.ip_user_files/ip/version1_sf_axi_gpio_0_3]} {
  catch { 
    file copy -force /home/ibai/vivado/ESDC/Lab2/version1_sf/version1_sf.srcs/sources_1/bd/version1_sf/ip/version1_sf_axi_gpio_0_3/version1_sf_axi_gpio_0_3_stub.vhdl /home/ibai/vivado/ESDC/Lab2/version1_sf/version1_sf.ip_user_files/ip/version1_sf_axi_gpio_0_3
  }
}
