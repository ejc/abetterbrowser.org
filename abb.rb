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

  def menu()
    { 
      :en => "us" , 
      :es => "es"  , 
      :de => "de" , 
      :fr => "fr" , 
      :ru => "ru" , 
      :it => "it" , 
      "zh-hk".to_sym => "cn" , 
      "pt-br".to_sym => "br"
    }
  end

  def sub_menu()
    { 
      "zh-cn".to_sym => "cn",
      :ja => "jp" ,
      :he => "il" ,
      :cs => "cz" ,
      :sk => "sk" ,
      :sr => "rs" ,
      :pl => "pl" ,
      :tr => "tr" ,
      :nl => "nl" ,
      :se => "se" 
    }
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