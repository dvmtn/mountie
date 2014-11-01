require 'savage'

module Svgable
  X, Y = 0, 1

  def svg_path
    points = self.points
    Savage::Path.new do |p|
      p.move_to points.first[X], points.first[Y]
      points.each do |point|
        p.line_to point[X], point[Y]
      end
      p.close_path
    end.to_command
  end

end
