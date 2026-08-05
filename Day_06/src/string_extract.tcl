#=========================================================
# Day 6 : String Extraction
# Author : Gaurav
#=========================================================

puts "\nString Index"

set module uart_tx

puts "Module : $module"

puts "Index 0 : [string index $module 0]"
puts "Index 3 : [string index $module 3]"
puts "Index 20: [string index $module 20]"

puts "\nString Range"

set module uart_tx_controller

puts "Module : $module"

puts "0-3     : [string range $module 0 3]"
puts "5-6     : [string range $module 5 6]"
puts "8-17    : [string range $module 8 17]"
puts "8-end   : [string range $module 8 end]"
