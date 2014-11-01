require 'sinatra'
require 'rasem'

require_relative 'lib/mountain_range'

def random_top
  rand(300)
end

def mountain_range_svg
  Rasem::SVGImage.new(800, 400) do
    points = MountainRange.new.points(800,400)
    points.each_cons(2) do |a,z|
      line a.first, a.last, z.first, z.last, :stroke=>"green"
    end
  end.output
end

get '/' do
  @svg = mountain_range_svg
  erb :index
end

get '/walkway.js' do
  send_file 'walkway.js'
end

get '/mountain.svg' do
  content_type :svg
  build_mountain
end
