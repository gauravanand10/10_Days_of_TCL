#=========================================================
# Day 6 : Append and Format
# Author : Gaurav
#=========================================================

puts "\nAppend Example"

set report synthesis

append report "_area.rpt"

puts $report

puts "\nMultiple Append"

set file cpu

append file ".v"
append file ".bak"

puts $file

puts "\nFormatted Output"

set module cpu_top
set area 15432
set power 2.51

puts [format "%-15s Area:%8d  Power: %.2f mW" \
$module $area $power]
