#=========================================================
# File Name : utility_functions.tcl
# Description : Reusable Utility Procedures
#=========================================================

#---------------------------------------------------------
# Prints a separator line
#---------------------------------------------------------
proc print_line {} {

    puts "------------------------------------------------------------"

}

#---------------------------------------------------------
# Prints a formatted banner
#---------------------------------------------------------
proc banner {title} {

    puts ""
    print_line
    puts $title
    print_line

}

#---------------------------------------------------------
# Prints a success message
#---------------------------------------------------------
proc success {msg} {

    puts "\[SUCCESS\] $msg"

}

#---------------------------------------------------------
# Prints an error message
#---------------------------------------------------------
proc failure {msg} {

    puts "\[ERROR\] $msg"

}

#---------------------------------------------------------
# Checks whether a file exists
#---------------------------------------------------------
proc check_file {filename} {

    if {[file exists $filename]} {

        success "$filename found."

    } else {

        failure "$filename not found."

    }

}

#---------------------------------------------------------
# Lists all TCL files in the current directory
#---------------------------------------------------------
proc list_tcl_files {} {

    foreach file [glob *.tcl] {

        puts $file

    }

}
