class SpiralMemoryPartTwo
  def self.next_value(input)
    data = create_data(input)
    values = create_values(data)

    # puts data
    # puts values

    values.keep_if { |_, value| value > input}
    # puts values
    values.values[0]
  end

  def self.create_data(input)
    data = {1 => [0,0] }
    direction = :right
    current_number = 2
    steps_to_next_turn = 1

    while current_number < 100
      2.times do
        case direction
          when :right
            steps_to_next_turn.times do
              x = data[current_number - 1][0] + 1
              y = data[current_number - 1][1]
              data[current_number] = [x, y]
              current_number += 1
              direction = :up
            end
          when :up
            steps_to_next_turn.times do
              x = data[current_number - 1][0]
              y = data[current_number - 1][1] + 1
              data[current_number] = [x, y]
              current_number += 1
              direction = :left
            end
          when :left
            steps_to_next_turn.times do
              x = data[current_number - 1][0] - 1
              y = data[current_number - 1][1]
              data[current_number] = [x, y]
              current_number += 1
              direction = :down
            end
          when :down
            steps_to_next_turn.times do
              x = data[current_number - 1][0]
              y = data[current_number - 1][1] - 1
              data[current_number] = [x, y]
              current_number += 1
              direction = :right
            end
        end
      end
      steps_to_next_turn += 1
    end

    data
  end

  def self.create_values(data)
    values = {}

    data.each_value do |location|
      value = accumulate_surrounding_nodes(values, location)
      values[location] = value
    end

    values
  end

  def self.accumulate_surrounding_nodes(values, location)
    return 1 if location == [0,0]
    surrounding_values = []
    x = location[0]
    y = location[1]

    surrounding_values << values[[x + 1,y]]
    surrounding_values << values[[x + 1,y + 1]]
    surrounding_values << values[[x,y + 1]]
    surrounding_values << values[[x - 1,y + 1]]
    surrounding_values << values[[x - 1,y]]
    surrounding_values << values[[x - 1,y - 1]]
    surrounding_values << values[[x,y - 1]]
    surrounding_values << values[[x + 1,y - 1]]

    surrounding_values.compact.sum
  end
end
