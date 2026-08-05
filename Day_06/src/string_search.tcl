#=========================================================
# Day 6 : String Search
# Author : Gaurav
#=========================================================

puts "\nString Search"

set module uart_tx_controller

puts "Module : $module"

puts "\nstring first"

puts "uart       : [string first "uart" $module]"
puts "tx         : [string first "tx" $module]"
puts "controller : [string first "controller" $module]"
puts "spi        : [string first "spi" $module]"

puts "\nstring last"

set module uart_tx_uart

puts "Module : $module"

puts "Last uart : [string last "uart" $module]"
