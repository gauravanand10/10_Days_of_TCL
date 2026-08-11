#=========================================================
# Day 9 : Regular Expression Basics
# Author : Gaurav
#=========================================================

# Sample text

set text "RTL Design Automation"

# Search for a pattern

if {[regexp "RTL" $text]} {

    puts "Pattern Found"

} else {

    puts "Pattern Not Found"

}
