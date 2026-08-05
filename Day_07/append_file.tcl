#=========================================================
# Day 7 : Append to a File
# Author : Gaurav
#=========================================================

# Append to a file

set fp [open progress.txt a]

puts $fp "Day 7 - File Handling Completed"

close $fp

puts "Progress Updated!"
