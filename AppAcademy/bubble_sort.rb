def bubble_sort(arr)
  sort_detector = false

while sort_detector == false
  sort_detector = true

  i = 0
  while i < arr.length - 1
    if arr[i] > arr[i+1]
      temp = arr[i]
      arr[i] = arr[i+1]
      arr[i+1] = temp
      sort_detector = false
    end
  i += 1
  end
end

  arr

end
