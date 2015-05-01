# Quiz 2 -- exercises --

# 1)
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
puts "has_key? :spot" ; puts ages.has_key? :spot
puts "\nmember? :spot" ; puts ages.member? :spot
puts "\ninclude? :spot" ; puts ages.include? :spot
puts "\nkey? :spot" ; puts ages.key? :spot

# 2)
ages = { "Herman"=>32, "Lily"=>30, "Grandpa"=>5843, "Eddie"=>10, "Marilyn"=>22, "Spot"=>237 }
puts "\nages of all munster family members"
p ages.values.inject(:+)

# 3)
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
ages.delete_if { |key, age| age >= 100 }
puts "\nremoving family members 100 years of age or older"
p ages

# 4)
munsters_description = "The Munsters are creepy in a good way."
puts "\n"
puts munsters_description.capitalize
puts munsters_description.swapcase
puts munsters_description.downcase
puts munsters_description.upcase

# 5)
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }
additional_ages = { "Marilyn" => 22, "Spot" => 237 }
additional_ages.each { |key, value| ages[key] = value }
puts "\n"
p ages

# 6)
ages = { "Herman"=>32, "Lily"=>30, "Grandpa"=>5843, "Eddie"=>10, "Marilyn"=>22, "Spot"=>237 }
puts "\n"
p ages.min

# 7)
advice = "Few things in life are as important as house training your pet dinosaur."
puts "\n"
puts /dino/ =~ advice
# or
puts advice.match("dino")

# 8)
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
puts "\n"
puts flintstones.index { |item| item.match("Be") }
# or
puts flintstones.index { |name| name[0, 2] == "Be" }

# 9)
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flintstones.map! do |name|
	name.slice(0, 3)
end
puts "\n"
p flintstones

# 10)
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flintstones.map! { |name| name.slice(0,3) }
puts "\n"
p flintstones



















