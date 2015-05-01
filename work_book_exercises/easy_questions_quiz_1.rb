# Quiz 1 -exercises-
numbers = [1, 2, 2, 3]
numbers.uniq
puts numbers #=> what does this print out?
# will print new array without duplicate values [1, 2, 3]

# 2)
# Describe the difference between ! and ?
# 1. what is != and where should you use it? 
#    checking if a value does not equal another value
#
# 2. put ! before something, like !user_name
#    checking if the value is false
#
# 3. put ! after something, like words.uniq!
#    ruby convention for mutating the caller
#
# 4. put ? before something
#    used for ternary operations
#
# 5. put ? after something
#    ruby convention for checkinf for a value, but technically it is part
#    of the methods name (same with !)
#
# 6. put !! before something, like !!user_name
#    looks for boolean equivalent

# 3)
advice = "Few things in life are as important as house training your pet dinosaur."
puts "\n" << advice.gsub!("important", "urgent")

# 4)
numbers = [1, 2, 3, 4, 5]
numbers.delete_at(1) # will delete at index 1

numbers = [1, 2, 3, 4, 5]
numbers.delete(1) # will delete the value 1

# 5)
(10..100).cover?(42)

# 6)
famous_words = "and seven years ago..."
puts "\nFour score " << famous_words
puts famous_words.prepend("Four score ")

# 8)
flintstones = ["Fred", "Wilma"]
flintstones << ["Barney", "Betty"]
flintstones << ["BamBam", "Pebbles"]
puts "\n"
p flintstones.flatten

# 9)
flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }
puts "\n"
p flintstones.assoc("Barney")

flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
flintstones_hash = {}
flintstones.each_with_index do |name, index|
	flintstones_hash[name] = index
end
puts "\n"
p flintstones_hash

