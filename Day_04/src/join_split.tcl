#=========================================================
# Day 4 : Join and Split
# Author : Gaurav
#=========================================================


puts "\nsplit"

set sentence "Apple Mango Orange Banana"

puts [split $sentence]
puts [llength [split $sentence]]

puts "\njoin"

set fruits {Apple Mango Orange Banana}

puts [join $fruits]
puts [join $fruits ", "]
puts [join $fruits "-"]
