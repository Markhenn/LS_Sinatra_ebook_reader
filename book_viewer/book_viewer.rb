require "sinatra"
require "sinatra/reloader"
require "tilt/erubis"

get "/" do
  @title = 'An eBook reader'
  @contents = File.readlines('data/toc.txt')

  erb :home
end
