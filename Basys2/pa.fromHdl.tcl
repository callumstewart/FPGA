
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name Basys2 -dir "C:/Users/Callum/Desktop/FPGA/Basys2/planAhead_run_2" -part xc3s100ecp132-5
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "rca.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {E:/Users/callumstewart/Desktop/Desktop2/Verilog2/RCA/full_adder.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {E:/Users/callumstewart/Desktop/Desktop2/Verilog2/RCA/rca.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set_property top rca $srcset
add_files [list {rca.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc3s100ecp132-5
