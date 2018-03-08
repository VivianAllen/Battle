require_relative './player.rb'

class Game

  attr_reader :player_1, :player_2

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @players = [player_1, player_2]
    @suffixes = [' the Bin', ' the Skip']
    label_players
  end

  def attack
    whos_attacked.receive_damage
  end

  def switch_player
    @players.reverse!
  end

  def whos_turn
    @players[0]
  end

  def whos_attacked
    @players[-1]
  end

  private

  def label_players
    @players.each_with_index { |player, i| player.change_suffix(@suffixes[i]) }
  end

end
