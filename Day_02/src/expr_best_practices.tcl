#=========================================================
# Day 2 : expr Best Practices
# Author : Gaurav
#=========================================================

set x 10
set y 20

puts "\nUsing Braces (Recommended)"
puts [expr {$x + $y}]

puts "\nUsing Double Quotes"
puts [expr "$x + $y"]

puts "\nWithout Quotes or Braces"
puts [expr $x+$y]
