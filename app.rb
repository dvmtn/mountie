require 'sinatra'
require 'rasem'

def build_mountain
  img = Rasem::SVGImage.new(400,400) do
    
    line 20, 20, 20, 380
    line 20, 380, 380, 380
    line 380, 380, 380, 20
    line 380, 20, 20, 20
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
