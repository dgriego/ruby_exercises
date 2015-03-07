print "Please enter your name: "
name = gets
puts "Hello #{name}"

puts "\nPrinting your name 10 times: "
10.times { puts name }

puts "\nPlease enter you first name again: "
first_name = gets.chomp
puts "now enter you last name: "
last_name = gets.chomp
puts "\n#{first_name} #{last_name}"