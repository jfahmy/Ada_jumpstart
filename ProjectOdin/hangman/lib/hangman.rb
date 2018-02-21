class Hangman

def initialize
	@secret_word = pick_word
	@word_display = build_display
	@guess = 0
	@game = "play on"
end

def start
	puts "Would you like to start a new game? Or open a saved game?"
	puts "Type 1 for new game. Type 2 to view saved games."
	input = gets.chomp
	if input == "1"
		play
	elsif input == "2"
		display_games
	end
end


def display_games
Dir.mkdir("saved_games") unless Dir.exists? "saved_games"
games = Dir.entries("saved_games").reject{|entry| entry == "." || entry == ".."}
	if games.count == 0
		puts "You have no saved games yet."
		puts "Let's start a new game."
		return play
	else
		games.each {|x| puts "Saved file: #{x}"}
	end

	puts "Type the name of the saved game you'd like to access."
	input = gets.chomp
	initiate_saved_game(input)
end

def initiate_saved_game(file_name)
	@secret_word = IO.readlines("saved_games/#{file_name}")[0]
	@word_display = IO.readlines("saved_games/#{file_name}")[1].split("")
	@guess = IO.readlines("saved_games/#{file_name}")[2].to_i
	File.delete("saved_games/#{file_name}")
	play
end

def save_game
	puts "What would you like to call your saved game?"
	input = gets.chomp
	saved_game = File.new("saved_games/#{input}.txt", 'w')
	  saved_game.write(@secret_word +"\n")
	  saved_game.write(@word_display.join("") +"\n")
		saved_game.write(@guess)
	  saved_game.close
end

def pick_word
	word = File.readlines("5desk.txt").sample.strip
	if word.length >= 5 && word.length <= 7
		word.downcase
	else
		pick_word()
	end
end

def build_display
	display = []
	@secret_word.length.times do |idx|
		display << "_"
	end
	display
end

def play
	until @guess == 7 || @game == "Win!"
			puts @secret_word
			puts "Are you ready to play? You have #{@guess} guesses."
			puts
			hanging_man(@guess)
			puts
			puts "Secret Word: #{@word_display.join(" ")}"
			puts
			puts "Enter a letter or a word >"
			puts "(OR type exit to save and end this game session.)"
			puts
			user_input = gets.chomp
				if user_input == "exit"
					return save_game
				end
			check(user_input.downcase, @guess)
			@guess += 1
	end

	if @game == "play on"
		puts
		puts hanging_man(@guess)
		puts
		puts "You're out of guesses, guess smarter next time."
	end

end

def check(user_input, num)
	if user_input == @secret_word
		return win_message
	#elsif user_input == "exit"
	#	save_file(@guess)
	elsif @secret_word.include?(user_input)
		insert_letter(user_input)
	end

	if (@word_display.join("")) == @secret_word
		return win_message
	end
end

def win_message
	puts
	puts "You've won! :)"
	puts "The word is #{@secret_word}."
	@game = "Win!"
end

def insert_letter(letter)
	word_array = @secret_word.split("")
	word_array.each_with_index do |char, idx|
		if char == letter
			@word_display.insert(idx, char)
			@word_display.delete_at(idx+1)
		end
	end
end

def hanging_man(round)
	case round
	when 0
		puts "____\n|   |\n|   \n|\n|\n|\n|\n|__________\n|__________|"
	when 1
		puts "____\n|   |\n|   o\n|\n|\n|\n|\n|__________\n|__________|"
	when 2
		puts "____\n|   |\n|   o\n|   |\n|\n|\n|\n|__________\n|__________|"
	when 3
		puts "____\n|   |\n|   o\n|  /|\n|\n|\n|\n|__________\n|__________|"
	when 4
		puts "____\n|   |\n|   o\n|  /|\\\n|\n|\n|\n|__________\n|__________|"
	when 5
		puts "____\n|   |\n|   o\n|  /|\\\n|   |\n|\n|\n|__________\n|__________|"
	when 6
		puts "____\n|   |\n|   o\n|  /|\\\n|   |\n|  /\n|\n|__________\n|__________|"
	when 7
		puts "____\n|   |\n|   o\n|  /|\\\n|   |\n|  / \\\n|\n|__________\n|__________|"
	end
end


end

game = Hangman.new
game.start

=begin
"____\n|   |\n|   \n|\n|\n|\n|\n|__________\n|__________|"
str.insert(index, str2)
hang.insert(15, "o")
=end
