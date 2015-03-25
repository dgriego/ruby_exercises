def check_number_range(num)
    case num
    when 0..50
        puts "your number is between 0 and 50"
    when 51..100
        puts "your number is between 51 than 100"
    else
        if num < 0
            puts "you've entered a negative number, only positive numbers allowed!"
        else
            puts "your number is greater than 100"
        end
    end
end

# puts "Please enter a number between 0 and 100"
# users_number = gets.chomp.to_i
# check_number_range(users_number)

# def fibonacci(number)
#   if number < 2
#     number
#   else
#     fibonacci(number - 1) + fibonacci(number - 2)
#   end
# end

# puts fibonacci(6)

# (1 + (Math.sqrt 5 / 2) ** n).floor

 # the inverse of the above
 # will find the index of the given Fibonacci number
# def phimate(n)
#     phi =(1+(Math.sqrt 5)) / 2
#     logBase = (Math.log n)/(Math.log phi)
#     logBase.floor + 2
# end

# def fib(t=0,n=[1,1]) # :: length -> [fibs]
#     f,i,b = n
#     n.length > t ? n : fib(t, (n.unshift(f + i)))
# end

# puts fib(30)

# def fastFib(n)
#     phi = (1+(Math.sqrt 5))/2
#     fib_f = (phi**n - (-phi)**-n)/(Math.sqrt 5)
#     fib_f.floor
# end
