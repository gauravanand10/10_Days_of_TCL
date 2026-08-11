#=========================================================
# Day 9 : Error Handling
# Author : Gaurav
#=========================================================

puts "===== Example 1 : Successful Command ====="

set result [catch {

    puts "Hello TCL"

}]

puts "Return Value : $result"

puts "\n===== Example 2 : File Opening ====="

if {[catch {

    set fp [open "report.txt" r]

} err]} {

    puts "Error : $err"

} else {

    puts "File opened successfully."

    close $fp
}

puts "\n===== Example 3 : Custom Error ====="

catch {

    set age -5

    if {$age < 0} {

        error "Age cannot be negative."

    }

} message

puts "Caught Error : $message"
