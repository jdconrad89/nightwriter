require './lib/translator_english'
require './lib/file_worker'
require 'pry'

class NightWriter
  attr_reader :fileworker

  # binding.pry
  def initialize
    @fileworker = FileWorker.new
  end
  def open_file
    message = fileworker.file_reader(ARGV[0])
    translates(message)
  end
  def translates(message)

    translator = TranslatorEnglish.new
    top_line = translator.translates_top_line_from_english_to_braille(message)
    middle_line = translator.translates_middle_line_from_english_to_braille(message)
    bottom_line = translator.translates_bottom_line_from_english_to_braille(message)

    write_file(top_line, middle_line, bottom_line)
  end
  def write_file(top_line, middle_line, bottom_line)
    fileworker.file_writer_braille(top_line, middle_line, bottom_line)
  end
end
n = NightWriter.new
n.open_file
