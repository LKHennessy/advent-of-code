class ChecksumPartTwo
  def self.from(input)
    spreadsheet = input.each_line.map { |line| line.split.map(&:to_i) }

    quotents = []

    spreadsheet.map do |row|
      current_row = Array.new(row).sort

      while current_row.length > 1 do
        dividend = current_row.shift

        current_row.each do |divisor|
          quotents << divisor / dividend if divisor % dividend == 0
        end
      end
    end

    quotents.sum
  end
end
