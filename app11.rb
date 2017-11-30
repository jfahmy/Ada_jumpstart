# INSTRUCTIONS:
# Write a method that takes an array of numbers in. Your method should
# return the third greatest number in the array. You may assume that
# the array has at least three numbers in it.


def third_greatest(nums)

nums = nums.sort
nums = nums.last(3)
magic_num = nums.first
	
return magic_num

end

# Is it okay that I did this a different way than the app academy solution? 
# I understand the solution when I work through it but it seems over complicated for Ruby?
# I can't imagine how I would have organically designed that solution