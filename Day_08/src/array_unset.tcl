#=========================================================
# Day 8 : Unset Array
# Author : Gaurav
#=========================================================

# Create an array

array set marks {
    Rahul 85
    Amit 90
    Neha 76
}

puts "Before Deletion"

puts [array exists marks]

# Delete the array

unset marks

puts ""

puts "After Deletion"

puts [array exists marks]
