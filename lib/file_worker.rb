
class FileWorker

  def file_reader(filename)
    filename = ARGV[0]
    File.read(filename).chomp

  end

  def file_writer_braille(top_line,middle_line, bottom_line)
    # binding.pry
    filename = ARGV[1]
    top = []
    middle = []
    bottom = []
    written_file = File.open(filename, 'a')
    top_line.length.times do |symbol|
      top << top_line[symbol]
      middle << middle_line[symbol]
      bottom << bottom_line[symbol]
    end
    # binding.pry
    written_file.puts(top.join + "\n")
    written_file.puts(middle.join + "\n")
    written_file.puts(bottom.join + "\n")


    puts "You have created #{ARGV[1]} with #{top_line.length} characters! "
  end

  def file_writer_english(text)
    filename = ARGV[1]
    written_file = File.open(filename, 'w')
    written_file.write(text)
    written_file.close
  end
end
