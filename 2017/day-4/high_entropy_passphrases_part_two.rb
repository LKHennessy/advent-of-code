class HighEntropyPassphrasesPartTwo
  def self.number_valid(list)
    list.each_line.count { |line| valid?(line) }
  end

  def self.valid?(passphrase)
    words = passphrase.split(' ')

    letters = words.map { |word| word.chars.sort }

    letters == letters.uniq ? true : false
  end
end
