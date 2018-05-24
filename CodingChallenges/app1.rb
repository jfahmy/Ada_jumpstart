# Write a method that will take a string as input, and return a new
# string with the same letters in reverse order.
#
# Don't use String's reverse method; that would be too simple.
#

def backwards(words)
	word_thing = ""
#We are naming our method and setting the variable (word_thing) we want returned to an empty string 

	i = 0
	while i < words.length
		word_thing = words[i] + word_thing
		i += 1
	end
# 'words' in this while loop is the string input to the method from the user (or test cases) 
#so until the letter i becomes greater than the count of the characters in that word then we will keep adding letters
# to the new string we are building - which is stored as word_thing and returned below
	return word_thing
end

puts backwards("testytesttestweeee")

puts("\nTests for #backwards")
puts("===============================================")
    puts(
      'backwards("abc") == "cba": ' + (backwards("abc") == "cba").to_s
    )
    puts(
      'backwards("a") == "a": ' + (backwards("a") == "a").to_s
    )
    puts(
      'backwards("") == "": ' + (backwards("") == "").to_s
    )
puts("===============================================")