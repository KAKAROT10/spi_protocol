
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name spi -dir "E:/spi2/planAhead_run_1" -part xc7a100tcsg324-3
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "E:/spi2/ichip_2.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {E:/spi2} }
set_param project.pinAheadLayout  yes
set_property target_constrs_file "ichip_2.ucf" [current_fileset -constrset]
add_files [list {ichip_2.ucf}] -fileset [get_property constrset [current_run]]
link_design
