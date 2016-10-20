class FileWorker
  def file_reader(filename)
    File.read(ARGV[0]).chomp
  end
  def file_writer_braille(top_line,middle_line, bottom_line)
    top = []
    middle = []
    bottom  = []
    top_line.length.times do |symbol|
      top << top_line[symbol]
      middle << middle_line[symbol]
      bottom << bottom_line[symbol]
    end
    write_braille(bottom, middle, top)
  end
  def write_braille(bottom, middle, top)
    written_file = File.open(ARGV[1], 'a')
    written_file.puts(top.join + "\n")
    written_file.puts(middle.join + "\n")
    written_file.puts(bottom.join + "\n")
    puts "You have created #{ARGV[1]} with #{top.length} characters! "
  end
  def file_writer_english(text)
    written_file = File.open(ARGV[1], 'w')
    written_file.write(text)
    puts "You have created #{ARGV[1]} with #{text.length} characters! "
  end
end
