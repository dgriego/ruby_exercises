# Quiz 3 -- exercises --

# 1)
flintstones = ["Fred", "Barney", "Wilma", "Betty", "BamBam", "Pebbles"]
alternate_arr = %w(Fred Barney Wilma Betty BamBam Pebbles)
p alternate_arr

# 2)
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
puts "\n"
flintstones.push("Dino") ; flintstones.delete("Dino")
#or
flintstones << "Dino"
puts "\n"
p flintstones

# 3)
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flintstones.concat(%w(Dino Hoppy))
puts "\n"
p flintstones
# or flintstones.push("Dino").push("Hoppy")

# 4)
advice = "Few things in life are as important as house training your pet dinosaur."
advice.slice!(0, advice.index("house"))
puts "\n"
puts advice

# 5)
statement = "The Flintstones Rock!"
puts "\n"
p statement.scan("t").count

# 6)
title = "Flintstone Family Members"
puts "\n"
p title.center(40)
