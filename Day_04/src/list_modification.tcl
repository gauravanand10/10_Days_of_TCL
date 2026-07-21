#=========================================================
# Day 4 : List Modification
# Author : Gaurav
#=========================================================


set fruits {Apple Mango Orange Banana}

puts "\nlappend"

lappend fruits Grapes
puts $fruits

puts "\nlinsert"

set fruits [linsert $fruits 2 Kiwi]
puts $fruits
