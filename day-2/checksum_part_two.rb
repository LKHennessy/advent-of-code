class ChecksumPartTwo
  def self.from(input)
    spreadsheet = input.each_line.map { |line| line.split.map(&:to_i) }

    spreadsheet.map { |row| row.map { |digit| row.index { |digit2| digit2 % digit == 0 } } }

    # puts spreadsheet.map { |row| row.map { |digit| row.select { |digit2| digit2 == digit } } }
    # spreadsheet.map { |row| row.split } }.sum
  end
end
