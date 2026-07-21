#=========================================================
# Day 4 : List Access
# Author : Gaurav
#=========================================================


puts "\nAccessing List Elements"

set fruits {Apple Mango Orange Banana Kiwi}

puts [lindex $fruits 0]
puts [lindex $fruits 2]
puts [lindex $fruits 4]

puts "\nAccessing a Range"

puts [lrange $fruits 1 3]
puts [lrange $fruits 2 4]
