arr = ["laboratory", "experiment", "Pans Labyrinth", "elaborate", "polar bear"]

puts "Checking for words that contain the string 'lab'...\n"
arr.each_with_index do |the_word, i|
    if /lab/ =~ the_word.downcase
        puts "#{i}. #{the_word}"
    end
end

puts "\n\n"
#solution
def check_in(word)
  if /lab/ =~ word.downcase
    puts word
  else
    puts "No match"
  end
end


check_in("laboratory")
check_in("experiment")
check_in("Pans Labyrinth")
check_in("elaborate")
check_in("polar bear")
