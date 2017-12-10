require 'minitest/autorun'
require_relative 'spiral_memory.rb'

class SpiralMemoryTest < MiniTest::Test
  def test_distance
    assert_equal 0, SpiralMemory.distance(1)
  end

  def test_distance_2
    assert_equal 2, SpiralMemory.distance(3)
  end

  def test_distance_3
    skip
    assert_equal 3, SpiralMemory.distance(12)
  end

  def test_distance_4
    skip
    assert_equal 2, SpiralMemory.distance(23)
  end

  def test_distance_5
    skip
    assert_equal 31, SpiralMemory.distance(1024)
  end
end
