#Adds first number and second number, then second and third, then third and second, etc

def recur_fibonacci(num)
	if num == 1 || num == 0
		num
	else
		(num - 1) + recur_fibonacci(num)
		num
	end

end

puts recur_fibonacci(5)
# 1, 1, 2, 3, 5

