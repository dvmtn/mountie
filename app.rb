require 'sinatra'
require 'rasem'

require_relative 'lib/mountain_maker'

def random_top
  rand(300)
end

def build_mountain
  img = Rasem::SVGImage.new(680, 400) do
    points = MountainMaker.new.points(680,400)
    points.each_cons(2) do |a,z|
      line a.first, a.last, z.first, z.last, :stroke=>"green"
    end
  end
  img.output
end

get '/' do
  @svg = build_mountain
  erb :index
end

get '/walkway.js' do
  send_file 'walkway.js'
end

get '/mountain.svg' do
  content_type :svg
  build_mountain
end
