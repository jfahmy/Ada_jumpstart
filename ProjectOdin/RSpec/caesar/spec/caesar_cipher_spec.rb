require "caesar_cipher"

describe "caesar_cipher" do

  context "given an empty string" do
    it "return an empty string" do
      expect(caesar_cipher("", 2)).to eql("")
    end
  end

  context "given 0 as the # of characters to shift by" do
    it "return the given string" do
      expect(caesar_cipher("Test My Cipher", 0)).to eql("Test My Cipher")
    end
  end

  context "given 0 as the # of characters to shift by" do
    it "return the given string" do
      expect(caesar_cipher("testmycipher", 0)).to eql("testmycipher")
    end
  end

  context "given a string with the full range of the alphabet, looping on itself" do
    it "return the full range of the alphabet shifted by the given number" do
      expect(caesar_cipher("abcdefghijklmnopqrstuvwxyz", 3)).to eql("defghijklmnopqrstuvwxyzabc")
    end
  end

  context "given a string with spaces and letters" do
    it "return the spaces at the same index but the letters shifted" do
      expect(caesar_cipher("test my cipher", 5)).to eql("yjxy rd hnumjw")
    end
  end

  context "given a string with a mix of capitalized and lowercase letters" do
    it "return the letters shifted while retaining capitalization at the same indexes" do
      expect(caesar_cipher("tEsTmycIPHer", 5)).to eql("yJxYrdhNUMjw")
    end
  end

end
