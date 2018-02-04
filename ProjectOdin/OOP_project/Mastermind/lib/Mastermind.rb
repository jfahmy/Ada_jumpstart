require_relative 'sequence_check'
require_relative 'Code_generator'
require_relative 'AI'
require 'colorize'

class Game

attr_accessor :board, :board_checks, :turn

def initialize
  #arrays within arrays to store the user @board
  @board = [
  ["@".colorize(:light_black), "@".colorize(:light_black), "@".colorize(:light_black), "@".colorize(:light_black)],
  ["@".colorize(:light_black), "@".colorize(:light_black), "@".colorize(:light_black), "@".colorize(:light_black)],
  ["@".colorize(:light_black), "@".colorize(:light_black), "@".colorize(:light_black), "@".colorize(:light_black)],
  ["@".colorize(:light_black), "@".colorize(:light_black), "@".colorize(:light_black), "@".colorize(:light_black)],
  ["@".colorize(:light_black), "@".colorize(:light_black), "@".colorize(:light_black), "@".colorize(:light_black)],
  ["@".colorize(:light_black), "@".colorize(:light_black), "@".colorize(:light_black), "@".colorize(:light_black)],
  ["@".colorize(:light_black), "@".colorize(:light_black), "@".colorize(:light_black), "@".colorize(:light_black)],
  ["@".colorize(:light_black), "@".colorize(:light_black), "@".colorize(:light_black), "@".colorize(:light_black)],
  ["@".colorize(:light_black), "@".colorize(:light_black), "@".colorize(:light_black), "@".colorize(:light_black)],
  ["@".colorize(:light_black), "@".colorize(:light_black), "@".colorize(:light_black), "@".colorize(:light_black)],
  ["@".colorize(:light_black), "@".colorize(:light_black), "@".colorize(:light_black), "@".colorize(:light_black)],
  ["@".colorize(:light_black), "@".colorize(:light_black), "@".colorize(:light_black), "@".colorize(:light_black)],
  ["@".colorize(:light_black), "@".colorize(:light_black), "@".colorize(:light_black), "@".colorize(:light_black)],
  ["@".colorize(:light_black), "@".colorize(:light_black), "@".colorize(:light_black), "@".colorize(:light_black)]]
  #arrays within arrays to store the computer's feedback after checking user @board
  @board_checks = [
  ["@".colorize(:light_black), "@".colorize(:light_black), "@".colorize(:light_black), "@".colorize(:light_black)],
  ["@".colorize(:light_black), "@".colorize(:light_black), "@".colorize(:light_black), "@".colorize(:light_black)],
  ["@".colorize(:light_black), "@".colorize(:light_black), "@".colorize(:light_black), "@".colorize(:light_black)],
  ["@".colorize(:light_black), "@".colorize(:light_black), "@".colorize(:light_black), "@".colorize(:light_black)],
  ["@".colorize(:light_black), "@".colorize(:light_black), "@".colorize(:light_black), "@".colorize(:light_black)],
  ["@".colorize(:light_black), "@".colorize(:light_black), "@".colorize(:light_black), "@".colorize(:light_black)],
  ["@".colorize(:light_black), "@".colorize(:light_black), "@".colorize(:light_black), "@".colorize(:light_black)],
  ["@".colorize(:light_black), "@".colorize(:light_black), "@".colorize(:light_black), "@".colorize(:light_black)],
  ["@".colorize(:light_black), "@".colorize(:light_black), "@".colorize(:light_black), "@".colorize(:light_black)],
  ["@".colorize(:light_black), "@".colorize(:light_black), "@".colorize(:light_black), "@".colorize(:light_black)],
  ["@".colorize(:light_black), "@".colorize(:light_black), "@".colorize(:light_black), "@".colorize(:light_black)],
  ["@".colorize(:light_black), "@".colorize(:light_black), "@".colorize(:light_black), "@".colorize(:light_black)]]

  @turn = -1

  @mode = ""
