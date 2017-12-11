require 'minitest/autorun'
require_relative 'spiral_memory_part_two.rb'

class SpiralMemoryPartTwoTest < MiniTest::Test
  def test_distance
    assert_equal 2, SpiralMemoryPartTwo.next_value(1)
  end

  def test_distance_2
    assert_equal 4, SpiralMemoryPartTwo.next_value(2)
  end

  def test_distance_3
    assert_equal 4, SpiralMemoryPartTwo.next_value(3)
  end

  def test_distance_4
    assert_equal 5, SpiralMemoryPartTwo.next_value(4)
  end

  def test_distance_5
    assert_equal 10, SpiralMemoryPartTwo.next_value(5)
  end

  # def test_distance_6
  #   assert_equal 312453, SpiralMemoryPartTwo.next_value(312051)
  # end
end
