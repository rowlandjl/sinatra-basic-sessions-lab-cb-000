require_relative 'config/environment'

class App < Sinatra::Base
  
  configure do 
    enable :sessions 
  end 
  
  get '/' do 
    @session = session 
    erb :index 
  end 
  
  post '/checkout' do 
  end 
  
end