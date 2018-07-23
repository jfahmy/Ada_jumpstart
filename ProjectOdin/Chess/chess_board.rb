class ChessBoard
  attr_accessor :board, :knight

  def initialize
    @board =
   {[0,0]=>" ", [0,1]=>" ", [0,2]=>" ", [0,3]=>" ", [0,4]=>" ", [0,5]=>" ", [0,6]=>" ", [0,7]=>" ",
    [1,0]=>" ", [1,1]=>" ", [1,2]=>" ", [1,3]=>" ", [1,4]=>" ", [1,5]=>" ", [1,6]=>" ", [1,7]=>" ",
    [2,0]=>" ", [2,1]=>" ", [2,2]=>" ", [2,3]=>" ", [2,4]=>" ", [2,5]=>" ", [2,6]=>" ", [2,7]=>" ",
    [3,0]=>" ", [3,1]=>" ", [3,2]=>" ", [3,3]=>" ", [3,4]=>" ", [3,5]=>" ", [3,6]=>" ", [3,7]=>" ",
    [4,0]=>" ", [4,1]=>" ", [4,2]=>" ", [4,3]=>" ", [4,4]=>" ", [4,5]=>" ", [4,6]=>" ", [4,7]=>" ",
    [5,0]=>" ", [5,1]=>" ", [5,2]=>" ", [5,3]=>" ", [5,4]=>" ", [5,5]=>" ", [5,6]=>" ", [5,7]=>" ",
    [6,0]=>" ", [6,1]=>" ", [6,2]=>" ", [6,3]=>" ", [6,4]=>" ", [6,5]=>" ", [6,6]=>" ", [6,7]=>" ",
    [7,0]=>" ", [7,1]=>" ", [7,2]=>" ", [7,3]=>" ", [7,4]=>" ", [7,5]=>" ", [7,6]=>" ", [7,7]=>" ",}

=begin
Question! Why can't I display the board using this??
    @display = "
    0 1 2 3 4 5 6 7
    0 |#{@board[[0, 0]]}|#{@board[[0,2]]}|#{@board[[0,2]]}|#{@board[[0,3]]}|#{@board[[0,4]]}|#{@board[[0,5]]}|#{@board[[0,6]]}|#{@board[[0,7]]}|
    1 |#{@board[[2,0]]}|#{@board[[2,2]]}|#{@board[[2,2]]}|#{@board[[2,3]]}|#{@board[[2,4]]}|#{@board[[2,5]]}|#{@board[[2,6]]}|#{@board[[2,7]]}|
    2 |#{@board[[2,0]]}|#{@board[[2,2]]}|#{@board[[2,2]]}|#{@board[[2,3]]}|#{@board[[2,4]]}|#{@board[[2,5]]}|#{@board[[2,6]]}|#{@board[[2,7]]}|
    3 |#{@board[[3,0]]}|#{@board[[3,2]]}|#{@board[[3,2]]}|#{@board[[3,3]]}|#{@board[[3,4]]}|#{@board[[3,5]]}|#{@board[[3,6]]}|#{@board[[3,7]]}|
    4 |#{@board[[4,0]]}|#{@board[[4,2]]}|#{@board[[4,2]]}|#{@board[[4,3]]}|#{@board[[4,4]]}|#{@board[[4,5]]}|#{@board[[4,6]]}|#{@board[[4,7]]}|
    5 |#{@board[[5,0]]}|#{@board[[5,2]]}|#{@board[[5,2]]}|#{@board[[5,3]]}|#{@board[[5,4]]}|#{@board[[5,5]]}|#{@board[[5,6]]}|#{@board[[5,7]]}|
    6 |#{@board[[6,0]]}|#{@board[[6,2]]}|#{@board[[6,2]]}|#{@board[[6,3]]}|#{@board[[6,4]]}|#{@board[[6,5]]}|#{@board[[6,6]]}|#{@board[[6,7]]}|
    7 |#{@board[[7,0]]}|#{@board[[7,2]]}|#{@board[[7,2]]}|#{@board[[7,3]]}|#{@board[[7,4]]}|#{@board[[7,5]]}|#{@board[[7,6]]}|#{@board[[7,7]]}|

    "
