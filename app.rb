require 'sinatra'
require 'rasem'

require_relative 'lib/mountain_range'
require_relative 'lib/tree'

get '/' do
  @mountains = MountainRange.new(680,408).to_svg
  @trees = Tree.new().draw_trees(200)
  erb :index
end
