#=========================================================
# Day 1 : Variables and Variable Substitution
# Author : Gaurav
#=========================================================

puts "========================================="
puts "      DAY 1 - TCL FUNDAMENTALS"
puts "========================================="

#---------------------------------------------------------
# Variables
#---------------------------------------------------------

set name "Gaurav"
set age 21
set college "ABC University"

puts ""
puts "Variables"
puts "---------"
puts "Name     : $name"
puts "Age      : $age"
puts "College  : $college"

#---------------------------------------------------------
# Reading Variables
#---------------------------------------------------------

puts ""
puts "Reading Variables"
puts "-----------------"

set tool Vivado

puts "Using \$tool : $tool"
puts "Using set    : [set tool]"

#---------------------------------------------------------
# Quotes vs Braces
#---------------------------------------------------------

puts ""
puts "Quotes vs Braces"
puts "----------------"

puts "Quotes : $tool"

puts {Braces : $tool}

#---------------------------------------------------------
# Arithmetic using expr
#---------------------------------------------------------

puts ""
puts "Arithmetic"
puts "----------"

puts "10 + 20 = [expr {10+20}]"
puts "20 - 10 = [expr {20-10}]"
puts "5 * 10  = [expr {5*10}]"
puts "20 / 5  = [expr {20/5}]"

#---------------------------------------------------------
# Variables inside expr
#---------------------------------------------------------

puts ""
puts "Variables in expr"
puts "-----------------"

set x 20
set y 30

puts "$x + $y = [expr {$x+$y}]"
puts "$x - $y = [expr {$x-$y}]"
puts "$x * $y = [expr {$x*$y}]"

#---------------------------------------------------------
# Boolean Expressions
#---------------------------------------------------------

puts ""
puts "Boolean Expressions"
puts "-------------------"

puts "10 > 5 : [expr {10>5}]"
puts "10 < 5 : [expr {10<5}]"
puts "20 == 20 : [expr {20==20}]"
puts "20 != 20 : [expr {20!=20}]"

puts ""
puts "========================================="
puts "Day 1 Completed Successfully"
puts "========================================="
