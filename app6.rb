# INSTRUCTIONS:
# Write a method that takes a string and returns the number of vowels
# in the string. You may assume that all the letters are lower cased.
# You can treat "y" as a consonant.


def count_vowels(string)
	count = 0

	x = 0
	while x < string.length
		if (string[x] == "a") || (string[x] == "e") || (string[x] == "i") || (string[x] == "o") || (string[x] == "u")
		count += 1
		else
		end
	x += 1
	end
	return count
end

puts count_vowels("test lame shit uu")