require "./lib/parser.rb"
require "test/unit"

class TestParser < Test::Unit::TestCase

  @@sentence = Sentence.new("player", "kill", "bear")

  def test_peek()
      assert_equal(@@sentence.peek([["verb", "kill"], ["stop", "the"], ["noun", "bear"]]), "verb")
  end

  def test_match()
      assert_equal(@@sentence.match([["verb", "kill"], ["noun", "bear"]], "verb"), ["verb", "kill"])
  end

  def test_subject
      assert_equal(@@sentence.parse_subject([["verb", "kill"], ["stop", "the"], ["noun", "bear"]]), ['noun', 'player'])
  end

  def test_object
      assert_equal(@@sentence.parse_object([["verb", "kill"], ["stop", "the"], ["noun", "bear"]]), ["noun", "bear"])
  end
#  def test_parse_sentence()
#      assert_equal(@@sentence.parse_sentence([["verb", "kill"], ["stop", "the"], ["noun", "bear"]]), "bear", "player", "kill")
#  end

end
