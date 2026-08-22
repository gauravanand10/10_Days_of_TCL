#=========================================================
# File Name : filesystem_commands.tcl
# Description : Common File System Commands in TCL
#=========================================================

puts "========== Current Working Directory =========="
puts [pwd]

puts "\n========== Checking Files =========="

puts "Does README.md exist? : [file exists README.md]"
puts "Does output.txt exist? : [file exists output.txt]"

puts "\n========== File or Directory =========="

puts "Is README.md a file? : [file isfile README.md]"
puts "Is test_folder a directory? : [file isdirectory test_folder]"

puts "\n========== Creating Directory =========="

if {![file exists test_folder]} {

    file mkdir test_folder
    puts "Directory 'test_folder' created."

} else {

    puts "Directory already exists."

}

puts "\n========== Listing TCL Files =========="

set files [glob *.tcl]

foreach file $files {

    puts $file

}

puts "\n========== Copy File =========="

if {[file exists README.md]} {

    file copy -force README.md README_copy.md
    puts "README.md copied to README_copy.md"

}

puts "\n========== Rename File =========="

if {[file exists README_copy.md]} {

    file rename -force README_copy.md README_backup.md
    puts "README_copy.md renamed to README_backup.md"

}

puts "\n========== Delete File =========="

if {[file exists README_backup.md]} {

    file delete README_backup.md
    puts "README_backup.md deleted."

}

puts "\n========== Done =========="
