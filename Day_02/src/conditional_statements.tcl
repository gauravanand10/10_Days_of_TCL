#=========================================================
# Day 2 : Conditional Statements
# Author : Gaurav
#=========================================================

#---------------------------------------------------------
# if Statement
#---------------------------------------------------------

puts "\nif Statement"

set marks 75

if {$marks >= 40} {
    puts "PASS"
}


#---------------------------------------------------------
# if...else Statement
#---------------------------------------------------------

puts "\nif...else Statement"

set marks 30

if {$marks >= 40} {
    puts "PASS"
} else {
    puts "FAIL"
}


#---------------------------------------------------------
# if...elseif...else Statement
#---------------------------------------------------------

puts "\nif...elseif...else Statement"

set marks 82

if {$marks >= 90} {
    puts "Grade A"
} elseif {$marks >= 75} {
    puts "Grade B"
} elseif {$marks >= 40} {
    puts "PASS"
} else {
    puts "FAIL"
}
