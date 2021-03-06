module Dictionary

  def self.top_line
    alphabet_1 = {"a" => "0.",
      "b" => "0.",
      "c" => "00",
      "d" => "00",
      "e" => "0.",
      "f" => "00",
      "g" => "00",
      "h" => "0.",
      "i" => ".0",
      "j" => ".0",
      "k" => "0.",
      "l" => "0.",
      "m" => "00",
      "n" => "00",
      "o" => "0.",
      "p" => "00",
      "q" => "00",
      "r" => "0.",
      "s" => ".0",
      "t" => ".0",
      "u" => "0.",
      "v" => "0.",
      "w" => ".0",
      "x" => "00",
      "y" => "00",
      "z" => "0.",
      " " => "..",
      "A" => "..0.",
      "B" => "..0.",
      "C" => "..00",
      "D" => "..00",
      "E" => "..0.",
      "F" => "..00",
      "G" => "..00",
      "H" => "..0.",
      "I" => "...0",
      "J" => "...0",
      "K" => "..0.",
      "L" => "..0.",
      "M" => "..00",
      "N" => "..00",
      "O" => "..0.",
      "P" => "..00",
      "Q" => "..00",
      "R" => "..0.",
      "S" => "...0",
      "T" => "...0",
      "U" => "..0.",
      "V" => "..0.",
      "W" => "...0",
      "X" => "..00",
      "Y" => "..00",
      "Z" => "..0.",
      "1" => ".00.",
      "2" => ".00.",
      "3" => ".000",
      "4" => ".000",
      "5" => ".00.",
      "6" => ".000",
      "7" => ".000",
      "8" => ".00.",
      "9" => ".0.0",
      "0" => ".0.0"
      }
  end

  def self.middle_line
      alphabet_2 = {"a" => "..",
        "b" => "0.",
        "c" => "..",
        "d" => ".0",
        "e" => ".0",
        "f" => "0.",
        "g" => "00",
        "h" => "00",
        "i" => "0.",
        "j" => "00",
        "k" => "..",
        "l" => "0.",
        "m" => "..",
        "n" => ".0",
        "o" => ".0",
        "p" => "0.",
        "q" => "00",
        "r" => "00",
        "s" => "0.",
        "t" => "00",
        "u" => "..",
        "v" => "0.",
        "w" => "00",
        "x" => "..",
        "y" => ".0",
        "z" => ".0",
        " " => "..",
        "A" => "....",
        "B" => "..0.",
        "C" => "....",
        "D" => "...0",
        "E" => "...0",
        "F" => "..0.",
        "G" => "..00",
        "H" => "..00",
        "I" => "..0.",
        "J" => "..00",
        "K" => "....",
        "L" => "..0.",
        "M" => "....",
        "N" => "...0",
        "O" => "...0",
        "P" => "..0.",
        "Q" => "..00",
        "R" => "..00",
        "S" => "..0.",
        "T" => "..00",
        "U" => "....",
        "V" => "..0.",
        "W" => "..00",
        "X" => "....",
        "Y" => "...0",
        "Z" => "...0",
        "1" => ".0..",
        "2" => ".00.",
        "3" => ".0..",
        "4" => ".0.0",
        "5" => ".0.0",
        "6" => ".00.",
        "7" => ".000",
        "8" => ".000",
        "9" => ".00.",
        "0" => ".000",
      }
  end


  def self.bottom_line
        alphabet_3 = {"a" => "..",
          "b" => "..",
          "c" => "..",
          "d" => "..",
          "e" => "..",
          "f" => "..",
          "g" => "..",
          "h" => "..",
          "i" => "..",
          "j" => "..",
          "k" => "0.",
          "l" => "0.",
          "m" => "0.",
          "n" => "0.",
          "o" => "0.",
          "p" => "0.",
          "q" => "0.",
          "r" => "0.",
          "s" => "0.",
          "t" => "0.",
          "u" => "00",
          "v" => "00",
          "w" => ".0",
          "x" => "00",
          "y" => "00",
          "z" => "00",
          " " => "..",
          "A" => ".0..",
          "B" => ".0..",
          "C" => ".0..",
          "D" => ".0..",
          "E" => ".0..",
          "F" => ".0..",
          "G" => ".0..",
          "H" => ".0..",
          "I" => ".0..",
          "J" => ".0..",
          "K" => ".00.",
          "L" => ".00.",
          "M" => ".00.",
          "N" => ".00.",
          "O" => ".00.",
          "P" => ".00.",
          "Q" => ".00.",
          "R" => ".00.",
          "S" => ".00.",
          "T" => ".00.",
          "U" => ".000",
          "V" => ".000",
          "W" => ".0.0",
          "X" => ".000",
          "Y" => ".000",
          "Z" => ".000",
          "1" => "00..",
          "2" => "00..",
          "3" => "00..",
          "4" => "00..",
          "5" => "00..",
          "6" => "00..",
          "7" => "00..",
          "8" => "00..",
          "9" => "00..",
          "0" => "00.."
        }
  end

  def self.decryption_dictionary
    alphabet_4 = {
      "a" => [ "0.", "..", ".." ],
      "b" => [ "0.", "0.", ".." ],
      "c" => [ "00", "..", ".." ],
      "d" => [ "00", ".0", ".." ],
      "e" => [ "0.", ".0", ".." ],
      "f" => [ "00", "0.", ".." ],
      "g" => [ "00", "00", ".." ],
      "h" => [ "0.", "00", ".." ],
      "i" => [ ".0", "0.", ".." ],
      "j" => [ ".0", "00", ".." ],
      "k" => [ "0.", "..", "0." ],
      "l" => [ "0.", "0.", "0." ],
      "m" => [ "00", "..", "0." ],
      "n" => [ "00", ".0", "0." ],
      "o" => [ "0.", ".0", "0." ],
      "p" => [ "00", "0.", "0." ],
      "q" => [ "00", "00", "0." ],
      "r" => [ "0.", "00", "0." ],
      "s" => [ ".0", "0.", "0." ],
      "t" => [ ".0", "00", "0." ],
      "u" => [ "0.", "..", "00" ],
      "v" => [ "0.", "0.", "00" ],
      "w" => [ ".0", "00", ".0" ],
      "x" => [ "00", "..", "00" ],
      "y" => [ "00", ".0", "00" ],
      "z" => [ "0.", ".0", "00" ],
      " " => [ "..", "..", ".." ],
      "A" => [ "..0.", "....", ".0.." ],
      "B" => [ "..0.", "..0.", ".0.." ],
      "C" => [ "..00", "....", ".0.." ],
      "D" => [ "..00", "...0", ".0.." ],
      "E" => [ "..0.", "...0", ".0.." ],
      "F" => [ "..00", "..0.", ".0.." ],
      "G" => [ "..00", "..00", ".0.." ],
      "H" => [ "..0.", "..00", ".0.." ],
      "I" => [ "...0", "..0.", ".0.." ],
      "J" => [ "...0", "..00", ".0.." ],
      "K" => [ "..0.", "....", ".00." ],
      "L" => [ "..0.", "..0.", ".00." ],
      "M" => [ "..00", "....", ".00." ],
      "N" => [ "..00", "...0", ".00." ],
      "O" => [ "..0.", "...0", ".00." ],
      "P" => [ "..00", "..0.", ".00." ],
      "Q" => [ "..00", "..00", ".00." ],
      "R" => [ "..0.", "..00", ".00." ],
      "S" => [ "...0", "..0.", ".00." ],
      "T" => [ "...0", "..00", ".00." ],
      "U" => [ "..0.", "....", ".000" ],
      "V" => [ "..0.", "..0.", ".000" ],
      "W" => [ "...0", "..00", ".0.0" ],
      "X" => [ "..00", "....", ".000" ],
      "Y" => [ "..00", "...0", ".000" ],
      "Z" => [ "..0.", "...0", ".000" ],
      "1" => [ ".00.", ".0..", "00.." ],
      "2" => [ ".00.", ".00.", "00.." ],
      "3" => [ ".000", ".0..", "00.." ],
      "4" => [ ".000", ".0.0", "00.." ],
      "5" => [ ".00.", ".0.0", "00.." ],
      "6" => [ ".000", ".00.", "00.." ],
      "7" => [ ".000", ".000", "00.." ],
      "8" => [ ".00.", ".000", "00.." ],
      "9" => [ ".0.0", ".00.", "00.." ],
      "0" => [ ".0.0", ".000", "00.." ]
    }
  end
end
