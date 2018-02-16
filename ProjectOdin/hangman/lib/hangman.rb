# Open the .txt file and select a random row with > 5 characters and < 12
# store that word and based on the length of the random word selected, build a the placeholder secret string
# Give user 7 guesses
# user can guess a single letter or user can type the full word
# each turn check user's input to see if it is the stored word
# if it is then show user a win message
# if it isn't see if the guess matches a letter in the stored string (use include?)
# if their guess is included in the stored word then replace the "_" character of the secret placeholder string with the user's guess (lowercase!)
# save all the incorrect letter's the user has already chosen so they don't repeat a guess and so they can tell what the secret word is NOT

def pick_word
	word = File.readlines("5desk.txt").sample.strip

	if word.length >= 5 && word.length <= 7
		word
	else
		pick_word()
	end
end


puts pick_word

puts "
  ____
  |    |
  |    o
  |   /|\\
  |    |
  |   /	\\
 _|_
|   |______
|          |
|__________|"

