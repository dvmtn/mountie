class Mountain

  def initialize width, max_height
    @width = width
    @max_height = max_height
  end

  def points
    [[0,@max_height], peak, [@width, @max_height]]
  end

  def peak
    third = @width/3
    x = third + rand(third)
    y = @max_height - (0.8 * rand(@max_height) )
    [x,y]
  end

end
