# This method will return all the possible factors of n in an array
def factors(n)
	factors = []

	# we start the counter at 1, as 1 is a factor of every number, and then we increment this to check whether it's a factor of n
	i = 1
	while i <= n
		# if a number is evenly divisible by another number, then that number is one of it's factors
		if n % i == 0
			# storing the number we are on in the factor array
			factors << i
		end
		i += 1
	end

	factors
end

# prime numbers are numbers that are only evenly divisble by 1 or themselves. (HINT: All numbers are divisible by 1 and themselves)
# This method will simply return true if the number is prime or false in the numebr is not prime
def prime?(n)
	# By default we will assume the number is prime until we find otherwise
	if n > 1 
		prime = true
	else 
		return false
	end

	# this while loop will try to divide n by 2, then by 3, then by 4, etc. If it finds a number that it is evenly divisble by
	# then it's not prime and we set prime equal to false and break the loop.
	i = 2
	while i <= n 
		if (n % i == 0) && (i != n)
			prime = false
			break
		end
		i += 1
	end

	prime
end

def num_prime_factors(n)
	count = 0
	answers = []

	i = 1
	while i <= n
		if (factors(n).include? i) && (prime?(i) == true)
			count += 1
			answers << i
		end
		i += 1
	end
	
end

num_prime_factors(60)