class JumpMaze
  def self.jump(maze)
    maze = maze.each_line.map { |offset| offset.split.map(&:to_i) }.flatten

    current_index = 0
    steps = 0

    while maze[current_index]
      current_argument = maze[current_index]
      steps += 1
      maze[current_index] += 1
      current_index = current_index + current_argument
    end

    steps
  end
end
