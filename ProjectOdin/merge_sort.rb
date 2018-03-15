def merge_sort(array)
  length = array.length
  #base case
  return array if length <= 1
  #splitting the array in two and calling merge_sort on each
  left = merge_sort(array[0...length/2])
  right = merge_sort(array[length/2..-1])
  puts left.inspect
  puts right.inspect

  #merging the halves into a new array
  sorted = []
  until left.empty? || right.empty?
    sorted << (left[0] >= right[0] ? right.shift : left.shift)
  end
  sorted + left + right
end

puts merge_sort([9, 2, 13, 14, 3, 4, 10, 7, 15, 8, 5, 12, 6, 1, 11])
#[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]
