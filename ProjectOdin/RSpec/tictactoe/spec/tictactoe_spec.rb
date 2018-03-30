require "TicTacToe.rb"

describe Players do
  context "When initializing the Players class" do

    it "Assigns the player name and symbol attributes to a Player object" do
      playerX = Players.new("Momo", "X")
        expect(playerX.name).to eql("Momo")
        expect(playerX.symbol).to eql("X")
    end
  end
end

describe Board do
  context "When initializing the Board class" do

    
  end
end




=begin
describe "caesar_cipher" do

  context "given an empty string" do
    it "returns an empty string" do
      expect(caesar_cipher("", 2)).to eql("")
    end
  end

  context "given 0 as the # of characters to shift by" do
    it "returns the given string" do
      expect(caesar_cipher("testmycipher", 0)).to eql("testmycipher")
    end
  end

  context "given a string with spaces and letters" do
    it "returns the spaces at the same index but the letters shifted" do
      expect(caesar_cipher("test my cipher", 5)).to eql("yjxy rd hnumjw")
    end
  end

  context "given a string with a mix of capitalized and lowercase letters" do
    it "returns the letters shifted while retaining capitalization at the same indexes" do
      expect(caesar_cipher("tEsTmycIPHer", 5)).to eql("yJxYrdhNUMjw")
    end
  end

  context "given a string with the full range of the alphabet, looping on itself" do
    it "returns the full range of the alphabet shifted by the given number" do
      expect(caesar_cipher("abcdefghijklmnopqrstuvwxyz", 3)).to eql("defghijklmnopqrstuvwxyzabc")
    end
  end

  context "given a string of only special characters and a shift number" do
    it "returns the special characters unchanged" do
      expect(caesar_cipher("!?*- %.//", 3)).to eql("!?*- %.//")
    end
  end

  context "given a string with a mix of space, capitalized letters, and special characters" do
    it "returns the shifted string with correct capitalization and special characters" do
      expect(caesar_cipher("Test! My! Cipher!", 1)).to eql("Uftu! Nz! Djqifs!")
    end
  end

  context "given a string and a negative value shift number" do
    it "returns the letters shifted to the left of the alphabet instead of the right" do
      expect(caesar_cipher("Test! My! Cipher!", -2)).to eql("Rcqr! Kw! Agnfcp!")
    end
  end

  context "given a shift number that is greater than the length of the alphabet" do
    it "returns the letters shifted by looping through the alphabet" do
      expect(caesar_cipher("testmycipher", 27)).to eql("uftunzdjqifs")
    end
  end

end
=end
