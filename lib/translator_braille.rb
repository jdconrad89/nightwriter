require './lib/dictionary'
require 'pry'

class TranslatorBraille
  include Dictionary

  attr_reader :alphabet_1,
              # :alphabet_2,
              # :alphabet_3,
              # :alphabet_4,
              # :encrypted_top,
              # :encrypted_middle,
              # :encrypted_bottom,
              :decrypted

  def initialize
    @alphabet_1 = Dictionary.decryption_dictionary
    # @alphabet_2 = Dictionary.middle_line
    # @alphabet_3 = Dictionary.bottom_line
    # @alphabet_4 = Dictionary.decryption_dictionary
    # @top_line = []
    # @middle_line = []
    # @bottom_line = []
    # @decrypted = []
  end

  def prepare_message_for_translation_to_english(message)
    top = ""
    middle = ""
    bottom = ""

    cleaned = message.gsub("\n", "")
    count = cleaned.length / 3 - 1
    top << cleaned.slice!(0..ccount)
    middle << cleaned.slice!(0..count)
    bottom << cleaned.slice!(0..count)

    top_line = top.scan(/../)
    middle_line = middle.scan(/../)
    bottom_line = bottom.scan(/../)

    @encrypted = top_line.zip(middle_line, bottom_line)
  end

  def translates_from_braille_to_english(message)
    prepare_message_for_translation_to_english(top_line, middle_line, bottom_line)
    decrypted = []
    @encrypted.map do |symbol|
      alphabet_4.has_value?(symbol)
      if true
      decrypted  << alphabet_4.key(symbol)
    end
  end.uniq.join
  end
end
