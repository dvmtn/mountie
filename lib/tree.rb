require_relative 'pathable'
class Tree
  include Pathable
  
  def initialize()
    @centre = 25
  end

  def draw_branch(left_offset, top)
    move_to(@centre, top)
    line_to(@centre + left_offset, top + rand(3))
  end

  def draw_trunk
    move_to(@centre, 0)
    line_to(@centre, @height)
    line_to(@centre - 1, 0)
    line_to(@centre + 1, @height)
  end

  def reset_values
    @offset_x = rand(680)
    @offset_y = rand(300) + 108
    @height = (@offset_y / 408.0) * 100
    @width = @height/2
  end

  def calculate_points
    reset_values()
    top = 0
    left_offset = @centre / 10
    start_path
    while top < @height - 10
      draw_branch(left_offset, top)
      top += rand(3)
      left_offset *= -1.024
    end
    draw_trunk
    end_path
  end

  def draw_tree
    path_string(calculate_points)
  end
  
  def draw_trees(quantity)
    trees = (0..quantity).map { |time| calculate_points }
    path_string(trees.join(""))
  end
end