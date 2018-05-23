def prime?(num)
  
  return false if num == 1
  
  i = 2
  while i < num
    if num % i == 0
      return false 
    end
  i += 1
  end
  
  true
end

# Write a method that returns a sorted array of the factors of its argument.
def factors(num)
  nums = []
  
  i = 1
  while i <= num
    if num % i == 0
      nums << i
    end
    i += 1
    
  end
  
  nums
end

# Write a method that returns the largest prime
def largest_prime_factor(num)
  largest = nil
  

  unitl largest != nil

  
  
end

puts factors(13195)