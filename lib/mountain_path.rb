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
    move_to 0, 0
    line_to @container_width * 0.2, 0
    line_to @container_width * 0.25, -20
    line_to @container_width * 0.3, -10
    line_to @container_width * 0.35, -25
    line_to @container_width * 0.4, -10
    line_to @container_width,0 
    move_to 0, 0 
    path_string end_path, '#333'
  end
end