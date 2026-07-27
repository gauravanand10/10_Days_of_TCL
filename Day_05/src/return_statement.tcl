#=========================================================
# Day 5 : Return Statement
# Author : Gaurav
#=========================================================

proc add {a b} {
    return [expr {$a + $b}]
}

puts [add 10 20]

puts [expr {[add 10 20] * 5}]
