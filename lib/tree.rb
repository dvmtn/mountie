class Tree
  def initialize()
    @coords = []
    @width = 50
    @height = 100
    @offset_x = 0
    @offset_y = 4
    @centre = @width * 0.5
    @colour = "#000000"
  end

  def line_to(x,y)
    push_x_y("L", x, y)
  end

  def move_to(x,y)
    push_x_y("M", x, y)
  end

  def push_x_y(letter, x, y)
    @coords << "#{letter} #{@offset_x + x} #{@offset_y + y}"
  end

  def start_path
    @coords = []
  end

  def end_path
    @coords << "z"
    @coords.join(" ")
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

  def calculate_points
    top = 0
    left_offset = @centre / 10
    start_path
    while top < @height - 10
      draw_branch(left_offset, top)
      top += rand(3)
      left_offset *= -1.023
    end
    draw_trunk
    end_path
  end

  def to_svg
    "<g>
    <path d=\"#{calculate_points}\" fill=\"none\" stroke=\"#{@colour}\" stroke-width=\"2\"/></g>"
  end
end