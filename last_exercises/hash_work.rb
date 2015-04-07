h = {a:1, b:2, c:3, d:4}

puts "printing the value of :b..."
puts h[:b]

puts "\nadding {e:5} to the hash..."
h[:e] = 5
puts h

puts "\nremoving values that are less than 3.5"
h.delete_if { |key, value| value < 3.5 }
puts h
