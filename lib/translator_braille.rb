require './lib/dictionary'
require 'pry'

class TranslatorBraille
  include Dictionary

  attr_reader :alphabet

  def initialize
    @alphabet = Dictionary.decryption_dictionary
  end

  def prepare_message_for_translation_to_english(message)
    top = ""
    middle = ""
    bottom = ""
    
    cleaned = message.gsub("\n", "")
    count = cleaned.length / 3 - 1
    top << cleaned.slice!(0..count)
    middle << cleaned.slice!(0..count)
    bottom << cleaned.slice!(0..count)

    convert_letters_into_braille_array
  end

  def convert_letters_into_braille_array
    top_line = top.scan(/../)
    middle_line = middle.scan(/../)
    bottom_line = bottom.scan(/../)
    encrypted = top_line.zip(middle_line, bottom_line)

    translates_from_braille_to_english(message, encrypted)
  end
  def translates_from_braille_to_english(message, encrypted)
    decrypted = []
    encrypted.map do |symbol|
      alphabet.alphabet_4.has_value?(symbol)
      if true
        decrypted  << alphabet_4.key(symbol)
      end
    end
    capitalizes_letters(decrypted)
  end
  def capitalizes_letters(decrypted)
    message = []
    decrypted.each_with_index do |letter, index|
      shift_letters(message, letter, index)
    end
    message.join
  end
  def shift_letters(message, letter, index)
    if letter == "shift"
      message << decrypted[index+1].upcase
      decrypted.delete_at(index)
    else
      message << letter
    end
  end
end
