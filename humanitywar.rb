APP_ROOT = File.expand_path(File.dirname(__FILE__))

require 'rubygems'
require 'sinatra'
require 'haml'
require 'sinatra/reloader' if development?

set :root, APP_ROOT

get '/' do
  haml :index
end

get '/entry/:id' do
end

post '/entry' do
end

get '/*.css' do |style|
  sass style.to_sym
end

get '/*.js' do |script|
  coffee script.to_sym
end