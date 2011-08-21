# abb.rb
# abetterbrowser.org
require 'rubygems'
require 'sinatra'
require 'haml'

 
get '/' do
    haml :index
end