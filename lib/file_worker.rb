require './lib/night_writer'
class FileWorker



  def file_reader(filename)
    filename = ARGV[0]
    File.read(filename)
  end

  def file_writer_braille(top_line, middle_line, bottom_line)
      filename = ARGV[1]
      written_file = File.open(filename, 'w')
      top.length.times do |symbol|
        written_file.write(top[symbol] << "\n")
        written_file.write(middle[symbol] << "\n")
        written.write(bottom[symbol] << "\n")
      end
      written_file.close
  end

  def file_writer_english(text)
    filename = ARGV[1]
    written_file = File.open(filename, 'w')
    written_file.write(text)
    written_file.close
  end
end
