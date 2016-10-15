require_relative 'dictionary'
require 'pry'
# require 'nightwriter'



class Translator
  include Dictionary

  def initialize
    @dictionary = Dictionary.dictionary
  end





  def prepare_the_message_for_translation(message)
    @prepared = message.chars.flatten
  end

  def translates_from_english_to_braille(message)
    prepare_the_message_for_translation(message)
    @encrypted = @prepared.map do |letter|
      @dictionary.values_at(letter)
    end.flatten
  end

  def translate_from_braille_to_english(encrypted)
    # binding.pry
    encrypted.map do |symbol|
      @dictionary.has_value?(symbol)
      if true
        @dictionary.key(symbol)
      end
    end.join
  end

end
