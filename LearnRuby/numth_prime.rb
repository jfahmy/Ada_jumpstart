def PrimeTime(num)
    return false if num <= 1
    (2...num).each { |n| return false if num % n == 0}
    return true

end

def PrimeMover(num)
    prime_counter = 0
    
    idx = 2
    while prime_counter <= num
        if PrimeTime(idx) == true
            prime_counter += 1
        end
    idx += 1
    end
    numth_prime = idx - 1


  return numth_prime
         
end

puts (PrimeMover(9) == 23)

