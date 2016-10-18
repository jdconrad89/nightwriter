require_relative "test_helper"
require_relative "../lib/translator"

class TranlatorTest < Minitest::Test


  def test_it_prepares_the_message
    t = Translator.new

    result = t.prepare_the_message_for_translation_to_braille("This is the message")

    assert_equal ["T", "h", "i", "s", " ", "i", "s", " ", "t", "h", "e", " ", "m", "e", "s", "s", "a", "g", "e"], result
  end

  def test_it_translates_english_into_braille
    t = Translator.new

    result_1 = t.translates_top_line_from_english_to_braille("This is the message 3456")
    result_2 = t.translates_middle_line_from_english_to_braille("This is the message 3456")
    result_3 = t.translates_bottom_line_from_english_to_braille("This is the message 3456")
    assert_equal ["...0", "0.", ".0", ".0", "..", ".0", ".0", "..", ".0", "0.", "0.", "..", "00", "0.", ".0", ".0", "0.", "00", "0.", "..", ".000", ".000", ".00.", ".000"], result_1
    assert_equal ["..00", "00", "0.", "0.", "..", "0.", "0.", "..", "00", "00", ".0", "..", "..", ".0", "0.", "0.", "..", "00", ".0", "..", ".0..", ".0.0", ".0.0", ".00."], result_2
    assert_equal [".00.", "..", "..", "0.", "..", "..", "0.", "..", "0.", "..", "..", "..", "0.", "..", "0.", "0.", "..", "..", "..", "..", "00..", "00..", "00..", "00.."], result_3
  end

  def test_it_prepares_the_message_to_translate_to_english
    t = Translator.new

    top_line =    ["...0", "0.", ".0", ".0", "..", ".0", ".0", "..", ".0", "0.", "0.", "..", "00", "0.", ".0", ".0", "0.", "00", "0.", "..", ".000", ".000", ".00.", ".000"]
    middle_line = ["..00", "00", "0.", "0.", "..", "0.", "0.", "..", "00", "00", ".0", "..", "..", ".0", "0.", "0.", "..", "00", ".0", "..", ".0..", ".0.0", ".0.0", ".00."]
    bottom_line = [".00.", "..", "..", "0.", "..", "..", "0.", "..", "0.", "..", "..", "..", "0.", "..", "0.", "0.", "..", "..", "..", "..", "00..", "00..", "00..", "00.."]

    result_1 = t.prepare_message_for_translation_to_english(top_line, middle_line, bottom_line)
    result_2 = [["...0", "..00", ".00."], ["0.", "00", ".."], [".0", "0.", ".."], [".0", "0.", "0."], ["..", "..", ".."], [".0", "0.", ".."], [".0", "0.", "0."], ["..", "..", ".."], [".0", "00", "0."], ["0.", "00", ".."], ["0.", ".0", ".."], ["..", "..", ".."], ["00", "..", "0."], ["0.", ".0", ".."], [".0", "0.", "0."], [".0", "0.", "0."], ["0.", "..", ".."], ["00", "00", ".."], ["0.", ".0", ".."], ["..", "..", ".."], [".000", ".0..", "00.."], [".000", ".0.0", "00.."], [".00.", ".0.0", "00.."], [".000", ".00.", "00.."]]
    assert_equal result_2, result_1
  end


  def test_it_translates_braille_into_english
    t = Translator.new

    top_line =    ["...0", "0.", ".0", ".0", "..", ".0", ".0", "..", ".0", "0.", "0.", "..", "00", "0.", ".0", ".0", "0.", "00", "0.", "..", ".000", ".000", ".00.", ".000"]
    middle_line = ["..00", "00", "0.", "0.", "..", "0.", "0.", "..", "00", "00", ".0", "..", "..", ".0", "0.", "0.", "..", "00", ".0", "..", ".0..", ".0.0", ".0.0", ".00."]
    bottom_line = [".00.", "..", "..", "0.", "..", "..", "0.", "..", "0.", "..", "..", "..", "0.", "..", "0.", "0.", "..", "..", "..", "..", "00..", "00..", "00..", "00.."]

    result = t.translates_from_braille_to_english(top_line, middle_line, bottom_line)
    assert_equal "This is the message 3456", result
  end

end
