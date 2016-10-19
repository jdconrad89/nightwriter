require_relative "test_helper"
require "./lib/translator_english"

class TranslatorEnglishTest < Minitest::Test

  def test_it_prepares_the_message
    t = TranslatorEnglish.new

    result = t.prepare_the_message_for_translation_to_braille("This is the message")

    assert_equal [".00.", "..", "..", "0.", "..", "..", "0.", "..", "0.", "..", "..", "..", "0.", "..", "0.", "0.", "..", "..", ".."], result
  end

  def test_translates_a_single_letter
    t = TranslatorEnglish.new

    result_1 = t.translates_top_line_from_english_to_braille("a", ["a"])
    result_2 = t.translates_middle_line_from_english_to_braille("a", ["a"])
    result_3 = t.translates_bottom_line_from_english_to_braille("a", ["a"])

    assert_equal ["0."], result_1
    assert_equal [".."], result_2
    assert_equal [".."], result_3
  end

  def test_translates_capital_letters
    t = TranslatorEnglish.new

    result_1 = t.translates_top_line_from_english_to_braille("A", ["A"])
    result_2 = t.translates_middle_line_from_english_to_braille("A", ["A"])
    result_3 = t.translates_bottom_line_from_english_to_braille("A", ["A"])

    assert_equal ["..0."], result_1
    assert_equal ["...."], result_2
    assert_equal [".0.."], result_3
  end

  def test_it_translates_english_into_braille
    t = TranslatorEnglish.new

    result_1 = t.translates_top_line_from_english_to_braille("This is the message", ["T", "h", "i", "s", " ", "i", "s", " ", "t", "h", "e", " ", "m", "e", "s", "s", "a", "g", "e"])
    result_2 = t.translates_middle_line_from_english_to_braille("This is the message", ["T", "h", "i", "s", " ", "i", "s", " ", "t", "h", "e", " ", "m", "e", "s", "s", "a", "g", "e"])
    result_3 = t.translates_bottom_line_from_english_to_braille("This is the message", ["T", "h", "i", "s", " ", "i", "s", " ", "t", "h", "e", " ", "m", "e", "s", "s", "a", "g", "e"])

    assert_equal ["...0", "0.", ".0", ".0", "..", ".0", ".0", "..", ".0", "0.", "0.", "..", "00", "0.", ".0", ".0", "0.", "00", "0."], result_1
    assert_equal ["..00", "00", "0.", "0.", "..", "0.", "0.", "..", "00", "00", ".0", "..", "..", ".0", "0.", "0.", "..", "00", ".0"], result_2
    assert_equal [".00.", "..", "..", "0.", "..", "..", "0.", "..", "0.", "..", "..", "..", "0.", "..", "0.", "0.", "..", "..", ".."], result_3
  end

end
