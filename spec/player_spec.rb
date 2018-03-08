require 'player'

describe Player do

  subject(:player_1) { described_class.new('Dave')}
  subject(:player_2) { described_class.new('Steve')}

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
    it 'reduces hp by a random amount' do
      rand_amnt = rand(1..100)
      allow(player_1).to receive(:rand).and_return(rand_amnt)
      expect{ player_1.receive_damage }.to change{ player_1.hp }.\
      from(Player::DEFAULT_HP).to(Player::DEFAULT_HP - rand_amnt)
    end
  end

end
