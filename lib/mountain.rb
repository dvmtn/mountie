require_relative 'svgable'

class Mountain
  include Svgable

  def initialize width, max_height
    @width = width
    @max_height = max_height
  end

  def start
    [0, @max_height]
  end

  def finish
    [@width, @max_height]
  end

  def peak
    third = @width/3
    x = third + rand(third)
    y = @max_height - (0.8 * rand(@max_height) )
    [x,y]
  end

  def points
    [start, peak, finish]
  end

end
