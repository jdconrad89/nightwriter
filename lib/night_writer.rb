require './lib/translator'
require './lib/file_worker'
require 'pry'

class NightWriter
  # binding.pry
  attr_reader :encrypted_top,
              :encrypted_middle,
              :encrypted_bottom,
              :message,
              :file_worker,
              :translator

  def initialize
    @file_worker = FileWorker.new
    @translator = Translator.new
    binding.pry
  end

  def open_file
    file_worker.file_reader(filename)
    binding.pry
  end

  def translates
    translator.translates_top_line_from_english_to_braille(message)
    translator.translates_middle_line_from_english_to_braille(message)
    translator.translates_bottom_line_from_english_to_braille(message)
  end

  def write_file
    @file_worker.file_writer_braille(encrypted_top, encrypted_middle, encrypted_bottom)

  end
  n = NightWriter.new
  binding.pry

end
