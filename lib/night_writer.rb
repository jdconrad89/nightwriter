require './lib/translator_english'
require './lib/file_worker'
require 'pry'
class NightWriter
  attr_reader :translator
  # binding.pry
  def initialize
    @translator = TranslatorEnglish.new
  end
  def open_file
    message = FileWorker.file_reader(ARGV[0])
    translate(message)
  end
  def translates(message)
    message = open_file.gsub("\n",'')
    top_line = translator.translates_top_line_from_english_to_braille(message)
    middle_line = translator.translates_middle_line_from_english_to_braille(message)
    bottom_line = translator.translates_bottom_line_from_english_to_braille(message)
  end
  def write_file
    FileWorker.file_writer_braille(top_line, middle_line, bottom_line)
  end
end
n = NightWriter.new
n.open_file
