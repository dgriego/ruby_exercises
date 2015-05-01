ages = { "Herman"=>32, "Lily"=>30, "Grandpa"=>5843, "Eddie"=>10, "Marilyn"=>22, "Spot"=>237 }

puts ages.values.inject(:+)

"\nremoving people 100 years of age or older"

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

ages.delete_if { |k, v| v >= 100 }
p ages

puts "\nadding ages into the hash"
additional_ages = { "Marilyn" => 22, "Spot" => 237 }
additional_ages.each { |k, v| ages[k] = v }
p ages

#picking out minimum age from hash
ages = { "Herman"=>32, "Lily"=>30, "Grandpa"=>5843, "Eddie"=>10, "Marilyn"=>22, "Spot"=>237 }
puts "\n"
p ages.min
p ages.values.min
