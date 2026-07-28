#=========================================================
# Day 5 : Variable Scope
# Author : Gaurav
#=========================================================

puts "\nLocal Variable"

proc student {} {

    set name Gaurav

    puts $name
}

student


puts "\nGlobal Variable"

set company NVIDIA

proc display {} {

    global company

    puts $company
}

display
