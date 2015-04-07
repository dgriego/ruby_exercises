arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

arr.each { |i| puts i }

puts "\nnumbers greater than 5"

arr.each { |i| puts i if i > 5 }

puts "\ncreating array with all odd numbers"

odds_arr = arr.select { |i| i % 2 != 0 }
puts odds_arr

puts "\nadding 11 to original array"
arr.push(11)
puts arr

puts "\nreplacing 11 with 3"
arr.pop
arr.push(3)
puts arr

puts "\nprinting arr with unique values"
puts arr.uniq
