require 'player'

describe Player do

  subject(:player_1) { described_class.new('Dave')}
  subject(:player_2) { described_class.new('Steve')}

  describe 'name' do
    it 'returns the players name' do
      expect(player_1.name).to eq 'Dave'
    end
  end

  describe 'hp' do
    it 'returns the players hp' do
      expect(player_1.hp).to eq 100
    end
  end

  context 'when attacked' do
    it 'reduces hp by 10' do
      expect{ player_1.receive_damage }.to change{ player_1.hp }.from(100).to(90)
    end
  end

end
