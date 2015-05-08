# Quiz 1 ( Intermediate ) -- exercises -- 

# 1)
# repeat each line with added padding as it increments
10.times { |index| p "The Flintstones Rock!".rjust(index + 21) }

# 2)
# print out the frequency of each character in the string and
# store that information into a hash
statement = "The Flintstones Rock"
frequency = Hash.new
statement.each_char do |c|
    frequency[c] = statement.scan(c).count
end
puts "\n"
puts frequency

# 3)
puts "\n"
puts "the value of 40 + 2 is " + (40 + 2).to_s # or
puts "the value of 40 + 2 is #{40 + 2}"

# 5)
puts "\n"
def factors(number)
  dividend = number
  divisors = []
  while dividend > 0 do
    divisors << number / dividend if number % dividend == 0
    dividend -= 1
  end
  divisors
end

p factors(50)

# 6)
puts "\n"
def rolling_buffer1(buffer, max_buffer_size, new_element)
  buffer << new_element
  buffer.shift if buffer.size >= max_buffer_size
  buffer
end

def rolling_buffer2(input_array, max_buffer_size, new_element)
  buffer = input_array + [new_element]
  buffer.shift if buffer.size >= max_buffer_size
  buffer
end

p rolling_buffer1([1, 2], 4, 3)
p rolling_buffer2([1, 2], 4, 3)

# 7) Fibonacci
limit = 15

def fib(first_num, second_num, limit)
  while second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1, limit)
puts "\n"
puts "result is #{result}"

# 8) titleize
def titleize!(str)
    str.split(" ").each { |value| value.capitalize! }.join(" ")
end

# solution
# words.split.map { |word| word.downcase.capitalize }.join(' ')

puts "\n"
p titleize!("How many times are we")

# 9)
characters = [
    { :character => "Batman", :real_name => "Bruce Wayne", :description => "Comic book superhero who fights crime while wearing a costume loosely based on a bat" }, 
    { :character => "Robin", :real_name => "Dick Grayson", :description => "Loyal sidekick for batman -- much younger and smaller and sometimes portrayed by girl in later episodes" },
    { :character => "Commisioner Gordon", :real_name => "James Gordon", :description => "Police Commisioner of Gotham City and loyal friend of Batman -- frequently communicates secretly with Batman via signals or a special red BatPhone" },
    { :character => "Alfred", :real_name => "Alfred", :description => "The butler and also a key support player in many episodes providing communications, armament, and also moral support to Batman" }
]

# adding the eplisize method to the String class
class String
    def elipsize(length)
        result = self.dup
        starting_length = self.length
        if starting_length > length
          result = result[0, length - 1]
          result += "…"
        end

        result
    end
end

puts "\n"
characters.each do |character|
    p character.values.map{ |value| value.elipsize(32) }.join("    ")
end

# 10)
# Augment the following hash such that it has additional key value pairs giving
# us a "demographic" key that has one of three values describing the age
# group the family member is in (kid, adult, senior):
munsters = {
    "Herman" => { "age" => 32, "gender" => "male" },
    "Lily" => { "age" => 30, "gender" => "female" },
    "Grandpa" => { "age" => 402, "gender" => "male" },
    "Eddie" => { "age" => 10, "gender" => "male" },
    "Marilyn" => { "age" => 23, "gender" => "female"}
}

puts "\n"
age_of_adultness = 18
old = 60
really_old = 100
munsters.each do |key, value|
  value["demographic"] = "Kid" if value["age"] < 18
  value["demographic"] = "Adult" if (age_of_adultness..old).include?(value["age"])
  value["demographic"] = "Old Person" if (old..really_old).include?(value["age"])
  value["demographic"] = "Impossibly Old Person" if value["age"] > 100
end

p munsters


