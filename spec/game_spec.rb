require 'game'

describe Game do

  subject(:game) {described_class.new(dbl_player, dbl_player)}
  let(:dbl_player) { double :player }

  context 'attacking players' do
    it 'attacks player 1' do
      expect(dbl_player).to receive(:receive_damage)
      game.attack_player_1
    end
    it 'attacks player 2' do
      expect(dbl_player).to receive(:receive_damage)
      game.attack_player_2
    end

  end

end
