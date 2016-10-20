require_relative "test_helper"
require "./lib/translator_braille"

class TranslatorBrailleTest < Minitest::Test

  def test_it_prepares_message_for_translation_to_english
    t = TranslatorBraille.new

      result = t.prepare_message_for_translation_to_english("000..0....00....0.")
      assert_equal "cat", result
  end

  def test_it_prepares_a_single_word
    t = TranslatorBraille.new

    result = t.prepare_message_for_translation_to_english("000..0....00....0.")
    assert_equal "cat", result
  end

  def test_it_prepares_a_single_letter
    t = TranslatorBraille.new

    result = t.prepare_message_for_translation_to_english("0.....")
    assert_equal "a", result
  end

  def test_it_converts_letters_into_braille_array
    t = TranslatorBraille.new

    result = t.convert_letters_into_braille_array("0.", "..", "..")
    assert_equal "a", result
  end

  def test_it_capitalizes_letters
    t = TranslatorBraille.new

    result = t.capitalizes_letters(["shift", "a"])
    assert_equal "A", result
  end

  def test_it_translates_braille_into_english
    t = TranslatorBraille.new

    result = t.prepare_message_for_translation_to_english("...00..0.0...0.0...00.0...000..0.00.000...00000.0...0.0...0000.0.....00.0...00.0.00.....0.....0...0.......0...0.0.......")
    assert_equal "This is the message", result
  end
end
