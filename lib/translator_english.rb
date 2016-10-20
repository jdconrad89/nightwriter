require './lib/dictionary'
require 'pry'

class TranslatorEnglish
  # include Dictionary

  attr_reader :prepared,
              :alphabet

  def initialize
    @alphabet = Dictionary.new
  end

  def prepare_the_message_for_translation_to_braille(message)
    @prepared = message.chars
  end

  def translates_top_line_from_english_to_braille(message)
    prepare_the_message_for_translation_to_braille(message)
    prepared.map do |letter|
      alphabet.top_line[letter]
    end.flatten
  end

  def translates_middle_line_from_english_to_braille(message)
    prepare_the_message_for_translation_to_braille(message)
    prepared.map do |letter|
      alphabet.middle_line[letter]
    end.flatten
  end

  def translates_bottom_line_from_english_to_braille(message)
    prepare_the_message_for_translation_to_braille(message)
    prepared.map do |letter|
      alphabet.bottom_line[letter]
    end.flatten
  end
end
