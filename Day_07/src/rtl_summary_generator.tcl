#=========================================================
# Day 7 : RTL Summary Generator
# Author : Gaurav
#=========================================================

# Read RTL files and generate a summary

set input_fp [open rtl_files.txt r]

set output_fp [open rtl_summary.txt w]

puts $output_fp "RTL FILE SUMMARY"
puts $output_fp "================"
puts $output_fp ""

set count 0

while {![eof $input_fp]} {

    set line [gets $input_fp]

    if {$line ne ""} {

        incr count

        puts $output_fp "$count. $line"
    }
}

puts $output_fp ""
puts $output_fp "Total RTL Files : $count"

close $input_fp
close $output_fp

puts "RTL Summary Generated Successfully!"
