#=========================================================
# Day 9 : EDA Timing Report Parser
# Author : Gaurav
#=========================================================

# Open the report file safely

if {[catch {

    set fp [open "timing_report.txt" r]

} err]} {

    puts "Error : $err"
    exit
}

# Variables to store extracted information

set design ""
set startpoint ""
set endpoint ""
set slack ""
set frequency ""
set area ""
set cellcount ""
set status ""

# Read the file line by line

while {[gets $fp line] != -1} {

    if {[regexp {Design Name\s*:\s*(.+)} $line -> value]} {
        set design $value
    }

    if {[regexp {Startpoint\s*:\s*(.+)} $line -> value]} {
        set startpoint $value
    }

    if {[regexp {Endpoint\s*:\s*(.+)} $line -> value]} {
        set endpoint $value
    }

    if {[regexp {Slack \(MET\)\s*:\s*([0-9.]+)} $line -> value]} {
        set slack $value
    }

    if {[regexp {Clock Frequency\s*:\s*([0-9]+)} $line -> value]} {
        set frequency $value
    }

    if {[regexp {Total Cell Area\s*:\s*([0-9.]+)} $line -> value]} {
        set area $value
    }

    if {[regexp {Cell Count\s*:\s*([0-9]+)} $line -> value]} {
        set cellcount $value
    }

    if {[regexp {Timing Status\s*:\s*(.+)} $line -> value]} {
        set status $value
    }

}

close $fp

# Display Summary

puts "\n===================================="
puts "       Timing Report Summary"
puts "===================================="

puts "Design Name      : $design"
puts "Startpoint       : $startpoint"
puts "Endpoint         : $endpoint"
puts "Slack (ns)       : $slack"
puts "Clock Frequency  : $frequency MHz"
puts "Total Cell Area  : $area"
puts "Cell Count       : $cellcount"
puts "Timing Status    : $status"

puts "===================================="
