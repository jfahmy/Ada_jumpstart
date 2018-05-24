# INSTRUCTIONS:
# Write a method that takes in a string. Your method should return the
# most common letter in the array, and a count of how many times it
# appears.

def most_common_letter(string)
	string = string.split("")
	letter = ""
	count = 0

	string.length.times do |i|
		if string.count(string[i]) > count
			count = string.count(string[i])
			letter = string[i]
		end
	end

	return letter, count

end
