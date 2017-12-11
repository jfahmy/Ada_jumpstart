require "./lib/parser.rb"
require "test/unit"

class TestParser < Test::Unit::TestCase

  def test_sentence
    command = Sentence.new("player", "kill", "bear")
    assert_equal("player", command.subj)
  end

  def test_peek()
      assert_equal(Sentence.peek([["verb", "kill"], ["stop", "the"], ["noun", "bear"]]), "verb")
  end

  def test_match()
      asssert_equal(Sentence.match([["verb", "kill"], ["noun", "bear"]], "verb"), ["verb", "kill"])
  end

end
