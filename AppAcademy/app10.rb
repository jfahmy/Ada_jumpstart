# INSTRUCTIONS:
# Write a method that takes in a number and returns true if it is a
# power of 2. Otherwise, return false.
# You may want to use the `%` modulo operation. `5 % 2` returns the
# remainder when dividing 5 by 2; therefore, `5 % 2 == 1`. In the case
# of `6 % 2`, since 2 evenly divides 6 with no remainder, `6 % 2 == 0`.


def super_two?(number)

if number = 1
	return true
end

x = 78
while x > 5
	x = x / 2 
	if x % 2 != 0 
		return false	
	end
return true
end

return true

end

puts("\nTests for #super_two?")
puts("===============================================")
    puts('super_two?(1) == true: ' + (super_two?(1) == true).to_s)
    puts('super_two?(16) == true: ' + (super_two?(16) == true).to_s)
    puts('super_two?(64) == true: ' + (super_two?(64) == true).to_s)
    puts('super_two?(78) == false: ' + (super_two?(78) == false).to_s)
    puts('super_two?(0) == false: ' + (super_two?(0) == false).to_s)
puts("===============================================")