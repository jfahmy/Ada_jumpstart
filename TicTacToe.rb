# need method to display board
# need method for players to select their move
# need method to put the players move onto the display board
# need method to check if game has been won after each turn
  # this same method should use an if statement that includes whether a tie has been reach
  # game ends and produces message when tie has been reached or game has been won

class TicTacToe
  attr_accessor :name, :symbol

  def initialize(name, symbol)
    @name = name
    @symbol = symbol
  end


grid = {a1: 'null', a2: 'null', a3: 'null',
 b1: 'null', b2: 'null', b3: 'null',
 c1: 'null', c2: 'null', c3: 'null'}

current_board =
"
--------------
 a1 | a2 | a3
--------------
 b1 | b2 | b3
--------------
 c1 | c2 | c3
--------------"

puts current_board

end


  def turn_engine(current_player, marker)
    puts "What's your move, #{current_player}? Pick a square to mark your #{marker}"
#      user_input = $stdin.gets.chomp
  #  grid[user_input.to_sym] = "X"
    #create method to change the grid space. Use
  end


  puts "Do you want to play? Player 1, what's your name?"
    player1 = $stdin.gets.chomp
    playerX = TicTacToe.new(player1, "X")
    puts "Alright #{playerX.name}, you're Xes"
    puts "___________________________________"

  puts "Do you want to play? Player 2, what's your name?"
    player2 = $stdin.gets.chomp
    player0 = TicTacToe.new(player2, "O")
    puts "Alright #{player0.name}, you're Os."
    puts "___________________________________"

turn_engine(player0.name, player0.symbol)


=begin
# determine a win
if grid[:a1] && grid[:a2] && grid[:a3] == ('X' || 'O')
  return win
elsif grid[:b1] && grid[:b2] && grid[:b3] == ('X' || 'O')
  return win
elsif grid[:c1] && grid[:c2] && grid[:c3] == ('X' || 'O')
  return win
elsif grid[:a1] && grid[:a1] && grid[:c1] == ('X' || 'O')
  return win
elsif grid[:a2] && grid[:b2] && grid[:c2] == ('X' || 'O')
  return win
elsif grid[:a3] && grid[:b3] && grid[:c3] == ('X' || 'O')
  return win
elsif grid[:a1] && grid[:b2] && grid[:c3] == ('X' || 'O')
  return win
elsif grid[:a3] && grid[:b2] && grid[:c1] == ('X' || 'O')
  return win
else
  return tie_checker
end



# determine a tie
=begin
if (grid[:a1] || grid[:a2] || grid[:a3] == 'X') && (grid[:a1] || grid[:a2] || grid[:a3] == 'O')
 return tie
elsif (grid[:b1] || grid[:b2] || grid[:b3] == 'X') && (grid[:b1] || grid[:b2] || grid[:b3] == 'O')
=end


#def win
#  puts "By golly, you've won!"
#end
