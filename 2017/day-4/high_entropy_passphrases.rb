class HighEntropyPassphrases
  def self.number_valid(list)
    list.each_line.count { |line| valid?(line) }
  end

  def self.valid?(passphrase)
    words = passphrase.split(' ')

    words == words.uniq ? true : false
  end
end
