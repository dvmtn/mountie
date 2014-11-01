require_relative 'mountain'

class MountainRange

  def initialize width, height
    @width, @height = width, height
  end

  def generate_mountains
    (0..5).map { Mountain.new(200, @height) }
  end

  def to_svg
    mountains = generate_mountains
    Rasem::SVGImage.new(@width, @height) {
      mountains.each_with_index do |mountain, index|
        line_points = mountain.points
        offset = (index * 50) + rand(index * 100)
        line_points.each_cons(2) do |a,z|
          line a.first + offset, a.last, z.first + offset, z.last, :stroke=>"green"
        end
        
      end
    }.output
  end
end
