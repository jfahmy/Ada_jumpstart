class Players
  attr_accessor :name, :symbol
  def initialize(name, symbol)
    @name = name
    @symbol = symbol
  end

end

class Board
  attr_accessor :board, :grid

  def initialize()
    @board = "
     --------------
      a1 | a2 | a3
     --------------
      b1 | b2 | b3
     --------------
      c1 | c2 | c3
     --------------"

    @grid = {a1: 'null', a2: 'null', a3: 'null',
     b1: 'null', b2: 'null', b3: 'null',
     c1: 'null', c2: 'null', c3: 'null'}
  end

  def start()
    puts "Do you want to play? Player 1, what's your name?"
      player1 = $stdin.gets.chomp
      playerX = Players.new(player1, "X")
      puts "___________________________________"
      puts "Alright #{playerX.name}, you're Xes"
      puts "___________________________________"

    puts "Do you want to play? Player 2, what's your name?"
      player2 = $stdin.gets.chomp
      playerO = Players.new(player2, "O")
      puts "___________________________________"
      puts "Alright #{playerO.name}, you're Os."
      puts "___________________________________"

      game = Board.new()
      play(playerO.name, playerO.symbol, playerX.name, playerX.symbol, game.board)
  end

  def win_checker(marker)
      if (@grid[:a1] == marker) && (@grid[:a2] == marker) && (@grid[:a3] == marker)
        return 'win'
      elsif (@grid[:b1] == marker) && (@grid[:b2] == marker) && (@grid[:b3] == marker)
        return 'win'
      elsif (@grid[:c1] == marker) && (@grid[:c2] == marker) && (@grid[:c3] == marker)
        return 'win'
      elsif (@grid[:a1] == marker) && (@grid[:b1] == marker) && (@grid[:c1] == marker)
        return 'win'
      elsif (@grid[:a2] == marker) && (@grid[:b2] == marker) && (@grid[:c2] == marker)
        return 'win'
      elsif (@grid[:a3] == marker) && (@grid[:b3] == marker) && (@grid[:c3] == marker)
        return 'win'
      elsif (@grid[:a1] == marker) && (@grid[:b2] == marker) && (@grid[:c3] == marker)
        return 'win'
      elsif (@grid[:a3] == marker) && (@grid[:b2] == marker) && (@grid[:c1] == marker)
        return 'win'
     else
        return 'play'
      end
  end

  def turn(player, marker, display)
    puts display
    puts "What's your move, #{player}? Pick a square to mark your #{marker}"
    user_input = $stdin.gets.chomp
      exit?(user_input)
    @grid[user_input.to_sym] = marker
    @board = display.gsub!(user_input, marker)
  end

  def play(playerO_name, playerO_symbol, playerX_name, playerX_symbol, game_board)
      while ["a1", "a2", "a3", "b1", "b2", "b3", "c1", "c2", "c3"].any? {|box| game_board.include? box}
            turn(playerX_name, playerX_symbol, game_board)
            if win_checker(playerX_symbol) == 'win'
              winner(playerX_name, game_board)
              break
            end
            turn(playerO_name, playerO_symbol, game_board) if ["a1", "a2", "a3", "b1", "b2", "b3", "c1", "c2", "c3"].any? {|box| game_board.include? box}
            if win_checker(playerO_symbol) == 'win'
              winner(playerO_name, game_board)
              break
            end
      end
    puts game_board + "\n Ohhhh jeez, looks like a tie again..." if win_checker(playerX_symbol) != 'win' && win_checker(playerO_symbol) != 'win'
  end

  def winner(player, board)
    puts board
    puts "By golly, you've won #{player}!"
    puts "Congrats!! ~~~~~~~~~~~~"
  end

  def exit?(user_input)
    if user_input == "exit"
      exit
    end
  end
end

#game = Board.new()
#game.start()
