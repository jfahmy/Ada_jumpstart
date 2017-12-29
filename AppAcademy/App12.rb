# INSTRUCTIONS:
# Write a method that takes in a string. Your method should return the
# most common letter in the array, and a count of how many times it
# appears.

def most_common_letter(word)
	highest_count = 0
	count = 0

	idx = 0
	while idx < word.length
		
		idx2 = 1
		while idx2 < word.length
			if word[idx] == word[(idx + idx2)]
				count += 1
			end
			idx2 += 1
		end

		if count > highest_count
			highest_count = count
			magic_letter = idx
		end

		idx +=1
	end
	
	magic_letter = word[magic_letter]

	idx3 = 0
	countx = 0
	while idx3 < word.length
		if word[idx3] == magic_letter
			countx += 1
		end
		idx3 += 1
	end


return [magic_letter, countx]


end


puts most_common_letter("abbbbab")


