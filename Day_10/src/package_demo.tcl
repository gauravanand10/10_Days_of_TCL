#=========================================================
# File Name : package_demo.tcl
# Description : Introduction to TCL Packages
#=========================================================

puts "========== TCL Package Demo =========="

# Load the Tcl package
package require Tcl 8.6

puts "\nCurrent Tcl Version : [info patchlevel]"

puts "\n========== Installed Packages =========="

foreach pkg [package names] {

    puts $pkg

}

puts "\n========== Package Information =========="

puts "Tcl Package Version : [package provide Tcl]"

puts "\n========== Package Loaded Successfully =========="
