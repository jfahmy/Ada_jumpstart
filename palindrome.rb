# Write a method that takes in a string of lowercase letters (no
# uppercase letters, no repeats). Consider the *substrings* of the
# string: consecutive sequences of letters contained inside the string.
# Find the longest such string of letters that is a palindrome.
#
# Note that the entire string may itself be a palindrome.
#
# You may want to use Array's `slice(start_index, length)` method,
# which returns a substring of length `length` starting at index
# `start_index`:
#
#     "abcd".slice(1, 2) == "bc"
#     "abcd".slice(1, 3) == "bcd"
#     "abcd".slice(2, 1) == "c"
#     "abcd".slice(2, 2) == "cd"
#
# Difficulty: hard.




def palindrome?(string)

	idx = 0
	reverse = ""
	while idx < string.length
		reverse = string.slice(idx) + reverse
		idx += 1
	end

	puts "Here's the reverse: #{reverse}"


	if string == reverse
		return true
	elsif 
		idx2 = 0
		idx3 = string.length
		while idx2 < string.length
			if string.slice(idx2, idx3) == string((idx3 - 1), ) - idx2]
		

	end

	return "Not a palindrome! :/"

end

puts palindrome?("atest")





#def palindrome?(string)
#  i = 0
#  while i < string.length
#    if string[i] == string[(string.length - 1) - i]

#      return false
#    end

#    i += 1
#  end

#  return true
#end