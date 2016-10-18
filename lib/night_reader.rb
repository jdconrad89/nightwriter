require_relative 'translator'
require_relative 'file_worker'

class NightReader
  require './lib/translator'
  require './lib/file_worker'
  require 'pry'

  class NightWriter
    # binding.pry
    attr_reader :message,
                :file_worker,
                :translator,
                :file_name,
                :top_line,
                :middle_line,
                :bottom_line

    def initialize
      @file_worker = FileWorker.new
      @translator = Translator.new
      @file_name = ARGV[0]
      @encrypted_file = ARGV[1]
    end

    def open_file
      @message = file_worker.file_reader(file_name)
    end

    def translates
      message = open_file
      @top_line = translator.translates_top_line_from_braille_to_english(top_line, middle_line, bottom)
      # @middle_line = translator.translates_middle_line_from_english_to_braille(message)
      # @bottom_line = translator.translates_bottom_line_from_english_to_braille(message)
    end

    def write_file
      translates
      @file_worker.file_writer_english(final_message)
    end
  end
  n = NightWriter.new
  n.write_file


end
