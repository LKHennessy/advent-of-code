class InverseCaptcha
  def self.from(numbers)
    numbers_array = numbers.to_s.chars.map(&:to_i)
    sum = 0

    numbers_array.each_with_index.map do |number, i|
      sum += number if number == next_number(numbers_array, i)
    end

    sum
  end

  private

  def self.next_number(numbers_array, index)
    numbers_array[index + 1] || numbers_array[0]
  end
end
