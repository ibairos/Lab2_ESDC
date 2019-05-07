#!/bin/sh

# 
# Vivado(TM)
# runme.sh: a Vivado-generated Runs Script for UNIX
# Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
# 

if [ -z "$PATH" ]; then
  PATH=/opt/SDK/2017.2/bin:/opt/Vivado/2017.2/ids_lite/ISE/bin/lin64:/opt/Vivado/2017.2/bin
else
  PATH=/opt/SDK/2017.2/bin:/opt/Vivado/2017.2/ids_lite/ISE/bin/lin64:/opt/Vivado/2017.2/bin:$PATH
fi
export PATH

if [ -z "$LD_LIBRARY_PATH" ]; then
  LD_LIBRARY_PATH=/opt/Vivado/2017.2/ids_lite/ISE/lib/lin64
else
  LD_LIBRARY_PATH=/opt/Vivado/2017.2/ids_lite/ISE/lib/lin64:$LD_LIBRARY_PATH
fi
export LD_LIBRARY_PATH

HD_PWD='/home/ibai/vivado/ESDC/Lab2/version1_sf/version1_sf.runs/version1_sf_xbar_2_synth_1'
cd "$HD_PWD"

HD_LOG=runme.log
/bin/touch $HD_LOG

ISEStep="./ISEWrap.sh"
EAStep()
{
     $ISEStep $HD_LOG "$@" >> $HD_LOG 2>&1
     if [ $? -ne 0 ]
     then
         exit
     fi
}

EAStep vivado -log version1_sf_xbar_2.vds -m64 -product Vivado -mode batch -messageDb vivado.pb -notrace -source version1_sf_xbar_2.tcl
