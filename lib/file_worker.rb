class FileWorker



  def file_reader(filename)
    filename = ARGV[0]
    File.read(filename)
  end


  # def file_writer(file, **output**)
  #   filename = ARGV[1]
  #   File.write(ARGV[1], **output** )
  # end
end
