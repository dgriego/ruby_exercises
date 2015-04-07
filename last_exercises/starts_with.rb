arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']

puts "removing words that start with 's'..."
arr.delete_if { |word| word.start_with?('s') }
puts arr

arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
puts "\nremoving words that start with 's' or 'w'..."
arr.delete_if { |word| word.start_with?('s', 'w') }
puts arr
