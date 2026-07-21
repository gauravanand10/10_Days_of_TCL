#=========================================================
# Day 4 : List Creation
# Author : Gaurav
#=========================================================


puts "\nCreating Lists"

set fruits {Apple Mango Orange Banana}
puts $fruits

set companies [list NVIDIA AMD Intel Qualcomm]
puts $companies

puts "\nList Length"

puts [llength $fruits]
puts [llength $companies]
