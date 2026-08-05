#=========================================================
# Day 7 : Write to a File
# Author : Gaurav
#=========================================================

# Write to a file

set fp [open report.txt w]

puts $fp "Synthesis Report"
puts $fp "================="
puts $fp "Module : cpu_top"
puts $fp "Area   : 15432"
puts $fp "Power  : 2.51 mW"

close $fp

puts "Report Generated Successfully!"
