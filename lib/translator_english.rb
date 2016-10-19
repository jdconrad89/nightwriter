require './lib/dictionary'
require 'pry'

class TranslatorEnglish

  attr_reader :alphabet

  def initialize
    @alphabet = Dictionary.new
  end
  def prepare_the_message_for_translation_to_braille(message)
    binding.pry
    prepared = message.chars
    translates_top_line_from_english_to_braille(prepared)
    translates_middle_line_from_english_to_braille(prepared)
    translates_bottom_line_from_english_to_braille(prepared)
  end
  def translates_top_line_from_english_to_braille(prepared)
    encrypted_top = prepared.map do |letter|
      alphabet.top_line[letter]
    end.flatten
  end
  def translates_middle_line_from_english_to_braille(prepared)
    encrypted_middle = prepared.map do |letter|
      alphabet.middle_line[letter]
    end.flatten
  end
  def translates_bottom_line_from_english_to_braille(prepared)
    encrypted_bottom = prepared.map do |letter|
      alphabet.bottom_line[letter]
    end.flatten
  end
end
