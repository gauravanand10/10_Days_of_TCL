#=========================================================
# Day 6 : String Basics
# Author : Gaurav
#=========================================================

puts "\nString Basics"

set tool Vivado
set module uart_tx

puts "Tool      : $tool"
puts "Module    : $module"

puts "\nString Length"

puts "Length of $tool   : [string length $tool]"
puts "Length of $module : [string length $module]"
puts "Length of \"Design Compiler\" : [string length "Design Compiler"]


puts "\nString Comparison"

set company1 AMD
set company2 AMD

puts "Compare Result : [string compare $company1 $company2]"
puts "Equal Result   : [string equal $company1 $company2]"
