require 'sinatra'
require 'rasem'

def random_top
  rand(300)
end

def build_mountain
  old_left = 0
  old_top = 380
  left = 20
  top = random_top
  img = Rasem::SVGImage.new(400,400) do
    line old_left, old_top, left, top
    old_left = left
    old_top = top
    top = random_top
    left += rand(30)
    line old_left, old_top, left, top
    old_left = left
    old_top = top
    top = random_top
    left += rand(30)
    line old_left, old_top, left, top
    old_left = left
    old_top = top
    top = random_top
    left += rand(30)
    line old_left, old_top, left, top
    old_left = left
    old_top = top
    top = random_top
    left += rand(30)
    line old_left, old_top, left, top
    old_left = left
    old_top = top
    top = random_top
    left += rand(30)
    line old_left, old_top, left, top
    old_left = left
    old_top = top
    top = random_top
    left += rand(30)
    line old_left, old_top, left, top
    old_left = left
    old_top = top
    top = 380
    left = 380
    line old_left, old_top, left, top
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
