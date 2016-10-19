require './lib/translator'
require './lib/file_worker'
require 'pry'
class NightReader
  attr_reader :message,
              :file_worker,
              :translator,
              :file_name,
              :top_line,
              :middle_line,
              :bottom_line,
              :final_message
  def initialize
    @file_worker = FileWorker.new
    @translator = TranslatorBraille.new
    @file_name = ARGV[0]
    @encrypted_file = ARGV[1]
  end
  def open_file
    file_worker.file_reader(file_name)
  end
  def translates
    message = open_file
    @final_message = translator.capitalizes_letters(message)
  end
  def write_file
    translates
    @file_worker.file_writer_english(final_message)
  end
end
n = NightReader.new
n.write_file
