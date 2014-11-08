require 'sinatra'
require 'rasem'

require_relative 'lib/mountain_path'
require_relative 'lib/tree'
require_relative 'lib/hut'

get '/' do
  @mountains = MountainPath.new(680,408).to_path
  @trees = Tree.new().draw_trees(200)
  @hut = Hut.new().to_path
  erb :index
end
