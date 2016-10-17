require_relative 'dictionary'
require 'pry'

class Translator
  include Dictionary

  attr_reader :alphabet_1,
              :alphabet_2,
              :alphabet_3,
              :alphabet_4,
              :encrypted_top,
              :encrypted_middle,
              :encrypted_bottom,
              :decrypted

  def initialize
    @alphabet_1 = Dictionary.top_line
    @alphabet_2 = Dictionary.middle_line
    @alphabet_3 = Dictionary.bottom_line
    @alphabet_4 = Dictionary.decryption_dictionary
    @top_line = []
    @middle_line = []
    @bottom_line = []
    @decrypted = []
  end

  def prepare_the_message_for_translation(message)
    @prepared = message.chars.flatten
  end

  def translates_top_line_from_english_to_braille(message)
    prepare_the_message_for_translation(message)
    @encrypted_top = @prepared.map do |letter|
      alphabet_1[letter]
    end.flatten
  end

  def translates_middle_line_from_english_to_braille(message)
    prepare_the_message_for_translation(message)
    @encrypted_middle = @prepared.map do |letter|
      alphabet_2[letter]
    end.flatten
  end

  def translates_bottom_line_from_english_to_braille(message)
    prepare_the_message_for_translation(message)
    @encrypted_bottom = @prepared.map do |letter|
      alphabet_3[letter]
    end.flatten
  end



  def translate_top_line_from_braille_to_english(encrypted)
    encrypted.map do |symbol|
      alphabet_4.has_value?(symbol)
      if true
      decrypted  << alphabet_4.key(symbol)
    end
  end.uniq.join
  end
end
