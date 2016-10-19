require_relative "test_helper"
require "./lib/translator_braille"

class TranslatorBrailleTest < Minitest::Test




  def test_it_prepares_a_single_word
    t = TranslatorBraille.new
    
        assert_equal result_2, result_1
  end

  def test_it_translates_braille_into_english
    skip
    t = TranslatorBraille.new

    top_line =    ["...0", "0.", ".0", ".0", "..", ".0", ".0", "..", ".0", "0.", "0.", "..", "00", "0.", ".0", ".0", "0.", "00", "0.", "..", ".000", ".000", ".00.", ".000"]
    middle_line = ["..00", "00", "0.", "0.", "..", "0.", "0.", "..", "00", "00", ".0", "..", "..", ".0", "0.", "0.", "..", "00", ".0", "..", ".0..", ".0.0", ".0.0", ".00."]
    bottom_line = [".00.", "..", "..", "0.", "..", "..", "0.", "..", "0.", "..", "..", "..", "0.", "..", "0.", "0.", "..", "..", "..", "..", "00..", "00..", "00..", "00.."]

    result = t.translates_from_braille_to_english(top_line, middle_line, bottom_line)
    assert_equal "This is the message ", result
  end

end
