require 'minitest/autorun'
require_relative 'taxicab'

class TaxicabTest < Minitest::Test
  def test_move
    assert_equal 1, Taxicab.move(0, 1)
  end

  def test_turn
    assert_equal 'east', Taxicab.turn('north', 'right')
  end

  def test_distance
    input = 'R2, L3'
    assert_equal 5, Taxicab.distance(input)
  end
end
