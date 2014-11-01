class MountainMaker
  THINNEST_PEAK = 25
  WIDEST_PEAK = 100
  SHORTEST_PEAK = 100

  def call width, height
    points = points(width, height)
    svg_path(points).to_command
  end

  def points width, height
    x, y = 0
    output = []
    while x < width do
      x = x + THINNEST_PEAK + rand(WIDEST_PEAK)
      y =  SHORTEST_PEAK + rand(height - SHORTEST_PEAK)
      output << [x,y]
    end
    output
  end

end
