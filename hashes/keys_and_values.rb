info = { first_name: 'Daniel', last_name: 'Griego', age: '25', }

def print_keys(h)
    puts "Here are the keys of the given Hash:"
    puts h.keys
end

def print_values(h)
    puts "Here are the values of the given Hash:"
    puts h.values
end

def print_keys_and_values(h)
    puts "Here are the keys and values of the given Hash:"
    h.each do |k, v|
        puts "key: #{k}, value: #{v}"
    end
end

print_keys(info) ; puts "\n"
print_values(info) ; puts "\n"
print_keys_and_values(info)
