def recur_factorial(num)
 if num == 0 || num == 1
   return 1
 else
   num * recur_factorial(num - 1)
 end
end

puts "let's play recursively"
puts recur_factorial(6)


def factorial(num)
   new_num = 1

	if num == 0 || num == 1
   	return new_num
   else
   	i = 1
   	until i > num
   			new_num *= i
   	i += 1
   	end
   end
   return new_num
end

puts "let's play factorial the normal way"
puts factorial(6)
