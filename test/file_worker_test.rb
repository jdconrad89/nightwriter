require_relative 'test_helper'
require_relative '../lib/file_worker'

class FileWorkerTest < Minitest::Test

  def test_it_opens_a_file
    f = FileWorker.new

    result = f.file_reader("message.txt")

    refute result.closed? , result
  end
end
