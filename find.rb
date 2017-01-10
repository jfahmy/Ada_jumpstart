def find_item(items, target_item)
  i = 0
  while i < items.count
    current_item = items[i]
    if current_item == target_item
      # found item; return its index; stop here and exit the
      # method
      return i
    end
    i += 1
  end

  # return nil to mean item not found
  return nil
end

puts find_item([1, 3, 5, 7], 5) == 2