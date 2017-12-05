class Taxicab
  def distance(input)
    array = input.split(', ')

    current_position = [0, 0]
    current_direction = :north

    array.map do |node|
      turn_direction, move_distance = node[0], node[1..-1].to_i

      current_direction = turn(current_direction, turn_direction)

      case current_direction
        when :north
          current_position[0] += move_distance
        when :south
          current_position[0] -= move_distance
        when :east
          current_position[1] += move_distance
        when :west
          current_position[1] -= move_distance
      end
    end

    current_position[0].abs + current_position[1].abs
  end

  def turn(starting_direction, turn)
    directions = [:north, :east, :south, :west]
    case turn
      when 'R'
        directions[directions.index(starting_direction) + 1] || directions[0]
      when 'L'
        directions[directions.index(starting_direction) - 1] || directions[3]
    end
  end
end
