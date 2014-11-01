class MountainRange
  THINNEST_PEAK = 17
  WIDEST_PEAK = 102
  SHORTEST_PEAK = 102

  def initialize width, height
    @width, @height = width, height
  end

  def points
    @points ||= generate_points
  end

  def to_svg
    line_points = points
    Rasem::SVGImage.new(@width, @height) {
      line_points.each_cons(2) do |a,z|
        line a.first, a.last, z.first, z.last, :stroke=>"green"
      end
    }.output
  end

  private 

  def generate_points
    x, y = 0
    output = [[0,rand(@height)]]
    while x < @width do
      x = x + THINNEST_PEAK + rand(WIDEST_PEAK)
      y = rand(@height)
      output << [x,y]
    end
    output
  end
end
