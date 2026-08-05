#=========================================================
# Day 6 : String Case Conversion
# Author : Gaurav
#=========================================================

puts "\nCase Conversion"

set module cpu_top
set tool VIVADO

puts "Original Module : $module"
puts "Upper Case      : [string toupper $module]"

puts ""

puts "Original Tool   : $tool"
puts "Lower Case      : [string tolower $tool]"

puts "\nUpdating Variable"

set module [string toupper $module]

puts "Updated Module : $module"
