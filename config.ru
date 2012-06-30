require 'rubygems'
require 'sinatra'

require 'abb'

set :root, path
set :views, path + '/views'
set :public, path + '/public'
 
run Sinatra::Application