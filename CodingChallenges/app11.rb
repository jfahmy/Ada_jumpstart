# INSTRUCTIONS:
# Write a method that takes an array of numbers in. Your method should
# return the third greatest number in the array. You may assume that
# the array has at least three numbers in it.


def third_greatest(nums)

nums = nums.sort
return nums[-3]

end
