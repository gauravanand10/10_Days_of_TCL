#=========================================================
# Day 5 : Procedure Arguments
# Author : Gaurav
#=========================================================

puts "\nSingle Argument"

proc greet {name} {
    puts "Hello $name"
}

greet Gaurav


puts "\nMultiple Arguments"

proc introduce {name company} {
    puts "$name works at $company"
}

introduce Gaurav NVIDIA


puts "\nAddition"

proc add {a b} {
    puts [expr {$a + $b}]
}

add 10 20
