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
    @game.attack
    erb :attack
  end

  get '/check_route' do
    @game = $game
    results_route = @game.won? ? '/results_win' : '/results_continue'
    redirect results_route
  end

  get '/results_continue' do
    @game = $game
    @game.switch_player
    erb :results_continue
  end

  get '/results_win' do
    @game = $game
    erb :results_win
  end

  run! if app_file == $0

end
