require './lib/dictionary'
require 'pry'

class TranslatorBraille

  def prepare_message_for_translation_to_english(message)
    # binding.pry
    top = ""
    middle = ""
    bottom = ""

    cleaned = message.gsub("\n", "")
    count = cleaned.length / 3 - 1
    top << cleaned.slice!(0..count)
    middle << cleaned.slice!(0..count)
    bottom << cleaned.slice!(0..count)

    convert_letters_into_braille_array(top, middle, bottom)
  end

  def convert_letters_into_braille_array(top, middle, bottom)
    top_line = top.scan(/../)
    middle_line = middle.scan(/../)
    bottom_line = bottom.scan(/../)
    encrypted = top_line.zip(middle_line, bottom_line)

    translates_from_braille_to_english(encrypted)
  end
  def translates_from_braille_to_english(encrypted)
    alphabet = Dictionary.new
    decrypted = []
    encrypted.map do |symbol|
      alphabet.decryption_dictionary.has_value?(symbol)
      if true
        decrypted  << alphabet.decryption_dictionary.key(symbol)
      end
    end
    capitalizes_letters(decrypted)
  end

  def capitalizes_letters(decrypted)
    message = []
    decrypted.each_with_index do |letter, index|
      shift_letters(decrypted, message, letter, index)
    end
    message.join
  end
  def shift_letters(decrypted, message, letter, index)
    if letter == "shift"
      message << decrypted[index+1].upcase
      decrypted.delete_at(index)
    else
      message << letter
    end
  end
end
