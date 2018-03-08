require 'player'

describe Player do

  describe 'name' do
    it 'returns the players name' do
      player = described_class.new('Dave')
      expect(player.name).to eq 'Dave'
    end
  end

end
