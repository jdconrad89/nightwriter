require './lib/translator_braille'
require './lib/file_worker'
require 'pry'
class NightReader
  # binding.pry
  attr_reader :file_worker

  def initialize
    @file_worker = FileWorker.new

  end

  def open_file
    message = file_worker.file_reader(ARGV[0])
    translates(message)
  end

  def translates(message)
    translator = TranslatorBraille.new
    final_message = translator.prepare_message_for_translation_to_english(message)
    write_file(final_message)
  end

  def write_file(final_message)
    file_worker.file_writer_english(final_message)
  end
  
end
n = NightReader.new
n.open_file
