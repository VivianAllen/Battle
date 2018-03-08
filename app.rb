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
    @game = $game
    erb :play
  end

  get '/attack' do
    @game = $game
    erb :attack
  end

  get '/apply_attack_and_check_route' do
    @game = $game
    @game.attack
    @game.switch_player
    results_route = @game.won? ? '/win' : '/attack'
    redirect results_route
  end

  get '/win' do
    @game = $game
    erb :win
  end

  run! if app_file == $0

end
