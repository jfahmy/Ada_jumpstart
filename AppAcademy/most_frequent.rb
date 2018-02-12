#Our goal is to return the most frequent element within an array - this should work for strings or numbers in an arrays

#solve with one method
def most_frequent_element(arr)
  most_frequent_element = arr[0]
  count = arr.count (arr[0])

  arr.length.times do |i|
    if (arr.count (arr[i])) > count
      count = arr.count (arr[i])
      most_frequent_element = arr[i]
    end
  end

  most_frequent_element
end

puts most_frequent_element([1,2,3,4,4,6])

puts most_frequent_element(['a','d','t','i','i','x','i'])

#solve with two methods and DO NOT USE .count method.
# your count() method should take an array and a single element and do the work of returning the count of the elements occurence
def most_frequent(arr)
most_frequent = nil
count = 0

  arr.length.times do |i|
    if count(arr[i], arr) > count
      most_frequent = arr[i]
      count = count(arr[i], arr)
    end
  end

  most_frequent

end

def count(elem, arr)
  count = 0

  arr.length.times do |i|
    if elem == arr[i]
      count += 1
    end
  end

count
end

puts most_frequent([1,2,3,4,4,6])

puts most_frequent(['a','d','t','i','i','x','i'])
