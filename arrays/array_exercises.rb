# Exercise 1
    arr = [1, 3, 5, 7, 9, 11]
    number = 3

    if arr.include?(number)
        puts arr.to_s
        puts "#{number} was in the array"
    end

# Exercise 2
# 1. arr = ["b", "a"]
# arr = arr.product(Array(1..3))
# arr.first.delete(arr.first.last)
#
# will return
    puts "\n"

    arr = ["b", "a"]

    # adds 1, 2, 3 to "b" and "a" and creates a new array
    # will look like [["b", 1], ["b", 2], ["b", 3]..etc
    arr = arr.product(Array(1..3))

    # looks at first element in the array ["b", 1]
    # then deletes 1 from that array with arr.first.last
    arr.first.delete(arr.first.last)
    puts arr.to_s

# 2. arr = ["b", "a"]
#    arr = arr.product([Array(1..3)])
#    arr.first.delete(arr.first.last)
#
# This one is similar to the first one except
# that product is injecting an array instead of single values
# so instead of ["b", 1] it will look like ["b", [1, 2, 3]]
# so arr2.first will refer to ["b", [1, 2, 3]]
# and arr2.first.last will refer to [1, 2, 3]
# so the end product will look like this:
# [["b"], ["a", [1, 2, 3]]]
    puts "\n"

    arr2 = ["b", "a"]
    arr2 = arr2.product([Array(1..3)])
    arr2.first.delete(arr2.first.last)
    puts arr2.to_s

# Exercise 3
# How do you print the word "example" from the following array?
    puts "\n"

    arr = [["test", "hello", "world"], ["example", "mem"]]
    puts arr.last.first

# Exercise 4
# What does each method return in the following example?
# arr = [15, 7, 18, 5, 12, 8, 5, 1]
#
# 1. arr.index(5) -- will return 3
#
# 2. arr.index[5] -- will result in error.. needs to be parens
#
# 3. arr[5] -- will return fifth element at 5th position in array (8)

# Excercise 7
# Write a program that iterates over an array and builds a new array
# that is the result of incrementing each value in the original array
# by a value of 2. You should have two arrays at the end of this program,
# The original array and the new array you've created.
# Print both arrays to the screen using the p method instead of puts.
    puts "\n"

    original_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    new_array = original_array.map { |e| e + 2 }
    p "original array : #{original_array.to_s}"
    p "new array : #{new_array.to_s}"


