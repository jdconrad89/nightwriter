require_relative "test_helper"
require_relative "../lib/translator"

class TranlatorTest < Minitest::Test


  def test_it_prepares_the_message
    t = Translator.new

    result = t.prepare_the_message_for_translation("This is the message")

    assert_equal ["T", "h", "i", "s", " ", "i", "s", " ", "t", "h", "e", " ", "m", "e", "s", "s", "a", "g", "e"], result
  end

  def test_it_translates_english_into_braille
    t = Translator.new

    result_1 = t.translates_top_line_from_english_to_braille("This is the message")
    result_2 = t.translates_middle_line_from_english_to_braille("This is the message")
    result_3 = t.translates_bottom_line_from_english_to_braille("This is the message")
    assert_equal ["...0", "0.", ".0", ".0", "..", ".0", ".0", "..", ".0", "0.", "0.", "..", "00", "0.", ".0", ".0", "0.", "00", "0."], result_1
    assert_equal ["..00", "00", "0.", ".0", "..", "0.", ".0", "..", "00", "00", ".0", "..", "..", ".0", ".0", ".0", "..", "00", ".0"], result_2
    assert_equal ["...0", "..", "..", ".0", "..", "..", ".0", "..", ".0", "..", "..", "..", "0.", "..", ".0", ".0", "..", "..", ".."], result_3
  end

  def test_it_translates_braille_into_english
    t = Translator.new

    result = t.translate_top_line_from_braille_to_english([["....", ".0.0", "000."], ["0." , "00", ".."], [".0", "0.", ".."], [".0", "0.", "0."], ["..", "..", ".."], [".0", "0.", ".."], [".0", "0.", "0."], ["..", "..", ".."], [".0", "00","0."], ["0." , "00", ".."], ["0.", ".0", ".."], ["..", "..", ".."], ["00", "..", "0."], ["0.", ".0", ".."], [".0", "0.", "0."], [".0", "0.", "0."], ["0.", "..", ".."], ["00", "00", ".."], ["0.", ".0", ".."]])

    assert_equal "This is the message", result
  end

end
