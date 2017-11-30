# INSTRUCTIONS:
# Write a method that takes in a string. Your method should return the
# most common letter in the array, and a count of how many times it
# appears.

def most_common_letter(word)
magic_letter = nil
magic_letter_count = nil

idx = 0 
while idx < word.length
	letter = word[idx]
	count = 0

	idx2 = 0
	while idx2 < word.length
		if word[idx2] == letter
			count += 1
		end
		idx2 += 1
	end

	if magic_letter_count == nil || count > magic_letter_count
		magic_letter_count = count
		magic_letter = letter
	end

	idx += 1

end

return [magic_letter, magic_letter_count]

end


puts most_common_letter("abbbbab")


