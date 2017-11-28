def PrimeTime(num)
	return false if num <= 1
	(2...num).each { |n| return false if num % n == 0}
	return true

end

def RunLength(str)
	result = ""
	counter = 1

	(0...str.length).each do |i|
		if str[i] == str[i+1]
			counter += 1
		else
			result += count.to_s + str[i]
			count = 1
		end
	end

	return result
end

RunLength("aabaz") == 2a1b1a1z



