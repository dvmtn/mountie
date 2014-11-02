module Pathable
  def set_offsets(x,y)
    @offset_x = x
    @offset_y = y
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

  def path_string(directions, colour="#000000")
    "<g>
    <path d=\"#{directions}\" fill=\"none\" stroke=\"#{colour}\" stroke-width=\"1\"/></g>"
  end
end