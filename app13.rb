# INSTRUCTIONS:
# Write a method that takes in a number and returns a string, placing
# a single dash before and after each odd digit. There is one
# exception: don't start or end the string with a dash.
#
# You may wish to use the `%` modulo operation; you can see if a number
# is even if it has zero remainder when divided by two.

def dasherize_number(num)


idx = 1
while idx < num.length
	num.insert(idx, "-")
	idx += 2
end

return num

end

puts dasherize_number("kadfna;asfl")