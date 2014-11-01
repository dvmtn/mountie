class MountainMaker
  THINNEST_PEAK = 25
  WIDEST_PEAK = 100
  SHORTEST_PEAK = 100

  def points width, height
    x, y = 0
    output = [[0,rand(height)]]
    while x < width do
      x = x + THINNEST_PEAK + rand(WIDEST_PEAK)
      y =  rand(height)
      output << [x,y]
    end
    output
  end

end
