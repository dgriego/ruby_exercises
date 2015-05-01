puts "Different methods for checking if a key exists"

h = {"Herman"=>32, "Lily"=>30, "Grandpa"=>402, "Eddie"=>10}
p h
puts "h.key? :spot"
p h.key? :spot

puts "\nh.include? :spot"
p h.include? :spot

puts "\nh.has_key? :spot"
p h.has_key? :spot

puts "\nh.member? :spot"
p h.member? :spot
