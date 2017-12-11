class SpiralMemory
  def self.distance(input)
    data = create_data(input)

    data[input][0].abs + data[input][1].abs
  end

  def self.create_data(input)
    data = {1 => [0,0]}
    direction = :right
    current_number = 2
    steps_to_next_turn = 1

    while current_number <= input
      2.times do
        case direction
          when :right
            steps_to_next_turn.times do
              x = data[current_number - 1][0]
              y = data[current_number - 1][1]
              data[current_number] = [x + 1, y]
              current_number += 1
              direction = :up
            end
          when :up
            steps_to_next_turn.times do
              x = data[current_number - 1][0]
              y = data[current_number - 1][1]
              data[current_number] = [x, y + 1]
              current_number += 1
              direction = :left
            end
          when :left
            steps_to_next_turn.times do
              x = data[current_number - 1][0]
              y = data[current_number - 1][1]
              data[current_number] = [x - 1, y]
              current_number += 1
              direction = :down
            end
          when :down
            steps_to_next_turn.times do
              x = data[current_number - 1][0]
              y = data[current_number - 1][1]
              data[current_number] = [x, y - 1]
              current_number += 1
              direction = :right
            end
        end
      end
      steps_to_next_turn += 1
    end

    data
  end
end
