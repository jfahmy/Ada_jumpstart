# INSTRUCTIONS:
# Write a method that takes in a string and returns the number of
# letters that appear more than once in the string. You may assume
# the string contains only lowercase letters. Count the number of
# letters that repeat, not the number of times they repeat in the
# string.
#
# Difficulty: hard.

def num_repeats(string)
	count = 0

	idx = 0
	idx2 = idx + 1
	while idx < string.length
		match = ""
		while idx2 < string.length
			if string[idx] == string[idx2] && match == ""
				match = string[idx2]
				count += 1
			end
			idx2 += 1
		end
			idx += 1 
		end

return count

end

puts num_repeats("caakalckk")

