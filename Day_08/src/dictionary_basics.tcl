#=========================================================
# Day 8 : Dictionary Basics
# Author : Gaurav
#=========================================================

set marks [dict create Rahul 85 Amit 90 Neha 76]

puts "Dictionary"
puts $marks

puts ""

puts "Rahul Marks"
puts [dict get $marks Rahul]

puts ""

dict set marks Gaurav 95

puts "After Adding Gaurav"
puts $marks

puts ""

puts "Keys"
puts [dict keys $marks]

puts ""

puts "Values"
puts [dict values $marks]

puts ""

puts "Does Rahul Exist?"

puts [dict exists $marks Rahul]
