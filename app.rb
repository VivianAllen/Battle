require 'sinatra/base'
require_relative './lib/player.rb'
require_relative './lib/Game.rb'

class Battle < Sinatra::Base

  enable :sessions
  set :session_secret, "My session secret"

  get "/" do
    erb :index
  end

  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    $game = Game.new(player_1, player_2)
    redirect '/play'
  end

  get '/play' do
    @player_1_name = $game.player_1.name
    @player_2_name = $game.player_2.name
    @player_1_hp = $game.player_1.hp
    @player_2_hp = $game.player_2.hp
    erb :play
  end

  get '/attack' do
    $game.attack_player_2
    @player_1_name = $game.player_1.name
    @player_2_name = $game.player_2.name
    @player_1_hp = $game.player_1.hp
    @player_2_hp = $game.player_2.hp
    erb :attack
  end

  run! if app_file == $0

end
