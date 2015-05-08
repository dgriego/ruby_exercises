# Quiz 3 ( Intermediate ) -- exercises --

# 1)
# What do you expect to happen when the greeting variable is referenced
# in the last line of the code below?
if false
  greeting = “hello world”
end

p greeting # will return nil

# 2)
# What is the result of the last line in the code below?
greetings = { a: 'hi' }
informal_greeting = greetings[:a]
informal_greeting << ' there'

puts "\n"
puts informal_greeting  #  => "hi there"
puts greetings # will return { a: 'hi' }
# the correct answer is that greetings will return { a: 'hi there' }
# informal_greeting references the original object so greetings
# is modified and changed
# to avoid greetings from changing we can use the .clone method
# or use a reference to informal_greeing (informal_greeting = informal greeting)

# What will be printed by each of these code groups?
puts "\n"
def mess_with_vars(one, two, three)
  one = two
  two = three
  three = one
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}"
puts "two is: #{two}"
puts "three is: #{three}"


puts "\n"
def mess_with_vars(one, two, three)
  one = "two"
  two = "three"
  three = "one"
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}"
puts "two is: #{two}"
puts "three is: #{three}"

puts "\n"
def mess_with_vars(one, two, three)
  one.gsub!("one","two")
  two.gsub!("two","three")
  three.gsub!("three","one")
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}"
puts "two is: #{two}"
puts "three is: #{three}"

# 4)
# Write a method that returns one UUID when called with no parameters.
# format and number of characters in a UUID: 8-4-4-4-12
puts "\n"
def generate_uuid
  # create an array of hexadecimal characters
  chars = %w(0 1 2 3 4 5 6 7 8 9 a b c d e f)
  uuid = []
  sections = [8, 4, 4, 4, 12]
  sections.each do |section|
    uuid << chars.sample(section).join('')
  end

  puts uuid.join('-')
end

generate_uuid

# 5)
# In this exercise, use this method together with "monkey patching"
# and yield to add a map_words! method to the String class.
# 
# Once you have that, use it to word-by-word reverse the following string:
class String
  def map_words!
    punct = self.match(/[[:punct:]]$/).to_s
    self.gsub!(punct, '')
    words = self.split(' ')
    # using yield here to except a block
    # and perform an action to each item given by block
    words.map! { |word| yield word }
    self.replace(words.join(' ') + punct)
  end
end

statement = "Herman Munster is a BIG BIG man."
puts "\n"
p statement.map_words! { |word| word.reverse }

# solution to # 5) offers some more elegance to somethings
# I was trying to accomplish
# class String
#   def map_words!
#     punctuation = self.match(/\p{Punct}$/)[0] || ''
#     words = self.split(/\W/)
#     words.map! { |word| yield word }
#     self.replace(words.join(' ') + punctuation)
#   end
# end

# 6)
# ORIGINAL method
# def dot_separated_ip_address?(input_string)
#   dot_separated_words = input_string.split(".")
#   while dot_separated_words.size > 0 do
#     word = dot_separated_words.pop
#     break if !is_a_number?(word)
#   end
#   return true
# end

def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  
  if dot_separated_words.size == 4
    while dot_separated_words.size > 0 do
      word = dot_separated_words.pop
      return false if !is_a_number?(word)
    end
    return true
  else
    puts "Invalid IP address"
    return false
  end
end
