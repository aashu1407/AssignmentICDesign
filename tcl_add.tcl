# Creates a new Vivado project
create_project -force [pwd]/vivadoscript/Project_1  -part xc7a200tfbg676-2 
set_property board_part xilinx.com:ac701:part0:1.4 [current_project]


# Loop to add all design files
foreach file $argv {
    add_files -norecurse [pwd]/modules/$file
}

update_compile_order -fileset sources_1

# Close the project
close_project

