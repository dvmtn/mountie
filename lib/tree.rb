class Tree
  def initialize(height)
  end

  def to_svg
    points = "5,55l50,-50l50,50l-50,50l-50,-50"
    "<svg><g>
    <path d=\"m#{points}z\" fill=\"none\" stroke=\"#000000\" stroke-width=\"2\"/></g></svg>"
  end
end