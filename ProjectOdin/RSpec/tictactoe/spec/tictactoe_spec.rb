require "TicTacToe.rb"

describe Players do
  context "When initializing the Players class" do

    it "Assigns the player name and symbol attributes to a Player object" do
      playerX = Players.new("Momo", "X")
        expect(playerX).to be_instance_of(Players)
        expect(playerX.name).to eql("Momo")
        expect(playerX.symbol).to eql("X")
    end
  end
end

describe Board do
  context "When initializing the Board class" do

    it "Sets the board attribute set to a string representing the empty board" do
      game = Board.new
        expect(game.board).to eql("\n     --------------\n      a1 | a2 | a3\n     --------------\n      b1 | b2 | b3\n     --------------\n      c1 | c2 | c3\n     --------------")
    end
  end
end

=begin
describe "start" do

  context "given start method is called on an Board class object" do

      it "Opens game by asking for player name" do
        game = Board.new()
        expect(game.start()).to eql("Do you want to play? Player 1, what's your name?")
      end
  end
end
=end

describe Board, '#win_checker(marker)' do

  context "given a marker and a completely empty board" do
    it "checks the board for 3 symbols in consecutive spaces" do
      board = Board.new
      expect(board.win_checker("X")).to eql("play")
    end
  end

  context "given a marker and a winning board" do
    it "checks the board for 3 symbols in consecutive spaces" do
      board = Board.new
        board.grid[:a1] = 'X'
        board.grid[:b2] = 'X'
        board.grid[:c3] = 'X'
      expect(board.win_checker("X")).to eql("win")
    end
  end

end
