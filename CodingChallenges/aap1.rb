def reverse(string)
new_string = ""

	idx = string.length
	while idx >= 0 
		new_string << string.slice(idx).to_s
	idx -= 1
	end

return new_string

end

puts reverse("test")