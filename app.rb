require 'sinatra'
require 'rasem'

require_relative 'lib/mountain_range'

def random_top
  rand(306)
end

get '/' do
  @svg = MountainRange.new(680,408).to_svg
  erb :index
end

get '/walkway.js' do
  send_file 'walkway.js'
end

get '/mountain.svg' do
  content_type :svg
  build_mountain
end
