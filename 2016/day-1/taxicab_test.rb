require 'minitest/autorun'
require_relative 'taxicab'

class TaxicabTest < Minitest::Test
  def test_turn
    assert_equal :east, Taxicab.new.turn(:north, 'R')
  end

  def test_distance
    input = 'R2, L3'
    assert_equal 5, Taxicab.new.distance(input)
  end

  def test_distance_2
    input = 'R2, R2, R2'
    assert_equal 2, Taxicab.new.distance(input)
  end

  def test_distance_3
    input = 'R5, L5, R5, R3'
    assert_equal 12, Taxicab.new.distance(input)
  end

  def test_distance_4
    input = 'R3, R1, R4, L4, R3, R1, R1, L3, L5, L5, L3, R1, R4, L2, L1, R3, L3, R2, R1, R1, L5, L2, L1, R2, L4, R1, L2, L4, R2, R2, L2, L4, L3, R1, R4, R3, L1, R1, L5, R4, L2, R185, L2, R4, R49, L3, L4, R5, R1, R1, L1, L1, R2, L1, L4, R4, R5, R4, L3, L5, R1, R71, L1, R1, R186, L5, L2, R5, R4, R1, L5, L2, R3, R2, R5, R5, R4, R1, R4, R2, L1, R4, L1, L4, L5, L4, R4, R5, R1, L2, L4, L1, L5, L3, L5, R2, L5, R4, L4, R3, R3, R1, R4, L1, L2, R2, L1, R4, R2, R2, R5, R2, R5, L1, R1, L4, R5, R4, R2, R4, L5, R3, R2, R5, R3, L3, L5, L4, L3, L2, L2, R3, R2, L1, L1, L5, R1, L3, R3, R4, R5, L3, L5, R1, L3, L5, L5, L2, R1, L3, L1, L3, R4, L1, R3, L2, L2, R3, R3, R4, R4, R1, L4, R1, L5'
    assert_equal 300, Taxicab.new.distance(input)
  end
end
