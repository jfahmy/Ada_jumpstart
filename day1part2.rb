input = 12131415
input = input.to_s

limiter = input.length/2

output = 0

i = 0
while i <= input.length
	
	i2 = 1
	while i2 < limiter
		# if we're at the final index
		if (i + i2) == input.length
			while i3 < limiter
				if input[i3] == input[i + i2]
					output += input[i].to_i
				end


		if input[i] == input[i + i2]
			output += input[i].to_i
		elsif 
			(i + i2) == input.length && input[0] == input[i + i2]
			output += input[i].to_i
		end

	i2 += 1
	end

i += 1
end

puts output

#should output 4
