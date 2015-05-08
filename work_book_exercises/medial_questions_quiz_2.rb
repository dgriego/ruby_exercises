# Quiz 2 ( Intermediate ) -- exercises --

# 1)
# Figure out the total age of just the male members of the family.
munsters = {
    "Herman" => { "age" => 32, "gender" => "male" },
    "Lily" => { "age" => 30, "gender" => "female" },
    "Grandpa" => { "age" => 402, "gender" => "male" },
    "Eddie" => { "age" => 10, "gender" => "male" }
}

total_age = 0
munsters.each do |key, value|
    total_age += value["age"] if value["gender"] == "male"
end
p total_age

# 2)
# Augment the following hash such that it has additional
# key value pairs that can act as a "sort index" which will
# allow us to quickly re-arrange a list of our family members
# as either sorted by name-length or sorted by their original
# order as shown here:
munsters = {
    "Herman" => { "age" => 32, "gender" => "male" },
    "Lily" => { "age" => 30, "gender" => "female" },
    "Grandpa" => { "age" => 402, "gender" => "male" },
    "Eddie" => { "age" => 10, "gender" => "male" }
}

i = 0
munsters.each do |key, value|
    value["name_length"] = key.length
    value["index"] = i
    i += 1
end
puts "\n"
p munsters

# 3)
# One of the most frequently used real-world string properties
# is that of "string substitution", where we take a hard-coded
# string and modify it with various parameters from our program.

# Given this previously seen family hash, print out the name,
# age and gender of each family member:

munsters = {
    "Herman" => { "age" => 32, "gender" => "male" },
    "Lily" => { "age" => 30, "gender" => "female" },
    "Grandpa" => { "age" => 402, "gender" => "male" },
    "Eddie" => { "age" => 10, "gender" => "male" },
    "Marilyn" => { "age" => 23, "gender" => "female"}
}

puts "\n"
munsters.each do |key, value|
    puts "#{key} is a #{value["age"]} year old #{value["gender"]}"
end

def tricky_method(a_string_param, an_array_param)
    err_msg = "first argument needs to be a string"
    if a_string_param.class != String
        puts err_msg
    end
    if an_array_param.class != Array
        puts err_msg
    end
    a_string_param += "rutabega"
    an_array_param << "rutabega"
end

my_string = "pumpkins"
my_array = "pumpkins"
tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

# 5)
# Use this technique to break up the following string
# and put it back together with the words in reverse order:
sentence = "Humpty Dumpty sat on a wall."
puts "\n"
puts sentence.split.reverse.join(" ")

# Write a new patch called pretty_short_version which will
# return a string that ends on a word boundary and is never
# longer than the length parameter.
#   I understand how to add methods to the Class string,
#   I didn't understand what this question was asking for,
#   even still.. after looking at this code.. don't understand
#   the point of this method
class String
  def pretty_short_version(length)
    result = self.dup
    starting_length = self.length
    if starting_length > length
        length -= 1   # leave room for ellipsis
        words = result.split
        result = words.shift
        result = result[0, length] if result.length > length
        result += ' ' + words.shift while(!words.empty? && ((result.length + words.first.length + 1) < length))
        result += "…"
    end

    result
  end
end

puts "\n"
puts "I dont care what they say broskini".pretty_short_version(30)

