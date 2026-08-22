#=========================================================
# File Name : design_report_automation.tcl
# Description : Final TCL Automation Project
#=========================================================

# Load utility procedures
source utility_functions.tcl

banner "RTL Design Report Automation"

set report_file "timing_report.rpt"

#---------------------------------------------------------
# Check if report exists
#---------------------------------------------------------
if {![file exists $report_file]} {

    failure "Report file '$report_file' not found."
    exit

}

success "Report file found."

#---------------------------------------------------------
# Open Report
#---------------------------------------------------------
if {[catch {

    set fp [open $report_file r]

} err]} {

    failure $err
    exit

}

#---------------------------------------------------------
# Variables
#---------------------------------------------------------
set design ""
set startpoint ""
set endpoint ""
set slack ""
set frequency ""
set area ""
set cells ""
set status ""

#---------------------------------------------------------
# Parse Report
#---------------------------------------------------------
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

        set cells $value

    }

    if {[regexp {Timing Status\s*:\s*(.+)} $line -> value]} {

        set status $value

    }

}

close $fp

#---------------------------------------------------------
# Display Summary
#---------------------------------------------------------
banner "Timing Report Summary"

puts [format "%-20s : %s" "Design Name" $design]
puts [format "%-20s : %s" "Startpoint" $startpoint]
puts [format "%-20s : %s" "Endpoint" $endpoint]
puts [format "%-20s : %s ns" "Slack" $slack]
puts [format "%-20s : %s MHz" "Clock Frequency" $frequency]
puts [format "%-20s : %s" "Total Cell Area" $area]
puts [format "%-20s : %s" "Cell Count" $cells]
puts [format "%-20s : %s" "Timing Status" $status]

banner "Automation Completed"
