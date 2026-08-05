#=========================================================
# Day 7 : Open and Close Files
# Author : Gaurav
#=========================================================

# Open a file

set fp [open rtl_files.txt r]

puts $fp

# Close the file

close $fp

puts "File Closed Successfully"
