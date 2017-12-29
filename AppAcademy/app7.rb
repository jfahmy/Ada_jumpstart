# INSTRUCTIONS:
# Write a method that takes a string and returns true if it is a
# palindrome. A palindrome is a string that is the same whether written
# backward or forward. Assume that there are no spaces; only lowercase
# letters will be given.

def palindrome?(string)
	forwards = []
	backwards = []

	i = 0
	while i < string.length
		forwards.push(string[i])
		i += 1
	end

	i = 0
	while i < string.length
		backwards.unshift(string[i])
		i += 1
	end

	return backwards == forwards

end

puts palindrome?("apple")

# AppAcademy solution used the while loop below instead. It's simpler.

	#  i = 0
	#  while i < string.length
	#    if string[i] != string[(string.length - 1) - i]
	#      return false
	#    end
	#
	#   i += 1
	# end
	#
	# return true
	#end