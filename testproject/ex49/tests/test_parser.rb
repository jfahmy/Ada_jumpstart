require "./lib/parser.rb"
require "test/unit"

class TestParser < Test::Unit::TestCase

  def test_peek()
      assert_equal(Sentence.peek([["verb", "kill"], ["stop", "the"], ["noun", "princess"]]), "verb")
  end

  def test_match()
      asssert_equal(Sentence.match([["verb", "kill"], ["noun", "princess"]], "verb"), ["verb", "kill"])
  end

end
