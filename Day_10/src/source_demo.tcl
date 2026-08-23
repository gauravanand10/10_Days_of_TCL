#=========================================================
# File Name : source_demo.tcl
# Description : Using the source Command
#=========================================================

# Load reusable procedures
source utility_functions.tcl

banner "Source Command Demo"

puts "This script is using procedures"
puts "defined inside utility_functions.tcl"

print_line

check_file "README.md"

check_file "filesystem_commands.tcl"

check_file "timing_report.rpt"

print_line

puts "\nListing all TCL files:\n"

list_tcl_files

banner "End of Demonstration"
