#=========================================================
# Day 9 : Regex Operations
# Author : Gaurav
#=========================================================

puts "===== Wildcard ====="
puts [regexp "c.t" "cat"]

puts "\n===== * Quantifier ====="
puts [regexp "ab*c" "abbbc"]

puts "\n===== + Quantifier ====="
puts [regexp "ab+c" "abc"]

puts "\n===== ? Quantifier ====="
puts [regexp "colou?r" "color"]
puts [regexp "colou?r" "colour"]

puts "\n===== Character Class ====="
puts [regexp {[0-9]+} "12345"]

puts "\n===== Anchors ====="
puts [regexp {^RTL} "RTL Design"]
puts [regexp {Design$} "RTL Design"]

puts "\n===== Capturing Group ====="
set report "Slack : 0.245"
regexp {Slack : ([0-9.]+)} $report -> slack
puts "Slack = $slack"

puts "\n===== regsub ====="
set module "uart_tx"
regsub "_" $module "-" result
puts $result
