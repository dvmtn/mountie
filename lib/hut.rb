require_relative 'pathable'
class Hut
  include Pathable
  def initialize()
    set_offsets(117,120)
    @scale = 10
  end

  def to_path
    start_path
    move_to 0, 0
    line_to @scale, 0
    line_to @scale, @scale
    line_to 0, @scale
    line_to 0, 0
    path_string end_path, 'brown'
  end
end