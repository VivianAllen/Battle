require 'sinatra/base'
require_relative './lib/player.rb'

class Battle < Sinatra::Base

  enable :sessions
  set :session_secret, "My session secret"

  get "/" do
    erb :index
  end

  post '/names' do
    $player1 = Player.new(params[:player_1_name])
    $player2 = Player.new(params[:player_2_name])
    redirect '/play'
  end

  get '/play' do
    @player_1_name = $player1.name
    @player_2_name = $player2.name
    @player_2_hp = 100
    erb :play
  end

  get '/attack' do
    @player_1_name = $player1.name
    @player_2_name = $player2.name
    @player_2_hp = 80
    erb :attack
  end

  run! if app_file == $0

end
