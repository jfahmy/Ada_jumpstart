# INSTRUCTIONS:
# Write a method that takes an array of numbers. If a pair of numbers
# in the array sums to zero, return the positions of those two numbers
# If no pair of numbers sums to zero, return `nil`.

def zero_sum(nums)

	idx1 = 0
	while idx1 < nums.length
		idx2 = idx1 + 1
		while idx2 < nums.length
			if nums[idx1] + nums[idx2] == 0
				return [idx1, idx2]
			end

			idx2 += 1
		end
		idx1 += 1
	end

 	return nil
end
zero_sum([1, 3, 5, -8, 6, 1, -3, 5, -5])

# Here we built a while loop inside another while loop.
# We are taking the number in the first index place, nums[0],
# and then working through adding that to the number in the next 
# place of index, nums[idx], and grandually incrementing that.
# When nothing that equals zero is found by the if else conditionals
# we increment the first index place so nums[0] becomes nums[1]
# inside the inner while loop and then goes through the incrementing
# conditionals again. When the first pair that equals 0 is found the
# loops end. 