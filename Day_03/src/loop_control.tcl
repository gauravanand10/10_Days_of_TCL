#=========================================================
# Day 3 : break and continue
# Author : Gaurav
#=========================================================


puts "\nbreak"

foreach tool {Vivado Quartus Synopsys Cadence} {

    if {$tool eq "Synopsys"} {
        break
    }

    puts $tool
}


puts "\ncontinue"

foreach tool {Vivado Quartus Synopsys Cadence} {

    if {$tool eq "Synopsys"} {
        continue
    }

    puts $tool
}
