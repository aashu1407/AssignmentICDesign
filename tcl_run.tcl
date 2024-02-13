#open the created vivado project
open_project [pwd]/vivadoscript/Project_1.xpr  

# The command allows the user to set the top module manually

set_property source_mgmt_mode None [current_project]  
update_compile_order -fileset sources_1	

#looping over all the top modules and running the synthesis and implementation
foreach file $argv {
set_property top $file [current_fileset]
set_property source_mgmt_mode None [current_project]
update_compile_order -fileset sources_1

# reset and launch the synthesis and implementation. The process waits till next command is executed

reset_run synth_1  
launch_runs synth_1 -jobs 12
wait_on_run synth_1

reset_run impl_1
launch_runs impl_1 -jobs 12
wait_on_run impl_1

# If implementation is run, the reports are generated for each design file with their name and saved in the Impl folder
open_run impl_1
set report_directory "[pwd]/Impl"

set report_power_file "$report_directory/${file}_power.txt"
set report_timing_file "$report_directory/${file}_timing.txt"
set report_utilization_file "$report_directory/${file}_utilization.txt"

report_power > $report_power_file
report_timing > $report_timing_file
report_utilization > $report_utilization_file

}

close_project

