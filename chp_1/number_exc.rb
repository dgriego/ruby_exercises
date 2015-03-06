#Use the modulo operator, division, or a combination of
#both to take a 4 digit number and find
#1) the thousands number
#2) the hundreds
#3) the tens and
#4) and the ones.

number = 5837
thousands = number / 1000
hundreds = number % 1000 / 100
tens = number % 1000 % 100 / 10
ones = number % 1000 % 100 % 10

puts number
puts "thousands => #{thousands}"
puts "hundreds => #{hundreds}"
puts "tens => #{tens}"
puts "ones => #{ones}"
