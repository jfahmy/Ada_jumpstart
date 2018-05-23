def sum_nums(num)
	sum = 0

	i = 0
	while i <= num
		sum += i
		i += 1
	end

	return sum
end

puts sum_nums(3)