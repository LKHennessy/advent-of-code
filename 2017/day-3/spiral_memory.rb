class SpiralMemory
  def self.distance(input)
    data = create_data(input)

    data[input][0].abs + data[input][1].abs
  end

  def self.create_data(input)
    {1 => [0,0], 2 => [1,0], 3 => [1,1]}
  end
end
