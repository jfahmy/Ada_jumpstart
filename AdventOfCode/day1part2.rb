input = 123123
input = input.to_s
limiter = input.length/2

output = 0

input.length.times do |count|
	i = 1
	while i <= limiter
		if input[count] == input[count-i]
			output += input[count].to_i 
			break
		end

		i += 1
	end
end

puts output