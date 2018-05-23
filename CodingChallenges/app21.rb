# INSTRUCTIONS:
# Write a method that takes in a string and returns the number of
# letters that appear more than once in the string. You may assume
# the string contains only lowercase letters. Count the number of
# letters that repeat, not the number of times they repeat in the
# string.
#
# Difficulty: hard.

def num_repeats(string)
counter = 0
repeating_letters = []

	string.length.times do |i|
		if ((repeating_letters.include? string[i]) != true) && (string.count(string[i]) > 1)
			counter += 1
			repeating_letters << string[i]
		end
	end

	return counter

end

puts num_repeats("caakalckk")
puts "answer equals 3"
