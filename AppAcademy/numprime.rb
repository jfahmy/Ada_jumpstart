def factors(n)
  factors = []

  i = 1
  while i <= n
    if n % i == 0
      factors << i
    end
    i += 1
  end

  factors
end

def prime?(n)
  if n == 1
    return false
  end

  i = 2
  while i < n
    if n % i == 0
      return false
    end
    i += 1
  end

  return true
end

def count_prime_factors(n)
  count = 0

  factors = factors(n)

  factors.each do |num|
    count += 1 if prime?(num)
  end

  count
end


puts count_prime_factors(12)
# prime = 2, 3, 5, 7
# factors of 9 = 1, 3, 9
