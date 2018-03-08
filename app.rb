require 'sinatra/base'

class Battle < Sinatra::Base

  enable :sessions
  set :session_secret, "My session secret"

  get "/" do
    erb :index
  end

  post '/names' do
    session[:player_1_name] = params[:player_1_name]
    session[:player_2_name] = params[:player_2_name]
    redirect '/play'
  end

  get '/play' do
    @player_1_name = session[:player_1_name]
    @player_2_name = session[:player_2_name]
    @player_2_hp = 100
    erb :play
  end

  get '/attack' do
    @player_1_name = session[:player_1_name]
    @player_2_name = session[:player_2_name]
    @player_2_hp = 80
    erb :attack
  end

  run! if app_file == $0

end
