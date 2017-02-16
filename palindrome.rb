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
	end

	return "Not a palindrome! :/"

end

puts palindrome?("atest")





#def palindrome?(string)
#  i = 0
#  while i < string.length
#    if string[i] != string[(string.length - 1) - i]
#      return false
#    end

#    i += 1
#  end

#  return true
#end