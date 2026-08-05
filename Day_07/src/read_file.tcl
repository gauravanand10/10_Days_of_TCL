#=========================================================
# Day 7 : Read a File
# Author : Gaurav
#=========================================================

# Read file line by line

set fp [open rtl_files.txt r]

while {![eof $fp]} {

    set line [gets $fp]

    puts $line
}

close $fp