=end

  end

  def move_valid?(array)
    if @board[array] == " "
      @board[array] = "X"
      puts print_board
    else
      puts "sorry, not valid"
      prompt_user
    end
  end

  def print_board
    puts "
   0 1 2 3 4 5 6 7
0 |#{@board[[0, 0]]}|#{@board[[0,2]]}|#{@board[[0,2]]}|#{@board[[0,3]]}|#{@board[[0,4]]}|#{@board[[0,5]]}|#{@board[[0,6]]}|#{@board[[0,7]]}|
1 |#{@board[[1,0]]}|#{@board[[1,2]]}|#{@board[[1,2]]}|#{@board[[1,3]]}|#{@board[[1,4]]}|#{@board[[1,5]]}|#{@board[[1,6]]}|#{@board[[1,7]]}|
2 |#{@board[[2,0]]}|#{@board[[2,2]]}|#{@board[[2,2]]}|#{@board[[2,3]]}|#{@board[[2,4]]}|#{@board[[2,5]]}|#{@board[[2,6]]}|#{@board[[2,7]]}|
3 |#{@board[[3,0]]}|#{@board[[3,2]]}|#{@board[[3,2]]}|#{@board[[3,3]]}|#{@board[[3,4]]}|#{@board[[3,5]]}|#{@board[[3,6]]}|#{@board[[3,7]]}|
4 |#{@board[[4,0]]}|#{@board[[4,2]]}|#{@board[[4,2]]}|#{@board[[4,3]]}|#{@board[[4,4]]}|#{@board[[4,5]]}|#{@board[[4,6]]}|#{@board[[4,7]]}|
5 |#{@board[[5,0]]}|#{@board[[5,2]]}|#{@board[[5,2]]}|#{@board[[5,3]]}|#{@board[[5,4]]}|#{@board[[5,5]]}|#{@board[[5,6]]}|#{@board[[5,7]]}|
6 |#{@board[[6,0]]}|#{@board[[6,2]]}|#{@board[[6,2]]}|#{@board[[6,3]]}|#{@board[[6,4]]}|#{@board[[6,5]]}|#{@board[[6,6]]}|#{@board[[6,7]]}|
7 |#{@board[[7,0]]}|#{@board[[7,2]]}|#{@board[[7,2]]}|#{@board[[7,3]]}|#{@board[[7,4]]}|#{@board[[7,5]]}|#{@board[[7,6]]}|#{@board[[7,7]]}|

"
  end


    def prompt_user
      puts "Where would you like to move from?"
      input = gets.chomp
      array = Array.new
      array = input.split("").map(&:to_i)
      move_valid?(array)
      knight = Knight.new(array)
      knight.find_knight_moves
    end

    def position_taken?(array)
      @board[array] != " "
    end

end

class Knight < ChessBoard
  attr_accessor :position, :moves

  def initialize(position)
    @position = position
    @moves = []
  end

  def find_knight_moves
    if (0..7).include?(position[0] + 1) && (0..7).include?(position[1] + 2)
      moves << [(position[0] + 1),(position[1] + 2)] if position_taken?([(position[0] + 1),(position[1] + 2)]) == true
    end
    if (0..7).include?(position[0] - 1) && (0..7).include?(position[1] - 2)
      moves << [(position[0] - 1),(position[1] - 2)]
    end
    if (0..7).include?(position[0] - 1) && (0..7).include?(position[1] + 2)
      moves << [(position[0] - 1),(position[1] + 2)]
    end
    if (0..7).include?(position[0] + 1) && (0..7).include?(position[1] - 2)
      moves << [(position[0] + 1),(position[1] - 2)]
    end
    puts "Your options for moving are " + moves.to_s
  end

end

game = ChessBoard.new
game.print_board
game.prompt_user
