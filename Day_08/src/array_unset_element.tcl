#=========================================================
# Day 8 : Unset Array Element
# Author : Gaurav
#=========================================================

# Create an array

array set marks {
    Rahul 85
    Amit 90
    Neha 76
}

puts "Before Deletion"
puts [array get marks]

# Delete one element

unset marks(Amit)

puts ""

puts "After Deletion"
puts [array get marks]
