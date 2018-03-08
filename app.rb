require 'sinatra/base'
require_relative './lib/player.rb'

class Battle < Sinatra::Base

  enable :sessions
  set :session_secret, "My session secret"

  get "/" do
    erb :index
  end

  post '/names' do
    $player_1 = Player.new(params[:player_1_name])
    $player_2 = Player.new(params[:player_2_name])
    redirect '/play'
  end

  get '/play' do
    @player_1_name = $player_1.name
    @player_2_name = $player_2.name
    @player_1_hp = $player_1.hp
    @player_2_hp = $player_2.hp
    erb :play
  end

  get '/attack' do
    $player2.hp
    @player_1_name = $player_1.name
    @player_2_name = $player_2.name
    @player_1_hp = $player_1.hp
    @player_2_hp = $player_2.hp
    erb :attack
  end

  run! if app_file == $0

end
