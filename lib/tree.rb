class Tree
  def initialize(height)
  end

  def to_svg
    points = "5,5l5,-5l5,5l-5,5l-5,-5"
    "<g>
    <path d=\"m#{points}z\" fill=\"none\" stroke=\"#000000\" stroke-width=\"2\"/></g>"
  end
end