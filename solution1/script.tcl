############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
############################################################
open_project fishery
set_top net_holes_detection
add_files fishery/C++/src/CCL+Windows.cpp
add_files fishery/C++/src/core.cpp
add_files fishery/C++/src/core.h
add_files fishery/C++/src/ex_enhancement.cpp
add_files fishery/C++/src/extra_functions.cpp
add_files fishery/C++/src/guidedfilter.cpp
add_files -tb fishery/C++/tb/test_core.cpp
add_files -tb fishery/Data
open_solution "solution1"
set_part {xczu9eg-ffvb1156-2-e}
create_clock -period 10 -name default
#source "./fishery/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
