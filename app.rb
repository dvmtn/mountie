require 'sinatra'
require 'rasem'

require_relative 'lib/mountain_range'
require_relative 'lib/tree'

def random_top
  rand(306)
end

get '/' do
  @svg = MountainRange.new(680,408).to_svg
  @tree = Tree.new().to_svg
  erb :index
end
