orig_hash = { one: 'one', two: 'two' }
other_hash = { three: 'three', four: 'four' }

puts "* Using merge without ! does not mutate the orig_hash"
puts "The merge unmutated => "
p orig_hash.merge(other_hash)
puts "\noriginal hash =>"
p orig_hash

mutated_hash = orig_hash.merge!(other_hash)
puts "\n* After using merge with !"
p orig_hash

