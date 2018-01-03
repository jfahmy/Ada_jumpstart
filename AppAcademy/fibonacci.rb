def fibonacci(num)
    a = 0
    b = 1

    # Compute Fibonacci number in the num position
    num.times do
        temp = a
        a = b
        # Add up previous two numbers in sequence.
        b = temp + b
    end

    return a
end

#returns number in the 4th position of the fibonacci sequence
puts fibonacci(4)


def fib_array(num)

array = []
# return Fibonacci numbers in sequence and stores them as an array
num.times do |n|
    result = fibonacci(n)
    array << result
end

#returns the array
array

end

puts fib_array(4)

