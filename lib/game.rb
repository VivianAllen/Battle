require_relative './player.rb'

class Game

  attr_reader :player_1, :player_2

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
  end

  def attack_player_1
    attack(@player_1)
  end

  def attack_player_2
    attack(@player_2)
  end

  private

  def attack(player)
    player.receive_damage
  end

end
