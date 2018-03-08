require 'player'

describe Player do

  subject(:player) { described_class.new('Dave')}

  describe 'name' do
    it 'returns the players name' do
      expect(player.name).to eq 'Dave'
    end
  end

  describe 'hp' do
    it 'returns the players hp' do
      expect(player.hp).to eq 100
    end
  end

  context 'when attacked' do
    it 'reduces hp by 10' do
      expect{ player.attacked }.to change{ player.hp }.from(100).to(90)
    end
  end

end
