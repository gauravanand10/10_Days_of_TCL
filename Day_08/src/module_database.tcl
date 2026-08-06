#=========================================================
# Day 8 : Module Database
# Author : Gaurav
#=========================================================

set modules [dict create \
uart_tx 15432 \
spi 9800 \
fifo 4200 \
alu 6700]

puts "RTL MODULE DATABASE"
puts "==================="

dict for {module area} $modules {

    puts "$module : $area"
}
