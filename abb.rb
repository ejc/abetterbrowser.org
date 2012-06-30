# abb.rb
# abetterbrowser.org
require 'rubygems'
require 'sinatra'
require 'sinatra/r18n'
require 'haml'

before do
  session[:locale] = params[:locale] if params[:locale]
end
 
get '/' do
    haml :index
end

get '/:locale' do
    haml :index
end