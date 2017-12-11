class SpiralMemoryPartTwo
  def self.next_value(input)
    data = create_data(input)

    data.keep_if { |_, value| value > input}
    data.values.first
  end

  def self.create_data(input)
    data = { [0,0] => 1 }
    direction = :right
    steps_to_next_turn = 1

    while data.values.last <= input
      2.times do
        case direction
          when :right
            steps_to_next_turn.times do
              x = data.keys.last[0] + 1
              y = data.keys.last[1]
              value = accumulate_surrounding_nodes(data, x, y)
              data[[x, y]] = value
              direction = :up
            end
          when :up
            steps_to_next_turn.times do
              x = data.keys.last[0]
              y = data.keys.last[1] + 1
              value = accumulate_surrounding_nodes(data, x, y)
              data[[x, y]] = value
              direction = :left
            end
          when :left
            steps_to_next_turn.times do
              x = data.keys.last[0] - 1
              y = data.keys.last[1]
              value = accumulate_surrounding_nodes(data, x, y)
              data[[x, y]] = value
              direction = :down
            end
          when :down
            steps_to_next_turn.times do
              x = data.keys.last[0]
              y = data.keys.last[1] - 1
              value = accumulate_surrounding_nodes(data, x, y)
              data[[x, y]] = value
              direction = :right
            end
        end
      end
      steps_to_next_turn += 1
    end

    data
  end

  def self.accumulate_surrounding_nodes(values, x, y)
    surrounding_values = []

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
