require 'sinatra'
require 'rasem'

require_relative 'lib/mountain_range'

def random_top
  rand(300)
end

get '/' do
  @svg = MountainRange.new(800,400).to_svg
  erb :index
end

get '/walkway.js' do
  send_file 'walkway.js'
end

get '/mountain.svg' do
  content_type :svg
  build_mountain
end
