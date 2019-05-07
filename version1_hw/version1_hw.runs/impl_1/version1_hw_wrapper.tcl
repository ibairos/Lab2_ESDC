proc start_step { step } {
  set stopFile ".stop.rst"
  if {[file isfile .stop.rst]} {
    puts ""
    puts "*** Halting run - EA reset detected ***"
    puts ""
    puts ""
    return -code error
  }
  set beginFile ".$step.begin.rst"
  set platform "$::tcl_platform(platform)"
  set user "$::tcl_platform(user)"
  set pid [pid]
  set host ""
  if { [string equal $platform unix] } {
    if { [info exist ::env(HOSTNAME)] } {
      set host $::env(HOSTNAME)
    }
  } else {
    if { [info exist ::env(COMPUTERNAME)] } {
      set host $::env(COMPUTERNAME)
    }
  }
  set ch [open $beginFile w]
  puts $ch "<?xml version=\"1.0\"?>"
  puts $ch "<ProcessHandle Version=\"1\" Minor=\"0\">"
  puts $ch "    <Process Command=\".planAhead.\" Owner=\"$user\" Host=\"$host\" Pid=\"$pid\">"
  puts $ch "    </Process>"
  puts $ch "</ProcessHandle>"
  close $ch
}

proc end_step { step } {
  set endFile ".$step.end.rst"
  set ch [open $endFile w]
  close $ch
}

proc step_failed { step } {
  set endFile ".$step.error.rst"
  set ch [open $endFile w]
  close $ch
}


start_step init_design
set ACTIVE_STEP init_design
set rc [catch {
  create_msg_db init_design.pb
  create_project -in_memory -part xc7z010clg400-1
  set_property board_part digilentinc.com:zybo:part0:1.0 [current_project]
  set_property design_mode GateLvl [current_fileset]
  set_param project.singleFileAddWarning.threshold 0
  set_property webtalk.parent_dir /home/ibai/vivado/ESDC/Lab2/version1_hw/version1_hw.cache/wt [current_project]
  set_property parent.project_path /home/ibai/vivado/ESDC/Lab2/version1_hw/version1_hw.xpr [current_project]
  set_property ip_repo_paths {
  /home/ibai/vivado/ESDC/Lab2/wr_memory
  /home/ibai/vivado/ESDC/Lab2/vga_sync
  /home/ibai/vivado/ESDC/Lab2/control_v1
  /home/ibai/vivado/ESDC/Lab2/add_generator
} [current_project]
  set_property ip_output_repo /home/ibai/vivado/ESDC/Lab2/version1_hw/version1_hw.cache/ip [current_project]
  set_property ip_cache_permissions {read write} [current_project]
  set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY} [current_project]
  add_files -quiet /home/ibai/vivado/ESDC/Lab2/version1_hw/version1_hw.runs/synth_1/version1_hw_wrapper.dcp
  set_msg_config -source 4 -id {BD 41-1661} -suppress
  set_param project.isImplRun true
  add_files /home/ibai/vivado/ESDC/Lab2/version1_hw/version1_hw.srcs/sources_1/bd/version1_hw/version1_hw.bd
  set_property is_locked true [get_files /home/ibai/vivado/ESDC/Lab2/version1_hw/version1_hw.srcs/sources_1/bd/version1_hw/version1_hw.bd]
  set_param project.isImplRun false
  read_xdc /home/ibai/vivado/ESDC/Lab2/version1_hw/version1_hw.srcs/constrs_1/imports/Lab2/zyboVGA_HW.xdc
  set_param project.isImplRun true
  link_design -top version1_hw_wrapper -part xc7z010clg400-1
  set_param project.isImplRun false
  write_hwdef -force -file version1_hw_wrapper.hwdef
  close_msg_db -file init_design.pb
} RESULT]
if {$rc} {
  step_failed init_design
  return -code error $RESULT
} else {
  end_step init_design
  unset ACTIVE_STEP 
}

start_step opt_design
set ACTIVE_STEP opt_design
set rc [catch {
  create_msg_db opt_design.pb
  opt_design 
  write_checkpoint -force version1_hw_wrapper_opt.dcp
  catch { report_drc -file version1_hw_wrapper_drc_opted.rpt }
  close_msg_db -file opt_design.pb
} RESULT]
if {$rc} {
  step_failed opt_design
  return -code error $RESULT
} else {
  end_step opt_design
  unset ACTIVE_STEP 
}

start_step place_design
set ACTIVE_STEP place_design
set rc [catch {
  create_msg_db place_design.pb
  implement_debug_core 
  place_design 
  write_checkpoint -force version1_hw_wrapper_placed.dcp
  catch { report_io -file version1_hw_wrapper_io_placed.rpt }
  catch { report_utilization -file version1_hw_wrapper_utilization_placed.rpt -pb version1_hw_wrapper_utilization_placed.pb }
  catch { report_control_sets -verbose -file version1_hw_wrapper_control_sets_placed.rpt }
  close_msg_db -file place_design.pb
} RESULT]
if {$rc} {
  step_failed place_design
  return -code error $RESULT
} else {
  end_step place_design
  unset ACTIVE_STEP 
}

start_step route_design
set ACTIVE_STEP route_design
set rc [catch {
  create_msg_db route_design.pb
  route_design 
  write_checkpoint -force version1_hw_wrapper_routed.dcp
  catch { report_drc -file version1_hw_wrapper_drc_routed.rpt -pb version1_hw_wrapper_drc_routed.pb -rpx version1_hw_wrapper_drc_routed.rpx }
  catch { report_methodology -file version1_hw_wrapper_methodology_drc_routed.rpt -rpx version1_hw_wrapper_methodology_drc_routed.rpx }
  catch { report_power -file version1_hw_wrapper_power_routed.rpt -pb version1_hw_wrapper_power_summary_routed.pb -rpx version1_hw_wrapper_power_routed.rpx }
  catch { report_route_status -file version1_hw_wrapper_route_status.rpt -pb version1_hw_wrapper_route_status.pb }
  catch { report_clock_utilization -file version1_hw_wrapper_clock_utilization_routed.rpt }
  catch { report_timing_summary -warn_on_violation -max_paths 10 -file version1_hw_wrapper_timing_summary_routed.rpt -rpx version1_hw_wrapper_timing_summary_routed.rpx }
  close_msg_db -file route_design.pb
} RESULT]
if {$rc} {
  write_checkpoint -force version1_hw_wrapper_routed_error.dcp
  step_failed route_design
  return -code error $RESULT
} else {
  end_step route_design
  unset ACTIVE_STEP 
}

start_step write_bitstream
set ACTIVE_STEP write_bitstream
set rc [catch {
  create_msg_db write_bitstream.pb
  set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY} [current_project]
  catch { write_mem_info -force version1_hw_wrapper.mmi }
  write_bitstream -force version1_hw_wrapper.bit 
  catch { write_sysdef -hwdef version1_hw_wrapper.hwdef -bitfile version1_hw_wrapper.bit -meminfo version1_hw_wrapper.mmi -file version1_hw_wrapper.sysdef }
  catch {write_debug_probes -no_partial_ltxfile -quiet -force debug_nets}
  catch {file copy -force debug_nets.ltx version1_hw_wrapper.ltx}
  close_msg_db -file write_bitstream.pb
} RESULT]
if {$rc} {
  step_failed write_bitstream
  return -code error $RESULT
} else {
  end_step write_bitstream
  unset ACTIVE_STEP 
}

