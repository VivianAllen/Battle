require 'player'

describe Player do

  subject(:player_1) { described_class.new('Dave', 100, nil, dbl_damage_calc) }
  subject(:player_2) { described_class.new('Steve')}
  let(:dbl_damage_calc) { double :damage_calc, damage: 10 }

  describe '#name' do
    it 'returns the players name' do
      expect(player_1.name).to eq 'Dave'
    end
  end

  describe '#change_suffix' do
    it 'changes the players suffix' do
      expect{ player_1.change_suffix('the Bin') }.to change{ player_1.suffix }\
      .from(nil).to('the Bin')
    end
  end

  describe '#full_name' do
    it 'returns the players full name' do
      expect{ player_1.change_suffix('the Bin') }.to change{ player_1.full_name }\
      .from('Dave ').to('Dave the Bin')
    end
  end

  describe '#hp' do
    it 'returns the players hp' do
      expect(player_1.hp).to eq 100
    end
  end

  context 'when attacked' do
    it 'ask damage calculator for a damage amount' do
      expect(dbl_damage_calc).to receive(:damage)
      player_1.receive_damage
    end
  end

end
