require 'game'

describe Game do

  subject(:game) {described_class.new(dbl_player1, dbl_player2)}
  let(:dbl_player1) { double :player1, name: 'Bill', change_suffix: nil }
  let(:dbl_player2) { double :player2, name: 'Steve', change_suffix: nil }


  context 'starting a game' do
    it 'names the bin player' do
      expect(dbl_player1).to receive(:change_suffix).with('the Bin')
      described_class.new(dbl_player1, dbl_player2)
    end
    it 'names the skip player' do
      expect(dbl_player2).to receive(:change_suffix).with('the Skip')
      described_class.new(dbl_player1, dbl_player2)
    end
  end

  context 'attacking players' do
    it 'attacks player' do
      expect(dbl_player2).to receive(:receive_damage)
      game.attack
    end
  end

  context 'switching players' do
      it 'switches from player 1 to player 2' do
      expect{game.switch_player}.to change{game.whos_turn.name}.\
        from('Bill').to('Steve')
      end
  end

end
