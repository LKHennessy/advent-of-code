class Taxicab
  def self.distance(input)
    array = input.split(',').map { |node| node.strip }

    array.map { |node| node.match(/\D/) }
  end

  def self.move(position, distance)
    position + distance
  end

  def self.turn(starting_direction, turn)
    directions = ['north', 'east', 'south', 'west']
    case turn
      when 'right'
        directions[directions.index(starting_direction) + 1] || directions[0]
      when 'left'
        directions[directions.index(starting_direction) - 1] || directions[3]
    end
  end
end