end


KEY = {
  "R" => :light_red,
  "G" => :light_green,
  "Y" => :light_yellow,
  "B" => :light_blue,
  "P" => :light_magenta,
  "T" => :light_cyan
}

# this is actually setting the colors on the game board
def checker(input, turn)
  #instantiating objects in the sequence_check class
  if @mode == "codebreaker"
    guess = Sequence_check.new(input.split(""), @code.sequence)
  else
    guess = Sequence_check.new(input.split(""), @code)
  end
  # using a method from the sequence_check class to return array of the things we need to mark on the board
  mark = guess.results
  black = mark[0]
  white = mark[1] + mark[0]

  i = 0
  while i < black
    @board_checks[turn][i] = "@".colorize(:black)
    i += 1
  end

  while i < white
    @board_checks[turn][i] = "@".colorize(:white)
    i += 1
  end

end

def set_sequence(input, round)
  @board[round][0] = "@".colorize(KEY[input[0]])
  @board[round][1] = "@".colorize(KEY[input[1]])
  @board[round][2] = "@".colorize(KEY[input[2]])
  @board[round][3] = "@".colorize(KEY[input[3]])
end

# the @turn vairable keeps track of what turn we're on, this method counts up with each turn
def turn_count
  @turn += 1
  @turn
end

#checking user input was valid
  def valid_input?(input)
    valid = ["R", "G", "Y", "B", "P", "T"]
    input = input.split("")
    return false if input.length != 4
      input.each do |char|
        if !valid.include?(char)
          return false
          break
        end
      end
    true
  end


#checking for a win on the most recent turn
def win?
  4.times do |i|
    if @board_checks[@turn][i] != "@".colorize(:black)
      return false
    end
  end
  true
end


def turn
  puts "Pick a sequence of 4 colored pins using the letter key provided:"
  puts "@".colorize(:light_red) + " = R"
  puts "@".colorize(:light_green) + " = G"
  puts "@".colorize(:light_yellow) + " = Y"
  puts "@".colorize(:light_blue) + " = B"
  puts "@".colorize(:light_magenta) + " = P "
  puts "@".colorize(:light_cyan) + " = T "
  #this helps us cheat and end the game earlier but need to remove this line for actual play
  puts "#{@code.sequence}"
  user_input = gets.strip.upcase
    if !valid_input?(user_input)
      puts "Sorry, that wasn't a valid sequence."
      turn
    else
      round = turn_count
      set_sequence(user_input, round)
      checker(user_input, round)
    end
end


#the play engine, calling the win? method after each turn
def engine
  until win? || @turn == 11
    turn
    display_board
  end

  if win?
    puts "You've won!!!!!"
    puts "See you next time."
  else
    puts "Looks like you didn't guess the right answer this time."
    puts "See you next time."
  end
end

