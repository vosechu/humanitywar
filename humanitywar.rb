APP_ROOT = File.expand_path(File.dirname(__FILE__))

require 'rubygems'
require 'sinatra'
require 'sinatra/reloader' if development?

require 'haml'
require 'sass'
require 'coffee_script'

require 'dm-core'
require 'dm-migrations'
require 'dm-timestamps'
require 'dm-mysql-adapter'

DataMapper.setup(:default, 'mysql://db_connect:db_connect@localhost/humanitywar')

$LOAD_PATH << './lib'
require 'entry.rb'
require 'white_card.rb'
require 'black_card.rb'
require 'playa.rb'

DataMapper.finalize
DataMapper.auto_upgrade!

configure do
  set :root, APP_ROOT
end

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