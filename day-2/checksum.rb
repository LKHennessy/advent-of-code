class Checksum
  def self.from(input)
    spreadsheet = input.each_line.map { |line| line.split.map(&:to_i) }

    spreadsheet.map { |row| row.max - row.min }.sum
  end
end
