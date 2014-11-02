require_relative 'pathable'
class Hut
  include Pathable
  def initialize()
    set_offsets(0,0)
  end

  def to_path
    start_path
    move_to 0, 0
    line_to 100, 0
    line_to 100, 100
    line_to 0, 100
    line_to 0, 0
    path_string end_path, 'brown'
  end
end