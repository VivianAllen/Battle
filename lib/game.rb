require_relative './player.rb'

class Game

  attr_reader :player_1, :player_2

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @players = [player_1, player_2]
  end

  def attack
    @players[-1].receive_damage
  end

  def switch_player
    @players.reverse!
  end

  def whos_turn
    @players[0].name
  end

end
