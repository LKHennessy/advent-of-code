class InverseCaptchaPartTwo
  def self.from(numbers)
    numbers_array = numbers.to_s.chars.map(&:to_i)
    sum = 0

    numbers_array.each_with_index.map do |number, i|
      sum += number if number == comparison_number(numbers_array, i)
    end

    sum
  end

  private

  def self.comparison_number(numbers_array, index)
      numbers_array[index + numbers_array.length / 2] ||
      numbers_array[index + numbers_array.length / 2 - numbers_array.length]
  end
end
