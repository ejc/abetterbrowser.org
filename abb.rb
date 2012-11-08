# abb.rb
# abetterbrowser.org
require 'rubygems'
require 'sinatra'
require 'sinatra/r18n'
require 'haml'

helpers do
  def partial(page, options={})
    haml page.to_sym, options.merge!(:layout => false)
  end
end

before do
  session[:locale] = params[:locale] if params[:locale]
end
 
get '/' do
    @locale = "en"
    haml :index

end

get '/:locale' do
    @locale = params[:locale]
    haml :index
   
end

get '/:locale/credits' do
    haml :credits
end

