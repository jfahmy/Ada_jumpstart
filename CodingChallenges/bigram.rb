#A bigram is a pair of consecutive words. Given a string, return the longest bigram in that string. Include the space #between the words. Assume there will be no punctuation. In the case of a tie, return the earlier bigram.

#E.g., longest_bigram("One must have a mind of winter") => "must have"

def longest_bigram(string)
	string_count = 0
	longest = ""
	
	array = string.split(" ")
	number = array.length - 1

	number.times do |i|
		if (array[i].length + array[i+1].length) > string_count
			string_count = (array[i].length + array[i+1].length)
			longest = array[i] + " " + array[i+1]
		end
	end

	longest
end


puts longest_bigram("One must have a mind of winter")