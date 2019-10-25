require_relative 'config/environment'

class App < Sinatra::Base
  
  configure do 
    enable :sessions 
    set 
  end 
  
  get '/' do 
    @session = session 
    erb :index 
  end 
  
  post '/checkout' do 
    @items = params[:item]
    erb :show 
  end 
  
end