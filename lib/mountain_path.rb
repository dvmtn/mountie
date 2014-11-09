require_relative 'pathable'
class MountainPath
  include Pathable
  def initialize(container_width,container_height)
    @container_width = container_width
    @container_height = container_height
    set_offsets(0,100)
  end

  def to_path
    start_path
    x = 0
    y = 0
    move_to x, y
    while x < @container_width * 0.9
      line_to x, y
      x += rand(10..(@container_width * 0.1))
      y = -rand(-50)
    end
    line_to @container_width,0 
    move_to 0, 0 
    path_string end_path, '#333'
  end
end