def display_board
#displaying the board to the user after every turn
  puts "___________"
  puts "           "
  puts "#{@board[0][0]}|#{@board[0][1]}|#{@board[0][2]}|#{@board[0][3]}| => #{@board_checks[0][0]}#{@board_checks[0][1]}#{@board_checks[0][2]}#{@board_checks[0][3]}"
  puts "#{@board[1][0]}|#{@board[1][1]}|#{@board[1][2]}|#{@board[1][3]}| => #{@board_checks[1][0]}#{@board_checks[1][1]}#{@board_checks[1][2]}#{@board_checks[1][3]}"
  puts "#{@board[2][0]}|#{@board[2][1]}|#{@board[2][2]}|#{@board[2][3]}| => #{@board_checks[2][0]}#{@board_checks[2][1]}#{@board_checks[2][2]}#{@board_checks[2][3]}"
  puts "#{@board[3][0]}|#{@board[3][1]}|#{@board[3][2]}|#{@board[3][3]}| => #{@board_checks[3][0]}#{@board_checks[3][1]}#{@board_checks[3][2]}#{@board_checks[3][3]}"
  puts "#{@board[4][0]}|#{@board[4][1]}|#{@board[4][2]}|#{@board[4][3]}| => #{@board_checks[4][0]}#{@board_checks[4][1]}#{@board_checks[4][2]}#{@board_checks[4][3]}"
  puts "#{@board[5][0]}|#{@board[5][1]}|#{@board[5][2]}|#{@board[5][3]}| => #{@board_checks[5][0]}#{@board_checks[5][1]}#{@board_checks[5][2]}#{@board_checks[5][3]}"
  puts "#{@board[6][0]}|#{@board[6][1]}|#{@board[6][2]}|#{@board[6][3]}| => #{@board_checks[6][0]}#{@board_checks[6][1]}#{@board_checks[6][2]}#{@board_checks[6][3]}"
  puts "#{@board[7][0]}|#{@board[7][1]}|#{@board[7][2]}|#{@board[7][3]}| => #{@board_checks[7][0]}#{@board_checks[7][1]}#{@board_checks[7][2]}#{@board_checks[7][3]}"
  puts "#{@board[8][0]}|#{@board[8][1]}|#{@board[8][2]}|#{@board[8][3]}| => #{@board_checks[8][0]}#{@board_checks[8][1]}#{@board_checks[8][2]}#{@board_checks[8][3]}"
  puts "#{@board[9][0]}|#{@board[9][1]}|#{@board[9][2]}|#{@board[9][3]}| => #{@board_checks[9][0]}#{@board_checks[9][1]}#{@board_checks[9][2]}#{@board_checks[9][3]}"
  puts "#{@board[10][0]}|#{@board[10][1]}|#{@board[10][2]}|#{@board[10][3]}| => #{@board_checks[10][0]}#{@board_checks[10][1]}#{@board_checks[10][2]}#{@board_checks[10][3]}"
  puts "#{@board[11][0]}|#{@board[11][1]}|#{@board[11][2]}|#{@board[11][3]}| => #{@board_checks[11][0]}#{@board_checks[11][1]}#{@board_checks[11][2]}#{@board_checks[11][3]}"
  puts "____________"
end

def play_ai
 puts "Input a sequence of 4 colored pins using the letter key provided:"
 puts "@".colorize(:light_red) + " = R"
 puts "@".colorize(:light_green) + " = G"
 puts "@".colorize(:light_yellow) + " = Y"
 puts "@".colorize(:light_blue) + " = B"
 puts "@".colorize(:light_magenta) + " = P "
 puts "@".colorize(:light_cyan) + " = T "
 puts "Then, the computer will attempt to guess."
 user_input = gets.strip.upcase
  if valid_input?(user_input)
    @code = user_input.split("")
    run_ai(@code)
  else
    puts "Sorry, that wasn't a valid sequence."
    play_ai
  end

end

def run_ai(code)
  start = AI.new
  2.times do
    puts "taking a turn..."
    round = turn_count
    ai_input = start.breakcode(@board, @board_checks)
    set_sequence(ai_input, round)
    checker(ai_input, round)
    display_board
  end

end

def pick_mode
  puts "There are two play options. You could choose the code yourself and have the computer guess the sequence or you can try to break the computer's secret code."
  puts "Would you like to play as the code breaker? Or set the code?"
  puts "(type 1 to play in code breaker mode or type 2 to play as the code setter)"
  puts ">"
  user_input = gets.strip
    if user_input == "2"
      puts "Pick a tough sequence and stump the computer!!!"
      play_ai
    elsif user_input == "1"
      @code = Code_generator.new
      @mode = "codebreaker"
      engine
    else
      puts "Please pick one of the play options:"
      puts "(type 1 to play in code breaker mode or type 2 to play as the code setter)"
      pick_mode
    end
end

end


game = Game.new
game.pick_mode
